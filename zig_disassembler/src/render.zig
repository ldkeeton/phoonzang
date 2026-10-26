//! NASM rendering: one file per routine (``<bin>/[<band>/]<name>.asm``) and a
//! top-level ``<bin>.asm`` holding the header, symbol equates, the routine
//! includes and the data segment.

const std = @import("std");
const zg = @import("deziggler");
const sidecar = @import("sidecar.zig");
const an = @import("analyze.zig");

const Bin = an.Bin;
const Allocator = std.mem.Allocator;
const Buf = std.ArrayList(u8);

pub const File = struct {
    path: []const u8,
    text: []const u8,
    /// Owning binary and routine name (empty for a master).
    bin: []const u8 = "",
    stem: []const u8 = "",
    data: bool = false,
};

/// Fragment texts and names ready for sharing; master emission is deferred.
pub const Prepared = struct {
    layout: *Layout,
    fragments: []const File,
    names: std.StringHashMap(void),
};

/// Resolved include target with equates in emission order (name, value).
pub const Target = struct {
    path: []const u8,
    aliases: []const [2][]const u8,
};

pub const Resolution = struct {
    targets: std.StringHashMap(Target),
    files: []const File,
};

const PtrSpace = enum { ds, cs };

const Frag = struct { start: u32, end: u32, name: []const u8, dir: []const u8 };

pub const Layout = struct {
    b: *Bin,
    frags: []Frag,
    /// file offset -> (fragment index, local number; 0 = the fragment's own label)
    labels: std.AutoHashMap(u32, [2]u32),
    local_names: std.AutoHashMap(u32, []const u8),
    /// DS equates this binary references: name -> DS offset.
    equs: std.array_hash_map.String(u32) = .empty,
    /// Host code labels an overlay references: name -> CS offset.
    host_equs: std.array_hash_map.String(u16) = .empty,
    /// Sidecar ``external_data`` names this binary references (absolute offsets).
    ext_equs: std.array_hash_map.String(u16) = .empty,
    /// DS offsets known to start an object: data names and direct operands.
    ds_starts: std.AutoHashMap(u16, void),
    /// Host-space DS starts every binary names (the host's, plus each
    /// overlay's below its ``o_dorg``): one object in every binary.
    host_starts: ?*const std.AutoHashMap(u16, void) = null,
    /// Immediates that are code addresses: insn offset -> (target, + delta).
    cs_imm: std.AutoHashMap(u32, [2]u32),
    own_names: std.StringHashMap(void),
    imm_ptrs: std.AutoHashMap(u32, PtrSpace),

    /// The label at *f* as spelled from fragment *from* (null if none).
    fn ref(l: *const Layout, gpa: Allocator, f: u32, from: ?usize) !?[]const u8 {
        const v = l.labels.get(f) orelse return null;
        const fr = l.frags[v[0]];
        if (v[1] == 0) return fr.name;
        const local = l.local_names.get(f).?;
        if (from != null and from.? == v[0]) return local;
        return try std.fmt.allocPrint(gpa, "{s}{s}", .{ fr.name, local });
    }
};

fn placeable(b: *const Bin, f: i64) bool {
    if (f < 0 or f >= b.data.len) return false;
    return b.state[@intCast(f)] != .cont;
}

/// (target, delta) when insn *f*'s 16-bit immediate is a code address: a named
/// code-data object (or one past its start, ``sub di, table + 1``), or, in a
/// driver, the string ``mov dx, imm`` hands to ``mov ah, 9; int 21h``.
fn csImmediate(b: *Bin, cdn: *const std.AutoHashMap(u32, void), f: u32, in: *const zg.Insn) !?[2]u32 {
    const op = for (in.ops[0..in.nops]) |o| {
        if (o.kind == .imm and o.enc_size == 2 and !o.sext) break o;
    } else return null;
    const t = b.fileOf(op.value);
    if (b.inCode(t) and cdn.contains(@intCast(t))) return .{ @intCast(t), 0 };
    if (b.inCode(t - 1) and cdn.contains(@intCast(t - 1))) return .{ @intCast(t - 1), 1 };
    if (b.kind != .driver or in.mnem != .mov) return null;
    if (in.ops[0].kind != .reg16 or in.ops[0].reg != 2) return null;
    if (!b.inCode(t) or !placeable(b, t)) return null;
    var at = f + in.len;
    var ah9 = false;
    for (0..4) |_| {
        const nx = b.insn[at] orelse return null;
        const by = b.data[at..];
        if (by[0] == 0xB4 and by[1] == 0x09) ah9 = true;
        if (by[0] == 0xCD and by[1] == 0x21) return if (ah9) .{ @intCast(t), 0 } else null;
        at += nx.len;
    }
    return null;
}

fn bandDir(gpa: Allocator, b: *Bin, f: u32) ![]const u8 {
    for (sidecar.arr(b.sc, "bands")) |bv| {
        const o = switch (bv) {
            .object => |o| o,
            else => continue,
        };
        const lo = sidecar.hex(o.get("start") orelse continue) orelse continue;
        const hi = sidecar.hex(o.get("end") orelse continue) orelse continue;
        if (f >= lo and f <= hi) return try std.fmt.allocPrint(gpa, "{s}/{s}", .{ b.name, sidecar.str(o, "name") orelse "band" });
    }
    return b.name;
}

