//! deziggler: 16-bit x86 decoding (8086 through 486, x87) plus NASM spelling
//! that reassembles to the same bytes.  Two phases, two big calls:
//!
//! 1. ``decodeAll`` decodes every byte offset of the code range, so a caller
//!    can discover code without calling back in.
//! 2. ``setSymbols`` once, then ``render(starts)`` gives one NASM line per
//!    instruction start.
//!
//! Names are data the caller builds up front (per-space range tables, scopes
//! and operand hints); deziggler applies them mechanically.

const std = @import("std");
pub const decoder = @import("decode.zig");
pub const symbols = @import("symbols.zig");
pub const format = @import("format.zig");

pub const Space = decoder.Space;
pub const Flow = decoder.Flow;
pub const Kind = decoder.Kind;
pub const Mnem = decoder.Mnem;
pub const Geometry = decoder.Geometry;
pub const Operand = decoder.Operand;
pub const Insn = decoder.Insn;
pub const Isa = decoder.Isa;
pub const Facts = decoder.Facts;
pub const Symbol = symbols.Symbol;
pub const Scope = symbols.Scope;
pub const Hint = symbols.Hint;

pub const reg8 = decoder.reg8;
pub const reg16 = decoder.reg16;
pub const reg32 = decoder.reg32;
pub const sreg = decoder.sreg;
pub const direct = decoder.direct;
pub const addr32 = decoder.addr32;
pub const no_reg = decoder.no_reg;

pub const decode = decoder.decode;
pub const mnemonicName = decoder.mnemonicName;

const Allocator = std.mem.Allocator;

pub const Ctx = struct {
    gpa: Allocator,
    bytes: []const u8,
    geom: Geometry,
    all: ?[]Insn = null,
    syms: symbols.Table = .{},
    text: std.ArrayList(u8) = .empty,

    pub fn init(gpa: Allocator, bytes: []const u8, geom: Geometry) !*Ctx {
        const c = try gpa.create(Ctx);
        errdefer gpa.destroy(c);
        c.* = .{ .gpa = gpa, .bytes = try gpa.dupe(u8, bytes), .geom = geom };
        return c;
    }

    pub fn deinit(c: *Ctx) void {
        const gpa = c.gpa;
        gpa.free(c.bytes);
        if (c.all) |a| gpa.free(a);
        c.syms.deinit(gpa);
        c.text.deinit(gpa);
        gpa.destroy(c);
    }

    /// One record per byte offset of the code range: index = file offset -
    /// ``code_lo``; ``len == 0`` where nothing decodes.
    pub fn decodeAll(c: *Ctx) ![]const Insn {
        if (c.all) |a| return a;
        const lo = c.geom.code_lo;
        const hi = @max(lo, @min(c.geom.code_hi, @as(u32, @intCast(c.bytes.len))));
        const a = try c.gpa.alloc(Insn, hi - lo);
        for (a, lo..) |*in, at| in.* = decoder.decode(c.bytes, @intCast(at), c.geom);
        c.all = a;
        return a;
    }

    /// Replace the name tables (*pool* holds every name's text).
    pub fn setSymbols(c: *Ctx, pool: []const u8, syms: []const Symbol, scopes: []const Scope, hints: []const Hint) !void {
        const t = try symbols.Table.init(c.gpa, pool, syms, scopes, hints);
        c.syms.deinit(c.gpa);
        c.syms = t;
    }

    /// NASM text for the instruction at each file offset in *starts*,
    /// ``'\n'``-joined (line i <-> starts[i]).  An offset where nothing
    /// decodes is spelled as a ``db`` of its byte.  Owned by *c* until the
    /// next ``render``.
    pub fn render(c: *Ctx, starts: []const u32) ![]const u8 {
        const all = try c.decodeAll();
        const gpa = c.gpa;
        c.text.clearRetainingCapacity();
        for (starts, 0..) |at, i| {
            if (i > 0) try c.text.append(gpa, '\n');
            const in = if (at >= c.geom.code_lo and at - c.geom.code_lo < all.len)
                all[at - c.geom.code_lo]
            else
                decoder.decode(c.bytes, at, c.geom);
            if (in.len == 0) {
                try c.text.appendSlice(gpa, "db ");
                try format.num(&c.text, gpa, if (at < c.bytes.len) c.bytes[at] else 0);
                continue;
            }
            const cs: u16 = @truncate(@as(u64, @bitCast(@as(i64, at) + c.geom.bias)));
            try format.insn(&c.text, gpa, .{ .syms = &c.syms, .at = at, .cs = cs }, &in);
        }
        return c.text.items;
    }
};

test {
    _ = decoder;
    _ = symbols;
}

test "render" {
    const c = try Ctx.init(std.testing.allocator, &.{ 0x89, 0x46, 0xfe, 0xE8, 0xFA, 0xFF, 0x2E, 0xFF, 0x2E, 0x04, 0x01 }, .{ .code_lo = 0, .code_hi = 11, .bias = 0x100 });
    defer c.deinit();
    const pool = "mainmain.l1vec";
    try c.setSymbols(pool, &.{
        .{ .space = .cs, .start_only = true, .start = 0x100, .end = 0x101, .name = 0, .name_len = 4 },
        .{ .space = .cs, .start_only = false, .start = 0x0ff, .end = 0x110, .name = 11, .name_len = 3 },
    }, &.{.{ .start = 0x100, .end = 0x10b, .name = 0, .name_len = 4 }}, &.{});
    try std.testing.expectEqualStrings(
        "mov word [bp - 2], ax\ncall main\njmp far [cs:vec + 5]",
        try c.render(&.{ 0, 3, 6 }),
    );
}
