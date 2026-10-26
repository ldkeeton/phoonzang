//! Routine names: sidecar, signatures, driver thunks, Aztec ``app`` wrappers,
//! and content-tagged generic names (``loc_HQRK``) that key the sidecar's
//! ``routines`` table.

const std = @import("std");
const zg = @import("deziggler");
const sidecar = @import("sidecar.zig");
const an = @import("analyze.zig");

const Bin = an.Bin;
const Allocator = std.mem.Allocator;

const wrapper_names = [_][2][]const u8{
    .{ "aztec_lmalloc", "app_malloc" },
    .{ "aztec_movblock", "app_memmove" },
    .{ "aztec_lfree", "app_free" },
};

const affinity = [_]struct { tag: []const u8, keys: []const []const u8 }{
    .{ .tag = "file", .keys = &.{ "open", "close", "read", "write", "lseek", "unlink", "rename", "creat" } },
    .{ .tag = "alloc", .keys = &.{ "malloc", "free", "alloc", "lmalloc", "lfree" } },
    .{ .tag = "io", .keys = &.{ "con_", "getch", "putch", "bios_", "kbd", "scr_", "intvec" } },
    .{ .tag = "mem", .keys = &.{ "movmem", "setmem", "movblock", "memcpy", "memset" } },
    .{ .tag = "string", .keys = &.{"str"} },
};

/// Name every root of *b*.  *bins* resolves ``driver_slots.driver``;
/// *routines* is the sidecar's tag-keyed ``routines`` table.
pub fn nameRoutines(b: *Bin, bins: *const std.StringHashMap(*Bin), routines: ?std.json.ObjectMap) !void {
    const gpa = b.gpa;
    // Sidecar function names outrank everything.
    if (sidecar.obj(b.sc, "function_names")) |fns| {
        const adj = @as(i64, b.start_offset) + (sidecar.int(b.sc, "ghidra_base_offset") orelse 0);
        var it = fns.iterator();
        while (it.next()) |kv| {
            const k = std.fmt.parseInt(i64, kv.key_ptr.*, 16) catch continue;
            const f = k + adj;
            if (!b.inCode(f)) continue;
            const name = sidecar.entryName(kv.value_ptr.*) orelse
                try std.fmt.allocPrint(gpa, "fn_{s}", .{kv.key_ptr.*});
            try b.names.put(@intCast(f), name);
        }
    }
    // A driver's own dispatch table names its handlers.
    if (sidecar.obj(b.sc, "dispatch_table")) |dt| {
        if (sidecar.obj(dt, "names")) |nm| {
            const base: u32 = @intCast(sidecar.int(dt, "base_offset") orelse 0);
            const size: u32 = @intCast(sidecar.int(dt, "entry_size") orelse 4);
            var it = nm.iterator();
            while (it.next()) |kv| {
                const n = std.fmt.parseInt(u32, kv.key_ptr.*, 10) catch continue;
                const at = base + n * size;
                if (at + 4 > b.data.len or b.data[at] != 0xE8) continue;
                const h = b.fileOf(b.cs(at) +% 3 +% std.mem.readInt(u16, b.data[at + 1 ..][0..2], .little));
                if (b.inCode(h)) try b.names.put(@intCast(h), sidecar.entryName(kv.value_ptr.*) orelse continue);
            }
        }
    }
    try nameDriverThunks(b, bins);
    if (b.entry) |e| if (!b.names.contains(e)) {
        try b.names.put(e, sidecar.str(b.sc, "entry_symbol") orelse "entry_point");
    };
    if (b.kind == .overlay and !b.names.contains(14)) try b.names.put(14, "ovmain");

    // Generic bases, then content tags.
    const roots = try b.sortedKeys(&b.roots);
    var bases = std.AutoHashMap(u32, []const u8).init(gpa);
    try nameAppFunctions(b, &bases);
    for (roots) |r| {
        if (b.names.contains(r) or bases.contains(r)) continue;
        const base = if (b.stubs.get(r)) |idx| try std.fmt.allocPrint(gpa, "api_idx_{x:0>4}", .{idx}) else "loc";
        try bases.put(r, base);
    }
    const prefix: []const u8 = if (b.kind == .mz and std.mem.eql(u8, b.name, "ds")) "ds_" else "";
    const Todo = struct { off: u32, base: []const u8, tag: [4]u8 };
    var todo: std.ArrayList(Todo) = .empty;
    var seen = std.StringHashMap(u32).init(gpa);
    for (roots, 0..) |r, i| {
        const base = bases.get(r) orelse continue;
        const end = if (i + 1 < roots.len) roots[i + 1] else b.code_hi;
        const tag = try contentTag(b, r, end);
        try todo.append(gpa, .{ .off = r, .base = base, .tag = tag });
        const key = try std.fmt.allocPrint(gpa, "{s}_{s}", .{ base, &tag });
        const g = try seen.getOrPut(key);
        g.value_ptr.* = if (g.found_existing) g.value_ptr.* + 1 else 1;
    }
    for (todo.items) |t| {
        const key = try std.fmt.allocPrint(gpa, "{s}_{s}", .{ t.base, &t.tag });
        if (routines) |rt| {
            if (rt.get(key)) |v| if (sidecar.entryName(v)) |n| {
                try b.names.put(t.off, n);
                continue;
            };
            // Same code under another category name: the tag alone decides.
            var it = rt.iterator();
            const named = while (it.next()) |kv| {
                if (std.mem.endsWith(u8, kv.key_ptr.*, &t.tag) and kv.key_ptr.len > 5 and kv.key_ptr.*[kv.key_ptr.len - 5] == '_')
                    break sidecar.entryName(kv.value_ptr.*);
            } else null;
            if (named) |n| {
                try b.names.put(t.off, n);
                continue;
            }
        }
        const name = if (seen.get(key).? > 1)
            try std.fmt.allocPrint(gpa, "{s}{s}_{x:0>4}", .{ prefix, key, t.off })
        else
            try std.fmt.allocPrint(gpa, "{s}{s}", .{ prefix, key });
        try b.names.put(t.off, name);
    }
}