/// Fragments, labels and immediate-pointer facts for *b*.
pub fn layout(gpa: Allocator, b: *Bin) !*Layout {
    var starts = std.AutoHashMap(u32, []const u8).init(gpa);
    var rit = b.roots.keyIterator();
    while (rit.next()) |k| if (b.state[k.*] == .start) try starts.put(k.*, b.names.get(k.*) orelse "routine");
    if (sidecar.obj(b.sc, "code_data_names")) |cdn| {
        var it = cdn.iterator();
        while (it.next()) |kv| {
            const f = sidecar.hexStr(kv.key_ptr.*) orelse continue;
            if (!b.inCode(f) or b.state[f] == .cont or b.state[f] == .start) continue;
            try starts.put(f, sidecar.entryName(kv.value_ptr.*) orelse continue);
        }
    }
    if (!starts.contains(b.code_lo)) try starts.put(b.code_lo, try std.fmt.allocPrint(gpa, "{s}_code_start", .{b.name}));

    var keys: std.ArrayList(u32) = .empty;
    var sit = starts.keyIterator();
    while (sit.next()) |k| try keys.append(gpa, k.*);
    std.mem.sort(u32, keys.items, {}, std.sort.asc(u32));

    const l = try gpa.create(Layout);
    l.* = .{
        .b = b,
        .frags = try gpa.alloc(Frag, keys.items.len),
        .labels = std.AutoHashMap(u32, [2]u32).init(gpa),
        .local_names = std.AutoHashMap(u32, []const u8).init(gpa),
        .own_names = std.StringHashMap(void).init(gpa),
        .imm_ptrs = std.AutoHashMap(u32, PtrSpace).init(gpa),
        .ds_starts = std.AutoHashMap(u16, void).init(gpa),
        .cs_imm = std.AutoHashMap(u32, [2]u32).init(gpa),
    };
    if (b.kind != .driver) {
        if (sidecar.obj(b.sc, "data_names")) |dn| {
            var it = dn.iterator();
            while (it.next()) |kv| if (sidecar.hexStr(kv.key_ptr.*)) |o| if (o <= 0xffff) try l.ds_starts.put(@intCast(o), {});
        }
        var i: u32 = b.code_lo;
        while (i < b.code_hi) : (i += 1) {
            const in = b.insn[i] orelse continue;
            const m = in.memOp() orelse continue;
            if (m.reg == zg.direct and (in.segment() == null or in.segment() == 3)) try l.ds_starts.put(m.value, {});
        }
    }
    var used = std.StringHashMap(void).init(gpa);
    for (keys.items, 0..) |s, i| {
        var name = starts.get(s).?;
        if (used.contains(name)) name = try std.fmt.allocPrint(gpa, "{s}_{x:0>4}", .{ name, s });
        try used.put(name, {});
        l.frags[i] = .{
            .start = s,
            .end = if (i + 1 < keys.items.len) keys.items[i + 1] else b.code_hi,
            .name = name,
            .dir = try bandDir(gpa, b, s),
        };
        try l.labels.put(s, .{ @intCast(i), 0 });
    }
    l.own_names = used;

    for (sidecar.arr(b.sc, "immediate_pointers")) |pv| {
        const o = switch (pv) {
            .object => |o| o,
            else => continue,
        };
        const at = sidecar.hex(o.get("offset") orelse continue) orelse continue;
        const sp = sidecar.str(o, "space") orelse "ds";
        try l.imm_ptrs.put(at, if (std.mem.eql(u8, sp, "cs")) .cs else .ds);
    }

    // Named code-data objects: an immediate equal to one is its address.
    var cdn_starts = std.AutoHashMap(u32, void).init(gpa);
    for (l.frags) |fr| if (b.state[fr.start] != .start) try cdn_starts.put(fr.start, {});

    // Every address something refers to gets a label.
    var targets = std.AutoHashMap(u32, void).init(gpa);
    var backward_sources = std.AutoHashMap(u32, std.ArrayList(u32)).init(gpa);
    var f: u32 = b.code_lo;
    while (f < b.code_hi) : (f += 1) {
        const in = b.insn[f] orelse continue;
        if (in.nops > 0 and in.ops[0].kind == .rel) {
            const t = b.relTarget(&in);
            if (b.inCode(t) and placeable(b, t)) try targets.put(@intCast(t), {});
            if ((in.flow == .jmp or in.flow == .jcc) and b.inCode(t) and t < f) {
                const sources = try backward_sources.getOrPut(@intCast(t));
                if (!sources.found_existing) sources.value_ptr.* = .empty;
                try sources.value_ptr.append(gpa, f);
            }
        }
        if (in.memOp()) |m| {
            const cs_ref = in.segment() == 1 or (b.kind == .driver and in.segment() == null);
            if (cs_ref and m.reg == zg.direct) {
                const t = b.fileOf(m.value);
                if (b.inCode(t) and placeable(b, t)) try targets.put(@intCast(t), {});
            }
            if (in.segment() == 1 and m.reg != zg.direct and m.enc_size == 2) {
                const t = b.fileOf(m.value);
                if (b.inCode(t) and placeable(b, t)) try targets.put(@intCast(t), {});
            }
        }
        if (try csImmediate(b, &cdn_starts, f, &in)) |ci| {
            try l.cs_imm.put(f, ci);
            try targets.put(ci[0], {});
        }
        if ((l.imm_ptrs.get(f) orelse .ds) == .cs) {
            for (in.ops[0..in.nops]) |op| if (op.kind == .imm and op.enc_size == 2) {
                const t = b.fileOf(op.value);
                if (b.inCode(t) and placeable(b, t)) try targets.put(@intCast(t), {});
            };
        }
    }
    for (b.tables.items) |tb| {
        var at = tb.addr + 2 * tb.keys;
        while (at + 2 <= tb.end) : (at += 2) {
            const t = b.fileOf(std.mem.readInt(u16, b.data[at..][0..2], .little));
            if (b.inCode(t) and placeable(b, t)) try targets.put(@intCast(t), {});
        }
    }
    const sorted = try b.sortedKeys(&targets);
    const counters = try gpa.alloc([3]u32, l.frags.len);
    for (counters) |*counter| counter.* = .{ 0, 0, 0 };
    for (sorted) |t| {
        if (l.labels.contains(t)) continue;
        const idx = std.sort.upperBound(Frag, l.frags, t, struct {
            fn cmp(key: u32, fr: Frag) std.math.Order {
                return std.math.order(key, fr.start);
            }
        }.cmp);
        if (idx == 0) continue;
        const fr = l.frags[idx - 1];
        const is_back = if (backward_sources.get(t)) |sources| blk: {
            for (sources.items) |source| if (source >= fr.start and source < fr.end) break :blk true;
            break :blk false;
        } else false;
        const is_return = if (b.insn[t]) |in| in.flow == .ret else false;
        const role: usize = if (is_return) 0 else if (is_back) 1 else 2;
        counters[idx - 1][role] += 1;
        const number = counters[idx - 1][role];
        const prefix = ([_][]const u8{ "return", "back", "forward" })[role];
        try l.local_names.put(t, try std.fmt.allocPrint(gpa, ".{s}{d}", .{ prefix, number }));
        try l.labels.put(t, .{ @intCast(idx - 1), number });
    }
    return l;
}

