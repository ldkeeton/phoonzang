//! NASM spelling of a decoded instruction.  Every size keyword is decided
//! from the encoding alone, so the text reassembles (``nasm -O0``) to the
//! same bytes; names come from a presymbolized ``symbols.Table``.  An encoding
//! NASM writes differently is still spelled as decoded: its ``Insn.facts``
//! say so, and the caller decides whether to render it as code at all.

const std = @import("std");
const decode = @import("decode.zig");
const symbols = @import("symbols.zig");

const Insn = decode.Insn;
const Operand = decode.Operand;
const Allocator = std.mem.Allocator;
const Buf = std.ArrayList(u8);

/// Decimal below 10, otherwise ``0x`` + unpadded hex.
pub fn num(out: *Buf, gpa: Allocator, v: u32) !void {
    if (v < 10) try out.print(gpa, "{d}", .{v}) else try out.print(gpa, "0x{x}", .{v});
}

fn signedNum(out: *Buf, gpa: Allocator, v: i32) !void {
    if (v < 0) try out.append(gpa, '-');
    try num(out, gpa, @abs(v));
}

fn ref(out: *Buf, gpa: Allocator, r: symbols.Ref) !void {
    try out.appendSlice(gpa, r.name);
    if (r.off != 0) {
        try out.appendSlice(gpa, " + ");
        try num(out, gpa, r.off);
    }
}

pub const Site = struct {
    syms: *const symbols.Table,
    /// File offset (hint key) and cs offset (scope key) of the instruction.
    at: u32,
    cs: u32,

    /// Name for operand *i* (value *v*), looked up in its hinted space or *default*.
    fn name(s: Site, i: usize, v: u16, default: decode.Space) ?symbols.Ref {
        return s.syms.lookup(s.syms.space(s.at, @intCast(i), default), v, s.cs);
    }
};

fn mem(out: *Buf, gpa: Allocator, s: Site, in: *const Insn, i: usize, m: *const Operand) !void {
    if (m.far) {
        try out.appendSlice(gpa, "far ");
    } else switch (m.size) {
        1 => try out.appendSlice(gpa, "byte "),
        2 => try out.appendSlice(gpa, "word "),
        4 => try out.appendSlice(gpa, "dword "),
        8 => try out.appendSlice(gpa, "qword "),
        10 => try out.appendSlice(gpa, "tword "),
        else => {},
    }
    try out.append(gpa, '[');
    const seg_name: ?[]const u8 = if (in.segment()) |sg| decode.sreg[sg] else null;
    if (m.reg == decode.addr32) return mem32(out, gpa, seg_name, m);
    if (m.reg == decode.direct) {
        // NASM picks moffs/disp16 itself for a bare address.
        if (seg_name) |sn| try out.print(gpa, "{s}:", .{sn});
        if (s.name(i, m.value, m.space)) |r| try ref(out, gpa, r) else try num(out, gpa, m.value);
        try out.append(gpa, ']');
        return;
    }
    const v: i32 = @as(i16, @bitCast(m.value));
    const natural: u8 = if (m.enc_size == 0 or (v == 0 and m.reg != 6)) 0 else if (v >= -128 and v <= 127) 1 else 2;
    // NASM drops a zero displacement and shortens one that fits a byte; spell
    // the encoded size when it differs.
    if (m.enc_size != natural) try out.appendSlice(gpa, if (m.enc_size == 1) "byte " else "word ");
    if (seg_name) |sn| try out.print(gpa, "{s}:", .{sn});
    try out.appendSlice(gpa, decode.rm_base[m.reg]);
    if (m.enc_size == 0) {
        try out.append(gpa, ']');
        return;
    }
    // Only a word displacement can be an address.
    if (m.enc_size == 2) if (s.name(i, m.value, m.space)) |r| {
        try out.appendSlice(gpa, " + ");
        try ref(out, gpa, r);
        try out.append(gpa, ']');
        return;
    };
    try out.appendSlice(gpa, if (v < 0) " - " else " + ");
    try num(out, gpa, @abs(v));
    try out.append(gpa, ']');
}

/// ``[seg:base + index*scale + disp]`` for 32-bit addressing (after the ``[``).
fn mem32(out: *Buf, gpa: Allocator, seg_name: ?[]const u8, m: *const Operand) !void {
    const v: i32 = @bitCast(m.value32());
    if (m.base == decode.no_reg) {
        // No base: always a disp32; ``nosplit`` keeps NASM from turning
        // ``eax*2`` into ``eax+eax``.
        try out.appendSlice(gpa, if (m.index == decode.no_reg) "dword " else "nosplit ");
    } else {
        const natural: u8 = if (v == 0 and m.base != 5) 0 else if (v >= -128 and v <= 127) 1 else 4;
        if (m.enc_size != natural) try out.appendSlice(gpa, if (m.enc_size == 1) "byte " else "dword ");
    }
    if (seg_name) |sn| try out.print(gpa, "{s}:", .{sn});
    var first = true;
    if (m.base != decode.no_reg) {
        try out.appendSlice(gpa, decode.reg32[m.base]);
        first = false;
    }
    if (m.index != decode.no_reg) {
        if (!first) try out.append(gpa, '+');
        try out.appendSlice(gpa, decode.reg32[m.index]);
        if (m.scale != 0) try out.print(gpa, "*{d}", .{@as(u8, 1) << @intCast(m.scale)});
        first = false;
    }
    if (first) {
        try num(out, gpa, m.value32());
    } else if (m.enc_size != 0 or m.base == decode.no_reg) {
        try out.appendSlice(gpa, if (v < 0) " - " else " + ");
        try num(out, gpa, @abs(v));
    }
    try out.append(gpa, ']');
}

