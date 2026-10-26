//! Per-binary analysis: geometry, code discovery, routine roots and names.
//!
//! Every code address is a file offset.  ``cs(f)`` is where that byte runs in
//! its code segment (the value near branches, tables and ``cs:`` operands
//! encode), and ``fileOf(v)`` is the inverse.

const std = @import("std");
const zg = @import("deziggler");
const sidecar = @import("sidecar.zig");

const Allocator = std.mem.Allocator;
const Set = std.AutoHashMap(u32, void);

pub const Kind = enum { mz, overlay, driver };

pub const St = enum(u8) { unk, start, cont, hard, table };

pub const Table = struct {
    addr: u32,
    end: u32,
    jmp: u32,
    /// Leading words that are switch keys (Aztec inline switch), not targets.
    keys: u32 = 0,
};

pub const Ref = struct { src: u32, dst: u32 };

pub const Bin = struct {
    gpa: Allocator,
    name: []const u8,
    data: []const u8,
    kind: Kind,
    sc: std.json.ObjectMap,
    start_offset: u32,
    code_lo: u32,
    code_hi: u32,
    /// cs = file + bias
    bias: i64,

    // MZ
    header_size: u32 = 0,
    data_origin: u32 = 0,
    /// DS offset of the first BSS byte.
    bss_boundary: u32 = 0,
    entry: ?u32 = null,
    relocs: []const u32 = &.{},

    // Aztec overlay header
    corg: u16 = 0,
    csize: u16 = 0,
    dorg: u16 = 0,
    dsize: u16 = 0,
    obss: u16 = 0,
    oentry: u16 = 0,
    host: ?*Bin = null,

    state: []St = &.{},
    insn: []?zg.Insn = &.{},
    /// deziggler context over this file; ``all`` is its decode of every code offset.
    zg: *zg.Ctx = undefined,
    all: []const zg.Insn = &.{},
    calls: Set,
    jumps: Set,
    roots: Set,
    /// Branch targets that land inside an instruction already decoded.
    inside: Set,
    refs: std.ArrayList(Ref) = .empty,
    tables: std.ArrayList(Table) = .empty,
    work: std.ArrayList(u32) = .empty,
    names: std.AutoHashMap(u32, []const u8),
    /// Content tags of generic routines (for the sidecar ``routines`` table).
    csav: Set,
    /// Overlay trampoline stubs: file offset -> dispatch index.
    stubs: std.AutoHashMap(u32, u16),
    /// Signature names already handed out (for ``_2`` dedup).
    sig_count: std.StringHashMap(u32),

    pub fn cs(b: *const Bin, f: u32) u16 {
        return @truncate(@as(u64, @bitCast(@as(i64, f) + b.bias)));
    }

    /// File offset of a code-segment value (may be outside this file).
    pub fn fileOf(b: *const Bin, v: u16) i64 {
        return @as(i64, v) - b.bias;
    }

    pub fn inCode(b: *const Bin, f: i64) bool {
        return f >= b.code_lo and f < b.code_hi;
    }

    fn word(b: *const Bin, f: usize) u16 {
        return std.mem.readInt(u16, b.data[f..][0..2], .little);
    }

    /// File offset a near rel branch lands on (unchecked).
    pub fn relTarget(b: *const Bin, in: *const zg.Insn) i64 {
        return b.fileOf(in.target);
    }

    /// The instruction decoding at code offset *f*, if any.
    fn decodeAt(b: *const Bin, f: u32) ?zg.Insn {
        if (!b.inCode(f)) return null;
        const in = b.all[f - b.code_lo];
        return if (in.len == 0) null else in;
    }

    pub fn init(gpa: Allocator, name: []const u8, data: []const u8, sc: std.json.ObjectMap) !*Bin {
        const b = try gpa.create(Bin);
        const type_ = sidecar.str(sc, "type") orelse "mz";
        b.* = .{
            .gpa = gpa,
            .name = name,
            .data = data,
            .kind = if (std.mem.eql(u8, type_, "mz")) .mz else if (std.mem.eql(u8, type_, "aztec_overlay")) .overlay else .driver,
            .sc = sc,
            .start_offset = @intCast(sidecar.int(sc, "start_offset") orelse 0),
            .code_lo = 0,
            .code_hi = @intCast(data.len),
            .bias = 0,
            .calls = Set.init(gpa),
            .jumps = Set.init(gpa),
            .roots = Set.init(gpa),
            .inside = Set.init(gpa),
            .names = std.AutoHashMap(u32, []const u8).init(gpa),
            .csav = Set.init(gpa),
            .stubs = std.AutoHashMap(u32, u16).init(gpa),
            .sig_count = std.StringHashMap(u32).init(gpa),
        };
        switch (b.kind) {
            .mz => {
                const hdr: u32 = @as(u32, b.word(0x08)) * 16;
                const cs_base: u32 = @as(u32, b.word(0x16)) * 16;
                const ss_base: u32 = @as(u32, b.word(0x0E)) * 16;
                b.header_size = hdr;
                b.code_lo = hdr + cs_base;
                b.data_origin = hdr + ss_base;
                b.code_hi = b.data_origin;
                b.bias = -@as(i64, hdr + cs_base);
                b.bss_boundary = @as(u32, @intCast(data.len)) - hdr - ss_base;
                b.entry = hdr + cs_base + b.word(0x14);
                const n = b.word(0x06);
                const at = b.word(0x18);
                const relocs = try gpa.alloc(u32, n);
                for (relocs, 0..) |*r, i| {
                    const e = at + i * 4;
                    r.* = hdr + @as(u32, b.word(e + 2)) * 16 + b.word(e);
                }
                b.relocs = relocs;
            },
            .overlay => {
                b.corg = b.word(2);
                b.csize = b.word(4);
                b.dorg = b.word(6);
                b.dsize = b.word(8);
                b.obss = b.word(10);
                b.oentry = b.word(12);
                b.code_lo = 14;
                b.code_hi = @min(14 + @as(u32, b.csize), @as(u32, @intCast(data.len)));
                b.bias = @as(i64, b.corg) - 14;
            },
            // A raw driver is loaded at segment:0x100.
            .driver => b.bias = 0x100,
        }
        b.state = try gpa.alloc(St, data.len);
        @memset(b.state, .unk);
        b.insn = try gpa.alloc(?zg.Insn, data.len);
        @memset(b.insn, null);
        b.zg = try zg.Ctx.init(gpa, data, .{ .code_lo = b.code_lo, .code_hi = b.code_hi, .bias = @intCast(b.bias) });
        b.all = try b.zg.decodeAll();
        return b;
    }

    /// Byte range ``[lo, hi)`` of a sidecar ``{start, end}`` entry (end inclusive).
    fn range(entry: std.json.Value) ?[2]u32 {
        const o = switch (entry) {
            .object => |o| o,
            else => return null,
        };
        const lo = sidecar.hex(o.get("start") orelse return null) orelse return null;
        const hi = if (o.get("end")) |e| sidecar.hex(e) orelse lo else lo;
        return .{ lo, hi + 1 };
    }

    fn root(b: *Bin, f: u32) !void {
        if (!b.inCode(f) or b.state[f] == .hard) return;
        try b.roots.put(f, {});
        try b.work.append(b.gpa, f);
    }

    fn seed(b: *Bin, f: u32) !void {
        if (!b.inCode(f) or b.state[f] == .hard) return;
        try b.work.append(b.gpa, f);
    }

    // ── Code discovery ────────────────────────────────────────────────

    pub fn discover(b: *Bin, sigs: []const Signature) !void {
        const n: u32 = @intCast(b.data.len);
        for (sidecar.arr(b.sc, "force_data")) |e| {
            const r = range(e) orelse continue;
            for (r[0]..@min(r[1], n)) |i| b.state[i] = .hard;
        }
        for ([_][]const u8{ "jump_tables", "code_tables" }) |key| {
            for (sidecar.arr(b.sc, key)) |e| try b.declaredTable(e);
        }
        // ``cs: jmp/call word [bx|di + disp16]`` anywhere in the code: a table.
        var i = b.code_lo;
        while (i + 5 <= b.code_hi) : (i += 1) {
            if (b.data[i] == 0x2E and b.data[i + 1] == 0xFF and b.state[i] == .unk) {
                switch (b.data[i + 2]) {
                    0xA7, 0xA5, 0x97, 0x95 => _ = try b.indirectTable(i, b.word(i + 3), true, false),
                    else => {},
                }
            }
        }

        switch (b.kind) {
            .mz => if (b.entry) |e| try b.root(e),
            .overlay => {
                try b.root(14);
                const e = b.fileOf(b.oentry);
                if (b.inCode(e)) try b.root(@intCast(e));
                // ``mov ax, fn; call <outside>``: the entry thunks the overlay
                // loader patches; ``mov ax, 0xffNN`` is a dispatch stub.
                i = b.code_lo;
                while (i + 6 <= b.code_hi) : (i += 1) {
                    if (b.data[i] != 0xB8 or b.data[i + 3] != 0xE8) continue;
                    const rel: i16 = @bitCast(b.word(i + 4));
                    const t = @as(i64, i) + 6 + rel;
                    if (t >= 0 and t < n) continue;
                    try b.root(i);
                    if (b.data[i + 2] == 0xFF) try b.stubs.put(i, 0 -% b.word(i + 1));
                }
            },
            .driver => {},
        }
        if (sidecar.obj(b.sc, "dispatch_table")) |dt| {
            const base: u32 = @intCast(sidecar.int(dt, "base_offset") orelse 0);
            const size: u32 = @intCast(sidecar.int(dt, "entry_size") orelse 4);
            const count: u32 = @intCast(sidecar.int(dt, "count") orelse 0);
            for (0..count) |k| {
                const at = base + @as(u32, @intCast(k)) * size;
                if (at + 4 > n or b.data[at] != 0xE8 or b.data[at + 3] != 0xCB) continue;
                try b.seed(at);
                const h = b.fileOf(b.cs(at) +% 3 +% b.word(at + 1));
                if (b.inCode(h)) {
                    try b.root(@intCast(h));
                    try b.calls.put(@intCast(h), {});
                }
            }
        }
        if (sidecar.obj(b.sc, "function_names")) |fns| {
            const adj = @as(i64, b.start_offset) + (sidecar.int(b.sc, "ghidra_base_offset") orelse 0);
            var it = fns.iterator();
            while (it.next()) |kv| {
                const k = std.fmt.parseInt(i64, kv.key_ptr.*, 16) catch continue;
                const f = k + adj;
                if (b.inCode(f)) try b.root(@intCast(f));
            }
        }
        try b.matchSignatures(sigs);
        try b.seedCsav();
        try b.seedStubs();
        try b.run();
        for (sidecar.arr(b.sc, "force_code")) |e| {
            const r = range(e) orelse continue;
            try b.forceCode(r[0], @min(r[1], b.code_hi));
        }
        try b.gapSeeds();
    }

    pub fn run(b: *Bin) !void {
        while (b.work.pop()) |f| try b.trace(f);
    }

    fn trace(b: *Bin, start: u32) !void {
        var off = start;
        var prev: ?zg.Insn = null;
        while (b.inCode(off)) {
            switch (b.state[off]) {
                .unk => {},
                .cont => {
                    try b.inside.put(off, {});
                    return;
                },
                else => return,
            }
            const in = b.decodeAt(off) orelse return;
            for (1..in.len) |k| if (b.state[off + k] != .unk) return;
            b.state[off] = .start;
            for (1..in.len) |k| b.state[off + k] = .cont;
            b.insn[off] = in;
            const next = off + in.len;
            switch (in.flow) {
                .seq => if (b.dosExit(off, &in)) {
                    // A dead ``ret`` after the exit still closes the routine.
                    if (next < b.code_hi and b.data[next] == 0xC3 and b.state[next] == .unk) {
                        b.state[next] = .start;
                        b.insn[next] = b.decodeAt(next);
                    }
                    return;
                },
                .jcc => try b.branch(off, &in, false),
                .call => {
                    if (try b.inlineSwitch(off, &in, prev)) return;
                    try b.branch(off, &in, true);
                },
                .jmp => {
                    try b.branch(off, &in, false);
                    return;
                },
                .jmp_ind => {
                    try b.indirect(off, &in, true);
                    return;
                },
                .call_ind => try b.indirect(off, &in, false),
                .ret, .halt, .jmp_far => return,
                .call_far => {},
            }
            prev = in;
            off = next;
        }
    }

    fn branch(b: *Bin, off: u32, in: *const zg.Insn, call: bool) !void {
        const t = b.relTarget(in);
        if (!b.inCode(t)) return;
        const f: u32 = @intCast(t);
        if (b.state[f] == .hard) return;
        try (if (call) &b.calls else &b.jumps).put(f, {});
        try b.refs.append(b.gpa, .{ .src = off, .dst = f });
        try b.work.append(b.gpa, f);
    }

    fn dosExit(b: *Bin, off: u32, in: *const zg.Insn) bool {
        if (in.opcode != 0xCD) return false;
        const v = in.ops[0].value;
        if (v == 0x20) return true;
        if (v != 0x21) return false;
        const exits = [_]u8{ 0x00, 0x4C, 0x31 };
        for (exits) |ah| {
            if (off >= 2 and b.data[off - 2] == 0xB4 and b.data[off - 1] == ah) return true;
            if (off >= 3 and b.data[off - 3] == 0xB8 and b.data[off - 2] <= 1 and b.data[off - 1] == ah) return true;
        }
        return false;
    }

    fn indirect(b: *Bin, off: u32, in: *const zg.Insn, is_jmp: bool) !void {
        const m = in.memOp() orelse return;
        const cs_seg = in.segment() == 1;
        if (m.reg != zg.direct) {
            if (cs_seg or b.kind == .driver) _ = try b.indirectTable(off, m.value, true, false);
            return;
        }
        if (!is_jmp) return;
        // ``jmp [vector]``: the word it reads names the target.
        var ptr: ?u32 = null;
        if (cs_seg or b.kind == .driver) {
            const p = b.fileOf(m.value);
            if (p >= 0 and p + 2 <= b.data.len) ptr = @intCast(p);
        } else if (b.kind == .mz and m.value < b.bss_boundary) {
            ptr = b.data_origin + m.value;
        }
        const p = ptr orelse return;
        const t = b.fileOf(b.word(p));
        if (b.inCode(t) and b.state[@intCast(t)] != .hard) {
            try b.jumps.put(@intCast(t), {});
            try b.refs.append(b.gpa, .{ .src = off, .dst = @intCast(t) });
            try b.work.append(b.gpa, @intCast(t));
        }
    }

    /// ``(max_index)`` of the table a dispatcher at *jmp* reads, from the
    /// bounds check just before it.
    fn tableBound(b: *Bin, jmp: u32, table: u32) ?u32 {
        const d = b.data;
        var i: u32 = jmp;
        const lo = if (jmp >= 16) jmp - 16 else 0;
        while (i > lo) {
            i -= 1;
            if (d[i] == 0x3D and i + 3 < d.len) {
                switch (d[i + 3]) {
                    0x77, 0x72 => return b.word(i + 1),
                    0x73, 0x76 => return b.word(i + 1) -| 1,
                    else => {},
                }
            }
            if (d[i] == 0xB9 and i + 4 < d.len and d[i + 3] == 0xF2 and (d[i + 4] == 0xAE or d[i + 4] == 0xAF)) {
                const v = b.word(i + 1);
                if (v > 0 and v <= 256) return v - 1;
            }
        }
        const flo = (@min(table, jmp)) -| 64;
        const fhi = @min(@as(u32, @intCast(d.len)) -| 4, @max(jmp, table) + 5);
        i = flo;
        while (i < fhi) : (i += 1) {
            if (d[i] == 0x3D) switch (d[i + 3]) {
                0x77, 0x72 => return b.word(i + 1),
                0x73, 0x76 => return b.word(i + 1) -| 1,
                else => {},
            };
        }
        i = jmp -| 64;
        while (i < jmp) : (i += 1) {
            if (d[i] == 0xB9) {
                const v = b.word(i + 1);
                if (v > 0 and v <= 256) return v;
            }
        }
        return null;
    }

    fn indirectTable(b: *Bin, jmp: u32, disp: u16, bounds: bool, declared: bool) !bool {
        const t = b.fileOf(disp);
        if (t < 0 or t + 2 > b.data.len) return false;
        const table: u32 = @intCast(t);
        for (b.tables.items) |x| if (x.addr == table) return true;
        const max: ?u32 = if (bounds) b.tableBound(jmp, table) else null;
        const limit: u32 = if (max) |m| m + 1 else 256;
        var targets: std.ArrayList(u32) = .empty;
        var at = table;
        while (at + 2 <= b.data.len and targets.items.len < limit) : (at += 2) {
            if (max == null and b.state[at] != .unk and b.state[at] != .table) break;
            const f = b.fileOf(b.word(at));
            if (!b.inCode(f)) break;
            try targets.append(b.gpa, @intCast(f));
        }
        if (targets.items.len < 3 and !declared) return false;
        for (table..at) |k| {
            if (b.state[k] == .unk) b.state[k] = .table;
        }
        try b.tables.append(b.gpa, .{ .addr = table, .end = at, .jmp = jmp });
        for (targets.items) |f| {
            if (b.state[f] == .hard or b.state[f] == .table) continue;
            try b.jumps.put(f, {});
            try b.refs.append(b.gpa, .{ .src = jmp, .dst = f });
            try b.work.append(b.gpa, f);
        }
        return true;
    }

    fn declaredTable(b: *Bin, e: std.json.Value) !void {
        const o = switch (e) {
            .object => |o| o,
            else => return,
        };
        const table = sidecar.hex(o.get("table") orelse return) orelse return;
        const jmp = if (o.get("jmp")) |j| sidecar.hex(j) orelse table else table;
        const size: u32 = @intCast(sidecar.int(o, "entry_size") orelse 2);
        if (size != 2) return;
        const count: u32 = @intCast(sidecar.int(o, "count") orelse return);
        for (b.tables.items) |x| if (x.addr == table) return;
        const end = @min(table + 2 * count, @as(u32, @intCast(b.data.len)));
        for (table..end) |k| b.state[k] = .table;
        try b.tables.append(b.gpa, .{ .addr = table, .end = end, .jmp = jmp });
        var at = table;
        while (at < end) : (at += 2) {
            const f = b.fileOf(b.word(at));
            if (!b.inCode(f)) continue;
            try b.jumps.put(@intCast(f), {});
            try b.refs.append(b.gpa, .{ .src = jmp, .dst = @intCast(f) });
            try b.work.append(b.gpa, @intCast(f));
        }
    }

    const aztec_switch = [_]u8{ 0x5b, 0x57, 0x06, 0x8c, 0xcf, 0x8e, 0xc7, 0x8b, 0xfb, 0x8b, 0xd9, 0xd1, 0xe3, 0xfc, 0xf2, 0xaf, 0x26, 0x8b, 0x49, 0xfc, 0x07, 0x5f, 0xff, 0xe1 };

    /// ``mov cx, N; call <Aztec switch helper>``: the helper never returns;
    /// N-1 key words and N target words follow the call.
    fn inlineSwitch(b: *Bin, off: u32, in: *const zg.Insn, prev: ?zg.Insn) !bool {
        const p = prev orelse return false;
        if (p.opcode != 0xB8 + 1) return false; // mov cx, imm16
        const h = b.relTarget(in);
        if (h < 0 or h + aztec_switch.len > b.data.len) return false;
        const hf: usize = @intCast(h);
        if (!std.mem.eql(u8, b.data[hf .. hf + aztec_switch.len], &aztec_switch)) return false;
        const count: u32 = p.ops[1].value;
        if (count == 0) return false;
        const start = off + in.len;
        const end = start + 2 * (2 * count - 1);
        if (end > b.data.len) return false;
        var k = start + 2 * (count - 1);
        while (k < end) : (k += 2) {
            const f = b.fileOf(b.word(k));
            if (!b.inCode(f) or (f >= start and f < end)) return false;
        }
        for (start..end) |j| if (b.state[j] != .unk) return false;
        for (start..end) |j| b.state[j] = .table;
        try b.tables.append(b.gpa, .{ .addr = start, .end = end, .jmp = off, .keys = count - 1 });
        try b.calls.put(@intCast(h), {});
        try b.refs.append(b.gpa, .{ .src = off, .dst = @intCast(h) });
        try b.work.append(b.gpa, @intCast(h));
        k = start + 2 * (count - 1);
        while (k < end) : (k += 2) {
            const f: u32 = @intCast(b.fileOf(b.word(k)));
            try b.jumps.put(f, {});
            try b.refs.append(b.gpa, .{ .src = off, .dst = f });
            try b.work.append(b.gpa, f);
        }
        return true;
    }

    fn forceCode(b: *Bin, lo: u32, hi: u32) !void {
        var off = lo;
        while (off < hi) {
            if (b.state[off] == .unk) {
                try b.work.append(b.gpa, off);
                try b.run();
                if (b.state[off] == .unk) return; // undecodable
            }
            off += 1;
            while (off < hi and b.state[off] == .cont) off += 1;
        }
    }

    const csav_prologue = [_]u8{ 0x5b, 0x55, 0x8b, 0xec };

    fn isCsav(b: *const Bin, i: u32) bool {
        if (i + 6 > b.code_hi or b.data[i] != 0xB8 or b.data[i + 3] != 0xE8) return false;
        const t = @as(i64, i) + 6 + @as(i16, @bitCast(b.word(i + 4)));
        if (t < 0 or t + 4 > b.data.len) return false;
        const tf: usize = @intCast(t);
        return std.mem.eql(u8, b.data[tf .. tf + 4], &csav_prologue);
    }

    /// ``mov ax, -frame; call $csav``: every stack-checked Aztec function.
    fn seedCsav(b: *Bin) !void {
        var i = b.code_lo;
        while (i + 6 <= b.code_hi) : (i += 1) {
            if (b.state[i] == .hard or !b.isCsav(i)) continue;
            try b.csav.put(i, {});
            try b.root(i);
        }
    }

    /// ``push bp; mov bp, sp; cld``: the runtime's indirectly-reached veneers.
    fn seedStubs(b: *Bin) !void {
        var i = b.code_lo;
        while (i + 4 <= b.code_hi) : (i += 1) {
            if (!std.mem.eql(u8, b.data[i .. i + 4], &.{ 0x55, 0x8b, 0xec, 0xfc })) continue;
            if (b.state[i] != .unk) continue;
            var off = i;
            var ok = false;
            while (off < @min(i + 256, b.code_hi)) {
                const in = b.decodeAt(off) orelse break;
                if (in.flow == .ret or in.flow == .halt or in.opcode == 0xCC) {
                    ok = true;
                    break;
                }
                off += in.len;
            }
            if (ok) try b.root(i);
        }
    }

    /// A routine prologue right at the start of an undiscovered gap (after
    /// any padding) is a routine nothing reached directly.
    fn gapSeeds(b: *Bin) !void {
        while (true) {
            var found = false;
            var i = b.code_lo;
            while (i < b.code_hi) : (i += 1) {
                if (b.state[i] != .unk) continue;
                if (i > b.code_lo and b.state[i - 1] == .unk) continue;
                var p = i;
                while (p < b.code_hi and b.state[p] == .unk and (b.data[p] == 0 or b.data[p] == 0x90 or b.data[p] == 0xCC)) p += 1;
                if (p + 3 > b.code_hi or b.state[p] != .unk) continue;
                const prologue = std.mem.eql(u8, b.data[p .. p + 3], &.{ 0x55, 0x8b, 0xec });
                if (prologue or b.isCsav(p)) {
                    if (b.isCsav(p)) try b.csav.put(p, {});
                    try b.root(p);
                    found = true;
                }
            }
            if (!found) return;
            try b.run();
        }
    }

    // ── Signatures (Aztec runtime routines) ───────────────────────────

    fn matchSignatures(b: *Bin, sigs: []const Signature) !void {
        for (sigs) |sig| {
            var hits: u32 = 0;
            for (sig.bodies) |body| {
                if (body.bytes.len < 8) continue;
                var i = b.code_lo;
                while (i + body.bytes.len <= b.code_hi) : (i += 1) {
                    if (!body.matches(b.data[i .. i + body.bytes.len])) continue;
                    if (b.names.contains(i)) continue;
                    hits += 1;
                    const name = if (hits > 1) try std.fmt.allocPrint(b.gpa, "{s}_{d}", .{ sig.name, hits }) else sig.name;
                    try b.names.put(i, name);
                    try b.root(i);
                }
            }
        }
    }

    // ── Roots ─────────────────────────────────────────────────────────

    /// Routine roots: every direct call target and seed, plus a jump target
    /// that starts after a dead end and is only reached from other routines
    /// (a tail-jumped routine).
    pub fn finishRoots(b: *Bin) !void {
        var it = b.calls.keyIterator();
        while (it.next()) |k| try b.roots.put(k.*, {});
        const sorted = try b.sortedKeys(&b.roots);
        var jit = b.jumps.keyIterator();
        var promote: std.ArrayList(u32) = .empty;
        while (jit.next()) |k| {
            const t = k.*;
            if (b.roots.contains(t) or b.state[t] != .start) continue;
            if (!b.afterDeadEnd(t)) continue;
            // The routine around t, as it stands.
            const idx = std.sort.upperBound(u32, sorted, t, orderU32);
            const lo: u32 = if (idx > 0) sorted[idx - 1] else b.code_lo;
            const hi: u32 = if (idx < sorted.len) sorted[idx] else b.code_hi;
            var local = false;
            for (b.refs.items) |r| {
                if (r.dst == t and r.src >= lo and r.src < hi) {
                    local = true;
                    break;
                }
            }
            if (!local) try promote.append(b.gpa, t);
        }
        for (promote.items) |t| try b.roots.put(t, {});
    }

    fn afterDeadEnd(b: *const Bin, t: u32) bool {
        if (t == b.code_lo) return true;
        var p = t - 1;
        while (p > b.code_lo and b.state[p] == .cont) p -= 1;
        if (b.state[p] != .start) return true; // data or padding before it
        const in = b.insn[p].?;
        return switch (in.flow) {
            .ret, .halt, .jmp, .jmp_ind, .jmp_far => true,
            else => false,
        };
    }

    pub fn sortedKeys(b: *Bin, set: *Set) ![]u32 {
        const out = try b.gpa.alloc(u32, set.count());
        var it = set.keyIterator();
        var i: usize = 0;
        while (it.next()) |k| : (i += 1) out[i] = k.*;
        std.mem.sort(u32, out, {}, std.sort.asc(u32));
        return out;
    }
};