/// ``push bp; mov bp, sp; cld; call far [cs:slot]; mov sp, bp; pop bp; ret``
/// through a declared ``driver_slots`` table: named after the driver entry.
fn nameDriverThunks(b: *Bin, bins: *const std.StringHashMap(*Bin)) !void {
    const shape = [_]u8{ 0x55, 0x8b, 0xec, 0xfc, 0x2e, 0xff, 0x1e };
    for (sidecar.arr(b.sc, "driver_slots")) |sv| {
        const s = switch (sv) {
            .object => |o| o,
            else => continue,
        };
        const table = sidecar.hex(s.get("offset") orelse continue) orelse continue;
        const count: u32 = @intCast(sidecar.int(s, "count") orelse continue);
        const prefix = sidecar.str(s, "prefix") orelse "drv";
        const drv = bins.get(sidecar.str(s, "driver") orelse continue) orelse continue;
        const dt = sidecar.obj(drv.sc, "dispatch_table") orelse continue;
        const base: i64 = sidecar.int(dt, "base_offset") orelse 0;
        const size: i64 = sidecar.int(dt, "entry_size") orelse 4;
        const dcount: i64 = sidecar.int(dt, "count") orelse 0;
        const dnames = sidecar.obj(dt, "names");
        var it = b.roots.keyIterator();
        while (it.next()) |k| {
            const r = k.*;
            if (r + 13 > b.data.len) continue;
            if (!std.mem.eql(u8, b.data[r .. r + 7], &shape)) continue;
            if (!std.mem.eql(u8, b.data[r + 9 .. r + 13], &.{ 0x8b, 0xe5, 0x5d, 0xc3 })) continue;
            const slot = b.fileOf(std.mem.readInt(u16, b.data[r + 7 ..][0..2], .little));
            if (slot < table or slot >= table + 4 * count or @mod(slot - table, 4) != 0) continue;
            const value: i64 = std.mem.readInt(u16, b.data[@intCast(slot)..][0..2], .little);
            const d = value - 0x100 - base;
            if (@mod(d, size) != 0) continue;
            const n = @divTrunc(d, size);
            if (n < 0 or n >= dcount) continue;
            var buf: [8]u8 = undefined;
            const key = try std.fmt.bufPrint(&buf, "{d}", .{n});
            const api = if (dnames) |dn| (if (dn.get(key)) |v| sidecar.entryName(v) else null) else null;
            const name = if (api) |a|
                try std.fmt.allocPrint(b.gpa, "{s}_{s}", .{ prefix, a })
            else
                try std.fmt.allocPrint(b.gpa, "{s}_entry_{d:0>2}", .{ prefix, n });
            try b.names.put(r, name);
        }
    }
}

fn isCall(in: *const zg.Insn) bool {
    return in.flow == .call;
}

/// A stack-checked application function that only forwards to one runtime
/// routine is named after it; otherwise it gets a callee-affinity base.
fn nameAppFunctions(b: *Bin, bases: *std.AutoHashMap(u32, []const u8)) !void {
    const entries = try b.sortedKeys(&b.csav);
    for (entries, 0..) |e, i| {
        if (b.names.contains(e)) continue;
        const end = if (i + 1 < entries.len) entries[i + 1] else @as(u32, @intCast(b.data.len));
        var callees: std.ArrayList([]const u8) = .empty;
        var count: u32 = 0;
        var off = e;
        while (off < @min(end, b.code_hi)) : (off += 1) {
            const in = b.insn[off] orelse continue;
            count += 1;
            if (!isCall(&in)) continue;
            const t = b.relTarget(&in);
            if (!b.inCode(t) or b.csav.contains(@intCast(t))) continue;
            const n = b.names.get(@intCast(t)) orelse continue;
            if (std.mem.eql(u8, n, "aztec_csav")) continue;
            for (callees.items) |c| {
                if (std.mem.eql(u8, c, n)) break;
            } else try callees.append(b.gpa, n);
        }
        if (callees.items.len == 1 and count <= 12) {
            const callee = callees.items[0];
            const fixed = for (wrapper_names) |w| {
                if (std.mem.eql(u8, w[0], callee)) break w[1];
            } else null;
            if (fixed) |name| {
                try b.names.put(e, name);
                continue;
            }
            const short = for ([_][]const u8{ "aztec_", "dos_", "bios_" }) |p| {
                if (std.mem.startsWith(u8, callee, p)) break callee[p.len..];
            } else callee;
            try bases.put(e, try std.fmt.allocPrint(b.gpa, "app_{s}", .{short}));
            continue;
        }
        const tag = outer: for (affinity) |a| {
            for (callees.items) |c| {
                for (a.keys) |k| if (std.ascii.findIgnoreCase(c, k) != null) break :outer a.tag;
            }
        } else null;
        try bases.put(e, if (tag) |t| try std.fmt.allocPrint(b.gpa, "app_{s}", .{t}) else "app");
    }
}