// ── Operand names, as deziggler symbol tables ──────────────────────────

/// What one operand should spell: the name deziggler must find for *value* in
/// *space* (``name`` or ``name + off``).
const Want = struct {
    at: u32,
    cs: u16,
    space: zg.Space,
    value: u16,
    expect: zg.symbols.Ref,
};

/// The Symbol, Scope and Hint tables one binary's instruction lines need.
const Syms = struct {
    pool: Buf = .empty,
    syms: std.ArrayList(zg.Symbol) = .empty,
    scopes: std.ArrayList(zg.Scope) = .empty,
    hints: std.ArrayList(zg.Hint) = .empty,
    /// (space, start) -> index into ``syms``.
    index: std.AutoHashMapUnmanaged(u64, usize) = .empty,
    wants: std.ArrayList(Want) = .empty,
    conflicts: u32 = 0,

    fn str(s: *Syms, gpa: Allocator, name: []const u8) ![2]u32 {
        const at: u32 = @intCast(s.pool.items.len);
        try s.pool.appendSlice(gpa, name);
        return .{ at, @intCast(name.len) };
    }

    /// A symbol at *start*; a later one at the same start may widen it into
    /// a range ``[start, end)`` but never renames it.
    fn add(s: *Syms, gpa: Allocator, space: zg.Space, start: u32, end: u32, name: []const u8, start_only: bool) !void {
        const g = try s.index.getOrPut(gpa, (@as(u64, @backingInt(space)) << 32) | start);
        if (g.found_existing) {
            const e = &s.syms.items[g.value_ptr.*];
            if (!std.mem.eql(u8, s.pool.items[e.name..][0..e.name_len], name)) s.conflicts += 1;
            if (!start_only) {
                e.start_only = false;
                e.end = @max(e.end, end);
            }
            return;
        }
        g.value_ptr.* = s.syms.items.len;
        const n = try s.str(gpa, name);
        try s.syms.append(gpa, .{ .space = space, .start_only = start_only, .start = start, .end = end, .name = n[0], .name_len = n[1] });
    }

    fn hint(s: *Syms, gpa: Allocator, at: u32, operand: usize, space: zg.Space) !void {
        try s.hints.append(gpa, .{ .at = at, .operand = @intCast(operand), .space = space });
    }
};

const Ctx = struct {
    gpa: Allocator,
    l: *Layout,
    host: ?*Layout,
    frag: usize,
    at: u32,
    syms: *Syms,
    /// Instruction starts, in the order their placeholder lines were written.
    starts: *std.ArrayList(u32),
};

