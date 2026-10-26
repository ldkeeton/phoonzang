//! Presymbolized names: per-space range tables, routine scopes for local
//! labels, and operand hints.  Lookups are mechanical; every naming rule
//! stays with the caller that built the tables.

const std = @import("std");
const decode = @import("decode.zig");

const Space = decode.Space;
const Allocator = std.mem.Allocator;

pub const Symbol = extern struct {
    space: Space,
    /// No ``name + off`` for addresses inside ``[start, end)``.
    start_only: bool,
    start: u32,
    end: u32,
    /// Slice of the string pool.
    name: u32,
    name_len: u32,
};

/// A routine's ``[start, end)`` range in cs: ``<name>.x`` labels referenced
/// from inside it, at addresses inside it, are spelled ``.x``.
pub const Scope = extern struct { start: u32, end: u32, name: u32, name_len: u32 };

/// Look operand *operand* of the instruction at file offset *at* up in
/// *space* instead of its default; ``.none`` forces a number.
pub const Hint = extern struct { at: u32, operand: u8, space: Space };

/// A resolved name: ``name`` or ``name + off``.
pub const Ref = struct { name: []const u8, off: u32 = 0 };

const Entry = struct { start: u32, end: u32, name: []const u8 };

pub const Table = struct {
    pool: []const u8 = "",
    /// Per space: every symbol by start (exact matches), and the ranges.
    starts: [6][]Entry = @splat(&.{}),
    ranges: [6][]Entry = @splat(&.{}),
    scopes: []Entry = &.{},
    hints: std.AutoHashMapUnmanaged(u64, Space) = .empty,

    pub fn init(gpa: Allocator, pool: []const u8, syms: []const Symbol, scopes: []const Scope, hints: []const Hint) !Table {
        var t = Table{ .pool = try gpa.dupe(u8, pool) };
        errdefer t.deinit(gpa);
        var starts: [6]std.ArrayList(Entry) = @splat(.empty);
        var ranges: [6]std.ArrayList(Entry) = @splat(.empty);
        defer for (&starts, &ranges) |*s, *r| {
            s.deinit(gpa);
            r.deinit(gpa);
        };
        for (syms) |s| {
            const sp = @intFromEnum(s.space);
            if (sp >= 6 or s.space == .none) continue;
            const e = Entry{ .start = s.start, .end = s.end, .name = try t.str(s.name, s.name_len) };
            try starts[sp].append(gpa, e);
            if (!s.start_only and s.end > s.start + 1) try ranges[sp].append(gpa, e);
        }
        for (0..6) |sp| {
            std.sort.insertion(Entry, starts[sp].items, {}, byStart);
            std.sort.insertion(Entry, ranges[sp].items, {}, byStart);
            t.starts[sp] = try starts[sp].toOwnedSlice(gpa);
            t.ranges[sp] = try ranges[sp].toOwnedSlice(gpa);
        }
        const sc = try gpa.alloc(Entry, scopes.len);
        t.scopes = sc;
        for (scopes, sc) |s, *e| e.* = .{ .start = s.start, .end = s.end, .name = try t.str(s.name, s.name_len) };
        std.sort.insertion(Entry, sc, {}, byStart);
        for (hints) |h| try t.hints.put(gpa, hintKey(h.at, h.operand), h.space);
        return t;
    }

    pub fn deinit(t: *Table, gpa: Allocator) void {
        gpa.free(t.pool);
        for (t.starts, t.ranges) |s, r| {
            gpa.free(s);
            gpa.free(r);
        }
        gpa.free(t.scopes);
        t.hints.deinit(gpa);
        t.* = .{};
    }

    fn str(t: *const Table, at: u32, len: u32) ![]const u8 {
        if (@as(u64, at) + len > t.pool.len) return error.BadPoolSlice;
        return t.pool[at..][0..len];
    }

    fn byStart(_: void, a: Entry, b: Entry) bool {
        return a.start < b.start;
    }

    fn hintKey(at: u32, operand: u8) u64 {
        return (@as(u64, at) << 8) | operand;
    }

    /// The space operand *operand* of the instruction at *at* is looked up in.
    pub fn space(t: *const Table, at: u32, operand: u8, default: Space) Space {
        return t.hints.get(hintKey(at, operand)) orelse default;
    }

    /// Name for *addr* in *sp*, spelled from cs offset *from*: an exact start,
    /// else inside a range, else null.
    pub fn lookup(t: *const Table, sp: Space, addr: u32, from: u32) ?Ref {
        if (sp == .none) return null;
        const i = @intFromEnum(sp);
        const r: Ref = blk: {
            if (find(t.starts[i], addr)) |e| if (e.start == addr) break :blk .{ .name = e.name };
            if (find(t.ranges[i], addr)) |e| if (addr < e.end) break :blk .{ .name = e.name, .off = addr - e.start };
            return null;
        };
        if (sp != .cs) return r;
        // A label of the routine the reference sits in, inside that routine.
        const s = find(t.scopes, from) orelse return r;
        if (from >= s.end or addr < s.start or addr >= s.end) return r;
        const n = r.name;
        if (n.len > s.name.len + 1 and std.mem.startsWith(u8, n, s.name) and n[s.name.len] == '.')
            return .{ .name = n[s.name.len..], .off = r.off };
        return r;
    }

    /// The first entry with the greatest start <= *addr*.
    fn find(es: []const Entry, addr: u32) ?*const Entry {
        var i = std.sort.upperBound(Entry, es, addr, struct {
            fn cmp(key: u32, e: Entry) std.math.Order {
                return std.math.order(key, e.start);
            }
        }.cmp);
        if (i == 0) return null;
        i -= 1;
        while (i > 0 and es[i - 1].start == es[i].start) i -= 1;
        return &es[i];
    }
};

test "lookup" {
    const gpa = std.testing.allocator;
    const pool = "tablefnfn.l3";
    var t = try Table.init(gpa, pool, &.{
        .{ .space = .ds, .start_only = false, .start = 0x100, .end = 0x110, .name = 0, .name_len = 5 },
        .{ .space = .cs, .start_only = true, .start = 0x10, .end = 0x11, .name = 5, .name_len = 2 },
        .{ .space = .cs, .start_only = true, .start = 0x14, .end = 0x15, .name = 7, .name_len = 5 },
    }, &.{.{ .start = 0x10, .end = 0x20, .name = 5, .name_len = 2 }}, &.{});
    defer t.deinit(gpa);
    try std.testing.expectEqualStrings("table", t.lookup(.ds, 0x100, 0).?.name);
    try std.testing.expectEqual(@as(u32, 4), t.lookup(.ds, 0x104, 0).?.off);
    try std.testing.expect(t.lookup(.ds, 0x110, 0) == null);
    try std.testing.expectEqualStrings(".l3", t.lookup(.cs, 0x14, 0x12).?.name);
    try std.testing.expectEqualStrings("fn.l3", t.lookup(.cs, 0x14, 0x30).?.name);
}