/// Mnemonics whose spelling already carries the operand size.
fn sizedName(m: decode.Mnem) bool {
    return switch (m) {
        .pushad, .popad, .pushfd, .popfd, .cwde, .cdq, .iretd, .movsd, .cmpsd, .stosd, .lodsd, .scasd, .insd, .outsd => true,
        else => false,
    };
}

/// Append the NASM text of *in* (no indent, no comment).
pub fn insn(out: *Buf, gpa: Allocator, s: Site, in: *const Insn) !void {
    if (in.lock) try out.appendSlice(gpa, "lock ");
    if (in.rep != 0) {
        const cmp = switch (in.mnem) {
            .cmpsb, .cmpsw, .cmpsd, .scasb, .scasw, .scasd => true,
            else => false,
        };
        try out.appendSlice(gpa, if (in.rep == 0xF2) "repne " else if (cmp) "repe " else "rep ");
    }
    if (in.memOp() == null) if (in.segment()) |sg| try out.print(gpa, "{s} ", .{decode.sreg[sg]});
    const far_ptr = in.nops > 0 and in.ops[0].kind == .far;
    if (in.osize and !sizedName(in.mnem) and !far_ptr) try out.appendSlice(gpa, "o32 ");
    const loop32 = in.asize and switch (in.mnem) {
        .loop, .loope, .loopne => true,
        else => false,
    };
    if (in.asize and !loop32 and in.mnem != .jecxz) try out.appendSlice(gpa, "a32 ");
    try out.appendSlice(gpa, @tagName(in.mnem));
    // ``fadd st0, stN`` is ambiguous for st0, st0 (NASM picks DC); the
    // one-operand form always means D8.
    const first: usize = if (in.escape == 0 and in.opcode == 0xD8 and in.nops == 2) 1 else 0;
    for (in.ops[first..in.nops], first..) |*op, i| {
        try out.appendSlice(gpa, if (i == first) " " else ", ");
        switch (op.kind) {
            .reg8 => try out.appendSlice(gpa, decode.reg8[op.reg]),
            .reg16 => try out.appendSlice(gpa, decode.reg16[op.reg]),
            .reg32 => try out.appendSlice(gpa, decode.reg32[op.reg]),
            .sreg => try out.appendSlice(gpa, decode.sreg[op.reg]),
            .creg => try out.print(gpa, "cr{d}", .{op.reg}),
            .dreg => try out.print(gpa, "dr{d}", .{op.reg}),
            .treg => try out.print(gpa, "tr{d}", .{op.reg}),
            .st => try out.print(gpa, "st{d}", .{op.reg}),
            .one => try out.append(gpa, '1'),
            .cl => try out.appendSlice(gpa, "cl"),
            .dx => try out.appendSlice(gpa, "dx"),
            .mem => try mem(out, gpa, s, in, i, op),
            .far => {
                if (op.enc_size == 6) try out.appendSlice(gpa, "dword ");
                try num(out, gpa, op.seg);
                try out.append(gpa, ':');
                try num(out, gpa, op.value32());
            },
            .imm => {
                if (op.sext) {
                    try out.appendSlice(gpa, "byte ");
                    try signedNum(out, gpa, if (op.size == 4) @bitCast(op.value32()) else @as(i16, @bitCast(op.value)));
                    continue;
                }
                if (in.mnem == .push) try out.appendSlice(gpa, if (op.size == 4) "dword " else "word ");
                if (op.enc_size == 4) {
                    try num(out, gpa, op.value32());
                    continue;
                }
                const r = if (op.enc_size == 2) s.name(i, op.value, .none) else null;
                if (r) |x| try ref(out, gpa, x) else try num(out, gpa, op.value);
            },
            .rel => {
                // Only jmp/jcc take ``short`` (NASM -O0 would pick near).
                if (op.enc_size == 1 and in.escape == 0 and (in.opcode == 0xEB or (in.opcode >= 0x70 and in.opcode <= 0x7F))) try out.appendSlice(gpa, "short ");
                if (op.enc_size == 4) {
                    try out.appendSlice(gpa, "dword ");
                    try num(out, gpa, op.value32());
                    continue;
                }
                if (in.escape == 0x0F) try out.appendSlice(gpa, "near ");
                if (s.name(i, op.value, op.space)) |r| try ref(out, gpa, r) else try num(out, gpa, op.value);
            },
            .none => {},
        }
    }
    if (loop32) try out.appendSlice(gpa, ", ecx");
}