/// Every label of *l* as a cs symbol (full names), and each fragment as a
/// scope.  A code-data object's label also covers its bytes (``table + 1``).
fn labelSymbols(gpa: Allocator, l: *Layout, s: *Syms) !void {
    const b = l.b;
    for (l.frags) |fr| {
        const n = try s.str(gpa, fr.name);
        try s.scopes.append(gpa, .{ .start = b.cs(fr.start), .end = @as(u32, b.cs(fr.start)) + (fr.end - fr.start), .name = n[0], .name_len = n[1] });
    }
    var it = l.labels.iterator();
    while (it.next()) |kv| {
        const f = kv.key_ptr.*;
        const v = kv.value_ptr.*;
        const fr = l.frags[v[0]];
        const name = (try l.ref(gpa, f, null)).?;
        const data = v[1] == 0 and b.state[fr.start] != .start;
        const end: u32 = if (data) @as(u32, b.cs(f)) + (fr.end - fr.start) else @as(u32, b.cs(f)) + 1;
        try s.add(gpa, .cs, b.cs(f), end, name, !data);
    }
}

/// Name for a DS offset reached by a direct operand, recording its equate.
fn dsName(c: *Ctx, b: *Bin, disp: u16) !?[]const u8 {
    const gpa = c.gpa;
    var buf: [8]u8 = undefined;
    const key = try std.fmt.bufPrint(&buf, "{x:0>4}", .{disp});
    var target = b;
    if (b.kind == .overlay and disp < b.dorg) target = b.host orelse return null;
    if (target.kind == .driver) return null;
    const name = blk: {
        if (sidecar.obj(target.sc, "data_names")) |dn| if (dn.get(key)) |v| if (sidecar.entryName(v)) |n| break :blk n;
        const bss = if (target.kind == .overlay) @as(u32, disp) >= @as(u32, target.dorg) + target.dsize else disp >= target.bss_boundary;
        break :blk try std.fmt.allocPrint(gpa, "{s}_{s}", .{ if (bss) "bss" else "dseg", key });
    };
    if (c.l.own_names.contains(name)) return null;
    try c.l.equs.put(c.gpa, name, disp);
    return name;
}

fn externalName(c: *Ctx, b: *Bin, disp: u16, seg: []const u8) !?[]const u8 {
    const ed = sidecar.obj(b.sc, "external_data") orelse return null;
    var it = ed.iterator();
    while (it.next()) |kv| {
        if ((sidecar.hexStr(kv.key_ptr.*) orelse continue) != disp) continue;
        const o = switch (kv.value_ptr.*) {
            .object => |o| o,
            else => continue,
        };
        if (sidecar.str(o, "segment")) |s| if (!std.mem.eql(u8, s, seg)) continue;
        const name = sidecar.str(o, "name") orelse continue;
        try c.l.ext_equs.put(c.gpa, name, disp);
        return name;
    }
    return null;
}

/// Spelling of a code target (CS value *v*) from the current fragment.
fn codeRef(c: *Ctx, b: *Bin, v: u16) !?[]const u8 {
    const f = b.fileOf(v);
    if (b.inCode(f)) return c.l.ref(c.gpa, @intCast(f), c.frag);
    if (b.kind != .overlay) return null;
    const hl = c.host orelse return null;
    const hf = hl.b.fileOf(v);
    if (!hl.b.inCode(hf)) return null;
    const name = (try hl.ref(c.gpa, @intCast(hf), null)) orelse return null;
    if (c.l.own_names.contains(name)) return null;
    try c.l.host_equs.put(c.gpa, name, v);
    return name;
}

const Space = enum { dseg, bss };

/// Which part of the data segment DS offset *a* of *b* falls in.  An overlay
/// shares the host's: host data, host BSS, then its own from ``o_dorg``.
fn dataSpace(b: *Bin, a: u32) Space {
    if (b.kind == .overlay) {
        if (a < b.dorg) return if (b.host) |h| (if (a < h.bss_boundary) .dseg else .bss) else .dseg;
        return if (a < @as(u32, b.dorg) + b.dsize) .dseg else .bss;
    }
    return if (a < b.bss_boundary) .dseg else .bss;
}

const DsRef = struct { start: u16, name: []const u8 };

/// Name for an indexed DS displacement (``[bx + party_slots]``): an object
/// start, an overlay's own BSS, or inside a named object (``name + 0x1a``).
/// A ``bp`` base is a frame slot; small displacements are record fields.
fn indexedName(c: *Ctx, b: *Bin, in: *const zg.Insn, m: *const zg.Operand) !?DsRef {
    if (b.kind == .driver or m.enc_size != 2) return null;
    if (m.reg == 2 or m.reg == 3 or m.reg == 6) return null;
    if (in.segment()) |s| if (s != 3) return null;
    const a: u32 = m.value;
    if (a < 0x100 or a >= 0xf000) return null;
    // Host space: below an overlay's o_dorg, or all of the host's.
    const host_space = b.kind != .overlay or a < b.dorg;
    const host_starts: ?*const std.AutoHashMap(u16, void) = if (host_space) c.l.host_starts else null;
    const known = c.l.ds_starts.contains(m.value) or
        (host_starts != null and host_starts.?.contains(m.value));
    if (known or (b.kind == .overlay and a >= b.dorg and dataSpace(b, a) == .bss))
        return .{ .start = m.value, .name = (try dsName(c, b, m.value)) orelse return null };
    // Inside the nearest object below, in the same space.
    var start: ?u32 = null;
    var it = c.l.ds_starts.keyIterator();
    while (it.next()) |k| if (k.* < a and (start == null or k.* > start.?)) {
        start = k.*;
    };
    if (host_starts) |hs| {
        var hit = hs.keyIterator();
        while (hit.next()) |k| if (k.* < a and (start == null or k.* > start.?)) {
            start = k.*;
        };
    }
    const s = start orelse return null;
    if (b.kind == .overlay and (s < b.dorg) != (a < b.dorg)) return null;
    if (dataSpace(b, s) != dataSpace(b, a)) return null;
    const name = (try dsName(c, b, @intCast(s))) orelse return null;
    if (dataSpace(b, a) == .dseg and (a < 0x400 or std.mem.startsWith(u8, name, "dseg_"))) return null;
    return .{ .start = @intCast(s), .name = name };
}