pub fn orderU32(a: u32, b: u32) std.math.Order {
    return std.math.order(a, b);
}

pub const Body = struct {
    bytes: []const u8,
    /// Per byte: true where a relocation makes the byte vary.
    mask: []const bool,

    fn matches(self: Body, got: []const u8) bool {
        for (self.bytes, self.mask, got) |want, skip, g| {
            if (!skip and want != g) return false;
        }
        return true;
    }
};

pub const Signature = struct {
    name: []const u8,
    bodies: []Body,
};

fn parseHexBytes(gpa: Allocator, s: []const u8) ![]u8 {
    var out: std.ArrayList(u8) = .empty;
    var it = std.mem.tokenizeScalar(u8, s, ' ');
    while (it.next()) |t| try out.append(gpa, try std.fmt.parseInt(u8, t, 16));
    return out.items;
}

/// The Aztec C86 v4.2b runtime signatures (``.cache/DSAVANT/aztec_funcs.json``).
pub fn loadSignatures(gpa: Allocator, text: []const u8) ![]Signature {
    const parsed = try std.json.parseFromSliceLeaky(std.json.Value, gpa, text, .{});
    var out: std.ArrayList(Signature) = .empty;
    for (parsed.object.get("signatures").?.array.items) |s| {
        const o = s.object;
        var bodies: std.ArrayList(Body) = .empty;
        if (o.get("bodies")) |bs| for (bs.array.items) |bv| {
            const bytes = try parseHexBytes(gpa, bv.object.get("bytes").?.string);
            const mask = try gpa.alloc(bool, bytes.len);
            @memset(mask, false);
            if (bv.object.get("relocs")) |rs| for (rs.array.items) |r| {
                const at: usize = @intCast(r.array.items[0].integer);
                const w: usize = @intCast(r.array.items[1].integer);
                for (at..@min(at + w, bytes.len)) |k| mask[k] = true;
            };
            try bodies.append(gpa, .{ .bytes = bytes, .mask = mask });
        };
        try out.append(gpa, .{ .name = o.get("name").?.string, .bodies = bodies.items });
    }
    return out.items;
}