const padding = [_]u8{ 0x00, 0x90, 0xcc };

/// Four letters (``G``-``V``) hashing the routine's bytes in ``[start, end)``
/// with every layout-dependent field masked (see ``lib/names.py``).
pub fn contentTag(b: *Bin, start: u32, end: u32) ![4]u8 {
    const gpa = b.gpa;
    var cursor = start;
    var off = start;
    while (off < end) : (off += 1) {
        if (b.insn[off]) |in| cursor = off + in.len;
    }
    var tail = @min(end, @as(u32, @intCast(b.data.len)));
    while (tail > cursor and std.mem.findScalar(u8, &padding, b.data[tail - 1]) != null) tail -= 1;
    const keep = tail - start;
    const buf = try gpa.dupe(u8, b.data[start..@min(end, @as(u32, @intCast(b.data.len)))]);
    var ids: std.ArrayList(u8) = .empty;

    const Put = struct {
        fn put(bf: []u8, s: u32, at: u32, size: u32, value: i64) void {
            if (at < s) return;
            const rel = at - s;
            if (rel + size > bf.len) return;
            const v: u32 = @truncate(@as(u64, @bitCast(value)));
            bf[rel] = @truncate(v);
            if (size == 2) bf[rel + 1] = @truncate(v >> 8);
            if (size == 4) {
                bf[rel + 1] = @truncate(v >> 8);
                bf[rel + 2] = 0;
                bf[rel + 3] = 0;
            }
        }
    };
    const put = Put.put;
    const isLabel = struct {
        fn f(bn: *Bin, file: i64) bool {
            if (file < 0 or file > std.math.maxInt(u32)) return false;
            const k: u32 = @intCast(file);
            return bn.roots.contains(k) or bn.jumps.contains(k) or bn.calls.contains(k);
        }
    }.f;

    off = start;
    while (off < end) : (off += 1) {
        const in = b.insn[off] orelse continue;
        if (in.op_at == 0 and (in.opcode == 0x9A or in.opcode == 0xEA)) {
            put(buf, start, off + 1, 4, 0);
            try ids.appendSlice(gpa, "\nFAR");
            continue;
        }
        if (in.nops > 0 and in.ops[0].kind == .rel) {
            const t = b.relTarget(&in);
            if (!(t >= start and t < end)) put(buf, start, off + in.imm_off, in.imm_size, 0);
            continue;
        }
        for (in.ops[0..in.nops]) |op| {
            if (op.kind == .mem and op.reg == zg.direct) {
                const at = off + in.disp_off;
                if (in.segment()) |sg| {
                    if (sg == 0) continue; // es: stays raw
                    if (sg == 1) {
                        const file = b.fileOf(op.value);
                        if (file >= start and file < end) {
                            put(buf, start, at, 2, file - start);
                            continue;
                        }
                    }
                }
                put(buf, start, at, 2, 0);
                try ids.appendSlice(gpa, "\nD");
            } else if (op.kind == .imm and op.enc_size == 2 and !op.sext and isLabel(b, b.fileOf(op.value))) {
                const at = off + in.imm_off;
                const file = b.fileOf(op.value);
                put(buf, start, at, 2, if (file >= start and file < end) file - start else 0);
            }
        }
    }
    var relocs: std.ArrayList(u32) = .empty;
    for (b.relocs) |r| if (r >= start and r < end) try relocs.append(gpa, r);
    std.mem.sort(u32, relocs.items, {}, std.sort.asc(u32));
    for (relocs.items) |r| {
        put(buf, start, r, 2, 0);
        try ids.appendSlice(gpa, "\nR");
    }
    var blob: std.ArrayList(u8) = .empty;
    try blob.appendSlice(gpa, buf[0..@min(keep, buf.len)]);
    try blob.append(gpa, '\n');
    // ids were collected as "\nX" pieces: drop the first separator.
    if (ids.items.len > 0) try blob.appendSlice(gpa, ids.items[1..]);
    var digest: [16]u8 = undefined;
    std.crypto.hash.Md5.hash(blob.items, &digest, .{});
    const letters = "GHIJKLMNOPQRSTUV";
    return .{ letters[digest[0] >> 4], letters[digest[0] & 15], letters[digest[1] >> 4], letters[digest[1] & 15] };
}