/// Name a ds/es/host-code operand: its symbol (a range when it names a byte
/// inside), and the spelling deziggler must produce.
fn named(c: *Ctx, space: zg.Space, value: u16, start: u16, name: []const u8) !zg.symbols.Ref {
    const off = value - start;
    try c.syms.add(c.gpa, space, start, @as(u32, value) + 1, name, off == 0);
    return .{ .name = name, .off = off };
}

/// A code operand: own labels are already symbols; a host label becomes one.
fn codeName(c: *Ctx, b: *Bin, v: u16) !?zg.symbols.Ref {
    const n = (try codeRef(c, b, v)) orelse return null;
    if (!b.inCode(b.fileOf(v))) try c.syms.add(c.gpa, .cs, v, @as(u32, v) + 1, n, true);
    return .{ .name = n };
}

/// What operand *op* of the instruction at *f* spells as: a name in some
/// space, or a number (null).  Records equates as the names are chosen.
fn operandWant(c: *Ctx, b: *Bin, f: u32, in: *const zg.Insn, op: *const zg.Operand) !?struct { zg.Space, zg.symbols.Ref } {
    switch (op.kind) {
        .mem => {
            const seg = in.segment();
            if (op.reg == zg.direct) {
                const cs_ref = seg == 1 or (b.kind == .driver and seg == null);
                if (cs_ref) return .{ .cs, (try codeName(c, b, op.value)) orelse return null };
                if (seg == 0) {
                    const n = (try externalName(c, b, op.value, "es")) orelse return null;
                    return .{ .es, try named(c, .es, op.value, op.value, n) };
                }
                const n = (try dsName(c, b, op.value)) orelse return null;
                return .{ .ds, try named(c, .ds, op.value, op.value, n) };
            }
            if (try indexedName(c, b, in, op)) |r| return .{ .ds, try named(c, .ds, op.value, r.start, r.name) };
            // ``[cs:bx + table]``: the table's label.
            if (seg == 1 and op.enc_size == 2) {
                const t = b.fileOf(op.value);
                if (b.inCode(t)) if (try c.l.ref(c.gpa, @intCast(t), c.frag)) |n| return .{ .cs, .{ .name = n } };
            }
            return null;
        },
        .imm => {
            if (op.sext or op.enc_size != 2) return null;
            if (c.l.cs_imm.get(f)) |ci| if (try c.l.ref(c.gpa, ci[0], c.frag)) |n|
                return .{ .cs, .{ .name = n, .off = ci[1] } };
            if (c.l.imm_ptrs.get(f)) |sp| {
                if (sp == .cs) {
                    if (try codeName(c, b, op.value)) |r| return .{ .cs, r };
                } else if (try dsName(c, b, op.value)) |n| return .{ .ds, try named(c, .ds, op.value, op.value, n) };
            }
            // An overlay's own data lies far above any constant: a moved
            // or pushed word there is its address (``mov di, bss_9408``).
            if (b.kind == .overlay and op.value >= b.dorg and
                @as(u32, op.value) <= @as(u32, b.dorg) + b.dsize + b.obss and
                (in.mnem == .mov or in.mnem == .push))
            {
                const cf = b.fileOf(op.value);
                if (!(b.inCode(cf) and c.l.labels.contains(@intCast(cf)))) {
                    if (try dsName(c, b, op.value)) |n| return .{ .ds, try named(c, .ds, op.value, op.value, n) };
                }
            }
            return null;
        },
        .rel => return .{ .cs, (try codeName(c, b, op.value)) orelse return null },
        else => return null,
    }
}

/// Decide every operand of the instruction at *f*: record what it must
/// spell, and hint its space where that differs from deziggler's default.
fn symbolize(c: *Ctx, b: *Bin, f: u32, in: *const zg.Insn) !void {
    for (in.ops[0..in.nops], 0..) |*op, i| {
        // deziggler names direct and word-displacement memory, rel targets,
        // and (only when hinted) word immediates.
        const default: zg.Space = switch (op.kind) {
            .mem => if (op.reg == zg.direct or op.enc_size == 2) op.space else continue,
            .rel => op.space,
            .imm => .none,
            else => continue,
        };
        if (try operandWant(c, b, f, in, op)) |w| {
            if (w[0] != default) try c.syms.hint(c.gpa, f, i, w[0]);
            try c.syms.wants.append(c.gpa, .{ .at = f, .cs = b.cs(f), .space = w[0], .value = op.value, .expect = w[1] });
        } else if (default != .none) try c.syms.hint(c.gpa, f, i, .none);
    }
}

/// Hand *s* to deziggler, render every instruction line, and check each name
/// came out as decided.
fn renderLines(gpa: Allocator, b: *Bin, s: *Syms, starts: []const u32) ![]const []const u8 {
    try b.zg.setSymbols(s.pool.items, s.syms.items, s.scopes.items, s.hints.items);
    var bad: u32 = 0;
    for (s.wants.items) |w| {
        const got = b.zg.syms.lookup(w.space, w.value, w.cs);
        if (got != null and std.mem.eql(u8, got.?.name, w.expect.name) and got.?.off == w.expect.off) continue;
        if (bad < 5) std.debug.print("{s}: 0x{x:0>4}: want {s} + {d}, deziggler finds {s}\n", .{
            b.name, w.at, w.expect.name, w.expect.off, if (got) |g| g.name else "(number)",
        });
        bad += 1;
    }
    if (bad > 0 or s.conflicts > 0) std.debug.print("{s}: {d} misnamed operands, {d} symbol conflicts\n", .{ b.name, bad, s.conflicts });
    const text = try b.zg.render(starts);
    const lines = try gpa.alloc([]const u8, starts.len);
    var it = std.mem.splitScalar(u8, text, '\n');
    for (lines) |*ln| ln.* = try gpa.dupe(u8, it.next().?);
    return lines;
}

// ── Data ──────────────────────────────────────────────────────────────

fn printable(c: u8) bool {
    return c >= 0x20 and c < 0x7f and c != '"';
}

/// Match Python's left-aligned field followed by one separator space.
fn pad(out: *Buf, gpa: Allocator, line_start: usize, width: usize) !void {
    const len = out.items.len - line_start;
    if (len < width) try out.appendNTimes(gpa, ' ', width - len);
    try out.append(gpa, ' ');
}

/// ``db`` lines for ``data[lo, hi)``: strings quoted, zero runs as ``times``.
fn dataLines(gpa: Allocator, out: *Buf, data: []const u8, lo: u32, hi: u32, comment_base: u32) !void {
    var i = lo;
    while (i < hi) {
        const line_start = out.items.len;
        const at = i;
        var z = i;
        while (z < hi and data[z] == 0) z += 1;
        var s = i;
        while (s < hi and printable(data[s])) s += 1;
        if (z - i >= 16) {
            try out.print(gpa, "    times {d} db 0", .{z - i});
            i = z;
        } else if (s - i >= 4) {
            const e = @min(s, i + 64);
            try out.print(gpa, "    db \"{s}\"", .{data[i..e]});
            i = e;
        } else {
            try out.appendSlice(gpa, "    db ");
            var k: u32 = 0;
            while (i < hi and k < 8) : (k += 1) {
                if (k > 0) {
                    // Stop before a string worth quoting.
                    var p = i;
                    while (p < hi and printable(data[p])) p += 1;
                    if (p - i >= 4) break;
                    var q = i;
                    while (q < hi and data[q] == 0) q += 1;
                    if (q - i >= 16) break;
                    try out.appendSlice(gpa, ", ");
                }
                try out.print(gpa, "0x{x:0>2}", .{data[i]});
                i += 1;
            }
        }
        try pad(out, gpa, line_start, 43);
        try out.print(gpa, "; 0x{x:0>4}\n", .{at + comment_base});
    }
}

/// Bytes ``[lo, hi)`` of a fragment that no instruction covers.
fn dataSpan(c: *Ctx, b: *Bin, out: *Buf, lo: u32, hi: u32) !void {
    const gpa = c.gpa;
    var i = lo;
    while (i < hi) {
        // A label splits the run.
        if (i != lo or i != c.l.frags[c.frag].start) if (c.l.labels.get(i)) |v| if (v[1] != 0) {
            try out.print(gpa, "{s}:\n", .{c.l.local_names.get(i).?});
        };
        var next = i + 1;
        while (next < hi and !c.l.labels.contains(next)) next += 1;
        // Table words inside the run.
        var j = i;
        while (j < next) {
            const tb = for (b.tables.items) |t| {
                if (j >= t.addr and j < t.end and (j - t.addr) % 2 == 0) break t;
            } else null;
            if (tb != null and j + 2 <= next and b.state[j] == .table and b.state[j + 1] == .table) {
                const line_start = out.items.len;
                const w = std.mem.readInt(u16, b.data[j..][0..2], .little);
                const is_key = (j - tb.?.addr) / 2 < tb.?.keys;
                const name = if (is_key) null else try codeRef(c, b, w);
                if (name) |n| try out.print(gpa, "    dw {s}", .{n}) else try out.print(gpa, "    dw 0x{x:0>4}", .{w});
                try pad(out, gpa, line_start, 4 + 42);
                try out.print(gpa, "; 0x{x:0>4}\n", .{j});
                j += 2;
                continue;
            }
            var e = j + 1;
            while (e < next) : (e += 1) {
                const in_table = for (b.tables.items) |t| {
                    if (e >= t.addr and e < t.end and (e - t.addr) % 2 == 0 and b.state[e] == .table) break true;
                } else false;
                if (in_table) break;
            }
            try dataLines(gpa, out, b.data, j, e, 0);
            j = e;
        }
        i = next;
    }
}

/// Stands for an instruction line until deziggler has rendered it (``db``
/// text never holds a NUL).
const placeholder: u8 = 0;

/// *text* with its placeholders replaced by the lines for *starts*,
/// consumed from *k* on.
fn fillLines(gpa: Allocator, text: []const u8, lines: []const []const u8, starts: []const u32, k: *usize) ![]const u8 {
    var out: Buf = .empty;
    for (text) |ch| {
        if (ch != placeholder) {
            try out.append(gpa, ch);
            continue;
        }
        const line_start = out.items.len;
        try out.print(gpa, "    {s}", .{lines[k.*]});
        try pad(&out, gpa, line_start, 4 + 32);
        try out.print(gpa, "; 0x{x:0>4}", .{starts[k.*]});
        k.* += 1;
    }
    return out.items;
}

fn fragmentText(c: *Ctx, b: *Bin) ![]const u8 {
    const gpa = c.gpa;
    const fr = c.l.frags[c.frag];
    var out: Buf = .empty;
    try out.print(gpa, "; auto-generated\n{s}:\n", .{fr.name});
    var f = fr.start;
    while (f < fr.end) {
        if (b.state[f] != .start) {
            var e = f + 1;
            while (e < fr.end and b.state[e] != .start) e += 1;
            try dataSpan(c, b, &out, f, e);
            f = e;
            continue;
        }
        if (f != fr.start) if (c.l.labels.get(f)) |v| if (v[1] != 0) try out.print(gpa, "{s}:\n", .{c.l.local_names.get(f).?});
        const in = b.insn[f].?;
        // deziggler spells the line once the binary's names are all known.
        try symbolize(c, b, f, &in);
        try c.starts.append(gpa, f);
        try out.appendSlice(gpa, &.{ placeholder, '\n' });
        f += in.len;
    }
    return out.items;
}

const mz_fields = [_][]const u8{
    "e_magic",                    "e_cblp: bytes in last page", "e_cp: pages", "e_crlc: relocations", "e_cparhdr: header paragraphs", "e_minalloc",
    "e_maxalloc",                 "e_ss",                       "e_sp",        "e_csum",              "e_ip",                         "e_cs",
    "e_lfarlc: relocation table", "e_ovno",
};
const ovr_fields = [_][]const u8{ "o_magic", "o_corg: code origin", "o_csize: code size", "o_dorg: data origin", "o_dsize: data size", "o_bss: bss size", "o_entry: entry" };

fn headerWords(gpa: Allocator, out: *Buf, b: *Bin, names: []const []const u8) !void {
    // Every field currently renders as "dw 0xNNNN" (nine characters).
    const width = "dw 0x0000".len;
    for (names, 0..) |n, i| {
        const line_start = out.items.len;
        try out.print(gpa, "    dw 0x{x:0>4}", .{std.mem.readInt(u16, b.data[i * 2 ..][0..2], .little)});
        try pad(out, gpa, line_start, 4 + width);
        try out.print(gpa, "; {s}\n", .{n});
    }
}

/// Prepare all fragment texts before resolving sharing across binaries.
pub fn prepare(gpa: Allocator, l: *Layout, host: ?*Layout) !Prepared {
    const b = l.b;
    var syms: Syms = .{};
    try labelSymbols(gpa, l, &syms);
    var starts: std.ArrayList(u32) = .empty;
    var c = Ctx{ .gpa = gpa, .l = l, .host = host, .frag = 0, .at = 0, .syms = &syms, .starts = &starts };
    const texts = try gpa.alloc([]const u8, l.frags.len);
    for (l.frags, 0..) |_, i| {
        c.frag = i;
        texts[i] = try fragmentText(&c, b);
    }
    const lines = try renderLines(gpa, b, &syms, starts.items);
    var k: usize = 0;
    const fragments = try gpa.alloc(File, l.frags.len);
    var names = std.StringHashMap(void).init(gpa);
    for (l.frags, texts, fragments) |fr, raw, *file| {
        const text = try fillLines(gpa, raw, lines, starts.items, &k);
        const path = try std.fmt.allocPrint(gpa, "{s}/{s}.asm", .{ fr.dir, fr.name });
        file.* = .{ .path = path, .text = text, .bin = b.name, .stem = fr.name, .data = b.state[fr.start] != .start };
        try names.put(fr.name, {});
    }
    for (l.host_equs.keys()) |name| try names.put(name, {});
    for (l.ext_equs.keys()) |name| try names.put(name, {});
    for (l.equs.keys()) |name| try names.put(name, {});
    return .{ .layout = l, .fragments = fragments, .names = names };
}

fn emitInclude(gpa: Allocator, out: *Buf, target: Target, start: u32) !void {
    for (target.aliases) |alias| try out.print(gpa, "{s} equ {s}\n", .{ alias[0], alias[1] });
    const line_start = out.items.len;
    try out.print(gpa, "%include \"{s}\"", .{target.path});
    try pad(out, gpa, line_start, 42);
    try out.print(gpa, "; 0x{x:0>4}\n", .{start});
}

/// Emit private fragments and the master using the resolved include targets.
pub fn emit(gpa: Allocator, prepared: Prepared, resolution: Resolution, files: *std.ArrayList(File)) !void {
    const l = prepared.layout;
    const b = l.b;
    for (prepared.fragments) |file| {
        if (!resolution.targets.contains(file.path)) try files.append(gpa, file);
    }

    var out: Buf = .empty;
    try out.appendSlice(gpa, "; auto-generated\nbits 16\n");
    // Labels take their code-segment value: file offset f sits at cs(f).
    const vstart: i64 = b.bias;
    if (vstart < 0) try out.print(gpa, "section .text vstart=-0x{x}\n\n", .{-vstart}) else try out.print(gpa, "section .text vstart=0x{x}\n\n", .{vstart});

    // Host code labels and DS equates.
    if (l.host_equs.count() > 0) {
        try out.appendSlice(gpa, "; host routines (code segment offsets)\n");
        var it = l.host_equs.iterator();
        while (it.next()) |kv| try out.print(gpa, "{s} equ 0x{x:0>4}\n", .{ kv.key_ptr.*, kv.value_ptr.* });
        try out.append(gpa, '\n');
    }
    if (l.ext_equs.count() > 0) {
        try out.appendSlice(gpa, "; absolute offsets outside this program\n");
        var it = l.ext_equs.iterator();
        while (it.next()) |kv| try out.print(gpa, "{s} equ 0x{x:0>4}\n", .{ kv.key_ptr.*, kv.value_ptr.* });
        try out.append(gpa, '\n');
    }
    if (l.equs.count() > 0) {
        try out.appendSlice(gpa, "; data segment offsets\n");
        const Kv = struct { name: []const u8, v: u32 };
        var list: std.ArrayList(Kv) = .empty;
        var it = l.equs.iterator();
        while (it.next()) |kv| try list.append(gpa, .{ .name = kv.key_ptr.*, .v = kv.value_ptr.* });
        std.mem.sort(Kv, list.items, {}, struct {
            fn lt(_: void, a: Kv, z: Kv) bool {
                return a.v < z.v or (a.v == z.v and std.mem.lessThan(u8, a.name, z.name));
            }
        }.lt);
        for (list.items) |kv| try out.print(gpa, "{s} equ 0x{x:0>4}\n", .{ kv.name, kv.v });
        try out.append(gpa, '\n');
    }

    switch (b.kind) {
        .mz => {
            try out.appendSlice(gpa, "    ; DOS MZ header\n");
            try headerWords(gpa, &out, b, &mz_fields);
            try dataLines(gpa, &out, b.data, 0x1c, b.code_lo, 0);
        },
        .overlay => {
            try out.appendSlice(gpa, "    ; Aztec C86 overlay header\n");
            try headerWords(gpa, &out, b, &ovr_fields);
        },
        .driver => {},
    }
    try out.append(gpa, '\n');
    for (l.frags, prepared.fragments) |fr, file| {
        try emitInclude(gpa, &out, resolution.targets.get(file.path) orelse .{ .path = file.path, .aliases = &.{} }, fr.start);
    }

    // Everything past the code: the data segment as the file carries it.
    if (b.code_hi < b.data.len) {
        try out.appendSlice(gpa, "\n    ; data segment\n");
        const ds_file: u32 = if (b.kind == .mz) b.data_origin else b.code_hi;
        const ds_base: u32 = if (b.kind == .overlay) b.dorg else 0;
        var names = std.AutoHashMap(u32, []const u8).init(gpa);
        if (sidecar.obj(b.sc, "data_names")) |dn| {
            var it = dn.iterator();
            while (it.next()) |kv| {
                const off = sidecar.hexStr(kv.key_ptr.*) orelse continue;
                try names.put(off, sidecar.entryName(kv.value_ptr.*) orelse continue);
            }
        }
        var eit = l.equs.iterator();
        while (eit.next()) |kv| if (!names.contains(kv.value_ptr.*)) try names.put(kv.value_ptr.*, kv.key_ptr.*);
        // Data before the data segment proper (MZ: none; it starts at code_hi).
        var i = b.code_hi;
        if (ds_file > i) {
            try dataLines(gpa, &out, b.data, i, ds_file, 0);
            i = ds_file;
        }
        while (i < b.data.len) {
            const dso: u32 = i - ds_file + ds_base;
            var next = i + 1;
            while (next < b.data.len and !names.contains(next - ds_file + ds_base)) next += 1;
            if (names.get(dso)) |n| try out.print(gpa, "; {s} (ds:0x{x:0>4})\n", .{ n, dso });
            try dataLines(gpa, &out, b.data, i, next, 0);
            i = next;
        }
    }
    try files.append(gpa, .{ .path = try std.fmt.allocPrint(gpa, "{s}.asm", .{b.name}), .text = out.items, .bin = b.name });
}
