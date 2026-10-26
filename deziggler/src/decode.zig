//! 8086 (plus the 186 additions) instruction decoder.
//!
//! Decodes one instruction into mnemonic, operands and the encoding facts a
//! formatter needs to spell it in NASM syntax (displacement/immediate sizes
//! and where they sit).  No x87: ESC opcodes decode as invalid.

const std = @import("std");

pub const reg8 = [_][]const u8{ "al", "cl", "dl", "bl", "ah", "ch", "dh", "bh" };
pub const reg16 = [_][]const u8{ "ax", "cx", "dx", "bx", "sp", "bp", "si", "di" };
pub const sreg = [_][]const u8{ "es", "cs", "ss", "ds" };
/// ModRM r/m base spellings (index 6 is ``bp``; ``rm == direct`` is ``[disp16]``).
pub const rm_base = [_][]const u8{ "bx+si", "bx+di", "bp+si", "bp+di", "si", "di", "bp", "bx" };
pub const direct: u8 = 8;
pub const no_seg: u8 = 0xff;

/// Address spaces names live in.  ``ext`` is free for a caller's own use.
pub const Space = enum(u8) { none, cs, ds, ss, es, ext };
pub const Flow = enum(u8) { seq, jmp, jcc, call, ret, jmp_ind, call_ind, jmp_far, call_far, halt };
pub const Kind = enum(u8) { none, reg8, reg16, sreg, imm, mem, rel, far, one, cl, dx };

pub const Mnem = enum(u8) {
    none,
    // zig fmt: off
    add, @"or", adc, sbb, @"and", sub, xor, cmp,
    rol, ror, rcl, rcr, shl, shr, sar,
    jo, jno, jb, jae, je, jne, jbe, ja, js, jns, jp, jnp, jl, jge, jle, jg,
    aaa, aad, aam, aas, call, cbw, clc, cld, cli, cmc, cmpsb, cmpsw, cwd, daa, das,
    dec, div, enter, hlt, idiv, imul, in, inc, insb, insw, int, int3, into, iret,
    jcxz, jmp, lahf, lds, lea, leave, les, lodsb, lodsw, loop, loope, loopne, mov,
    movsb, movsw, mul, neg, nop, not, out, outsb, outsw, pop, popa, popf, push,
    pusha, pushf, ret, retf, sahf, scasb, scasw, stc, std, sti, stosb, stosw,
    @"test", wait, xchg, xlatb,
    // zig fmt: on

    pub fn isString(m: Mnem) bool {
        return switch (m) {
            .movsb, .movsw, .cmpsb, .cmpsw, .stosb, .stosw, .lodsb, .lodsw, .scasb, .scasw => true,
            else => false,
        };
    }
};

pub fn mnemonicName(id: u8) []const u8 {
    const m = std.enums.fromInt(Mnem, id) orelse return "";
    return if (m == .none) "" else @tagName(m);
}

/// Where a file's bytes sit in the code segment.
pub const Geometry = extern struct {
    /// File range ``[code_lo, code_hi)`` to decode.
    code_lo: u32,
    code_hi: u32,
    /// ``cs_offset = file_offset + bias``.
    bias: i32,
};

pub const Operand = extern struct {
    kind: Kind = .none,
    /// 1, 2, or 4 (far mem); 0 = untyped memory (lea/les/lds).
    size: u8 = 0,
    /// Register index; mem: r/m 0-7, or ``direct``.
    reg: u8 = 0,
    /// mem: displacement bytes as encoded (0/1/2); imm/rel: 1 or 2.
    enc_size: u8 = 0,
    /// imm8 sign-extended to a word operand (83 /x, 6A, 6B).
    sext: bool = false,
    /// mem/rel: the default space (prefix, ``bp`` base -> ss, else ds; rel -> cs).
    space: Space = .none,
    /// imm value, mem displacement, rel absolute target, or far offset.
    value: u16 = 0,
    /// far: segment word.
    seg: u16 = 0,
};

pub const Insn = extern struct {
    /// 0 = not decodable here.
    len: u8 = 0,
    mnem: Mnem = .none,
    flow: Flow = .seq,
    nops: u8 = 0,
    /// Segment override prefix as an sreg index, ``no_seg`` if none.
    seg_prefix: u8 = no_seg,
    rep: u8 = 0, // 0xF2 / 0xF3
    lock: bool = false,
    opcode: u8 = 0,
    /// Offset of the opcode byte (number of prefix bytes).
    op_at: u8 = 0,
    /// Offsets of the displacement and immediate fields within the instruction.
    disp_off: u8 = 0,
    imm_off: u8 = 0,
    imm_size: u8 = 0,
    /// Absolute cs target of a rel flow.
    target: u16 = 0,
    ops: [3]Operand = .{ .{}, .{}, .{} },

    pub fn segment(self: *const Insn) ?u8 {
        return if (self.seg_prefix == no_seg) null else self.seg_prefix;
    }

    pub fn memOp(self: *const Insn) ?*const Operand {
        for (self.ops[0..self.nops]) |*op| if (op.kind == .mem) return op;
        return null;
    }
};

const alu = [_]Mnem{ .add, .@"or", .adc, .sbb, .@"and", .sub, .xor, .cmp };
const shifts = [_]?Mnem{ .rol, .ror, .rcl, .rcr, .shl, .shr, null, .sar };
const jccs = [_]Mnem{ .jo, .jno, .jb, .jae, .je, .jne, .jbe, .ja, .js, .jns, .jp, .jnp, .jl, .jge, .jle, .jg };

const Reader = struct {
    b: []const u8,
    i: usize = 0,
    fn u8_(r: *Reader) ?u8 {
        if (r.i >= r.b.len) return null;
        r.i += 1;
        return r.b[r.i - 1];
    }
    fn u16_(r: *Reader) ?u16 {
        const lo = r.u8_() orelse return null;
        const hi = r.u8_() orelse return null;
        return @as(u16, lo) | (@as(u16, hi) << 8);
    }
};

const ModRM = struct { mod: u8, reg: u8, rm: u8 };

fn sext8(v: u8) u16 {
    return @bitCast(@as(i16, @as(i8, @bitCast(v))));
}

/// Decode the instruction at file offset *at* of *bytes* (``len == 0`` when
/// invalid or truncated).  Decoding never reads past ``geom.code_hi``.
pub fn decode(bytes: []const u8, at: u32, geom: Geometry) Insn {
    if (at >= bytes.len) return .{};
    const hi = if (at < geom.code_hi) @min(geom.code_hi, bytes.len) else bytes.len;
    var in = decodeRaw(bytes[at..@min(at + 8, hi)]) orelse return .{};
    const cs: u16 = @truncate(@as(u64, @bitCast(@as(i64, at) + geom.bias)));
    for (in.ops[0..in.nops]) |*op| switch (op.kind) {
        .rel => {
            op.value = cs +% in.len +% op.value;
            op.space = .cs;
            in.target = op.value;
        },
        .mem => op.space = if (in.segment()) |s|
            ([_]Space{ .es, .cs, .ss, .ds })[s]
        else if (op.reg == 2 or op.reg == 3 or op.reg == 6)
            .ss
        else
            .ds,
        else => {},
    };
    return in;
}

/// Decode the instruction at the start of *b*; rel operands hold their raw
/// displacement.  Null when invalid or truncated.
fn decodeRaw(b: []const u8) ?Insn {
    var r = Reader{ .b = b };
    var in = Insn{};
    // Prefixes
    while (true) {
        const p = if (r.i < b.len) b[r.i] else return null;
        switch (p) {
            0x26, 0x2E, 0x36, 0x3E => {
                if (in.seg_prefix != no_seg) return null;
                in.seg_prefix = (p >> 3) & 3;
            },
            0xF2, 0xF3 => {
                if (in.rep != 0) return null;
                in.rep = p;
            },
            0xF0 => {
                if (in.lock) return null;
                in.lock = true;
            },
            else => break,
        }
        r.i += 1;
    }
    in.op_at = @intCast(r.i);
    const op = r.u8_() orelse return null;
    in.opcode = op;

    var modrm: ModRM = undefined;
    const C = struct {
        fn readModrm(rd: *Reader, m: *ModRM) ?void {
            const x = rd.u8_() orelse return null;
            m.* = .{ .mod = x >> 6, .reg = (x >> 3) & 7, .rm = x & 7 };
            return {};
        }
        /// The r/m operand (register when mod == 3).
        fn rmOp(rd: *Reader, insn: *Insn, m: ModRM, size: u8) ?Operand {
            if (m.mod == 3) {
                return switch (size) {
                    1 => .{ .kind = .reg8, .reg = m.rm },
                    2 => .{ .kind = .reg16, .reg = m.rm },
                    else => null, // lea/les/far ptr need memory
                };
            }
            var o = Operand{ .kind = .mem, .size = size, .reg = m.rm };
            if (m.mod == 0 and m.rm == 6) {
                o.reg = direct;
                insn.disp_off = @intCast(rd.i);
                o.value = rd.u16_() orelse return null;
                o.enc_size = 2;
            } else if (m.mod == 1) {
                insn.disp_off = @intCast(rd.i);
                o.value = sext8(rd.u8_() orelse return null);
                o.enc_size = 1;
            } else if (m.mod == 2) {
                insn.disp_off = @intCast(rd.i);
                o.value = rd.u16_() orelse return null;
                o.enc_size = 2;
            }
            return o;
        }
        fn imm(rd: *Reader, insn: *Insn, size: u8) ?Operand {
            insn.imm_off = @intCast(rd.i);
            insn.imm_size = size;
            const v = (if (size == 1) @as(?u16, rd.u8_() orelse return null) else rd.u16_()) orelse return null;
            return .{ .kind = .imm, .value = v, .size = size, .enc_size = size };
        }
        fn immSext(rd: *Reader, insn: *Insn) ?Operand {
            insn.imm_off = @intCast(rd.i);
            insn.imm_size = 1;
            return .{ .kind = .imm, .value = sext8(rd.u8_() orelse return null), .size = 2, .enc_size = 1, .sext = true };
        }
        fn regOp(size: u8, idx: u8) Operand {
            return if (size == 1) .{ .kind = .reg8, .reg = idx, .size = 1 } else .{ .kind = .reg16, .reg = idx, .size = 2 };
        }
        fn rel8(rd: *Reader) ?Operand {
            return .{ .kind = .rel, .value = sext8(rd.u8_() orelse return null), .size = 2, .enc_size = 1 };
        }
    };

    switch (op) {
        // ALU block: add/or/adc/sbb/and/sub/xor/cmp
        0x00...0x05, 0x08...0x0D, 0x10...0x15, 0x18...0x1D, 0x20...0x25, 0x28...0x2D, 0x30...0x35, 0x38...0x3D => {
            in.mnem = alu[op >> 3];
            const form = op & 7;
            const size: u8 = if (form & 1 == 0) 1 else 2;
            switch (form) {
                0, 1 => {
                    C.readModrm(&r, &modrm) orelse return null;
                    in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
                    in.ops[1] = C.regOp(size, modrm.reg);
                },
                2, 3 => {
                    C.readModrm(&r, &modrm) orelse return null;
                    in.ops[0] = C.regOp(size, modrm.reg);
                    in.ops[1] = C.rmOp(&r, &in, modrm, size) orelse return null;
                },
                else => {
                    in.ops[0] = C.regOp(size, 0);
                    in.ops[1] = C.imm(&r, &in, size) orelse return null;
                },
            }
            in.nops = 2;
        },
        0x06, 0x0E, 0x16, 0x1E => {
            in.mnem = .push;
            in.ops[0] = .{ .kind = .sreg, .reg = op >> 3, .size = 2 };
            in.nops = 1;
        },
        0x07, 0x17, 0x1F => {
            in.mnem = .pop;
            in.ops[0] = .{ .kind = .sreg, .reg = op >> 3, .size = 2 };
            in.nops = 1;
        },
        0x27 => in.mnem = .daa,
        0x2F => in.mnem = .das,
        0x37 => in.mnem = .aaa,
        0x3F => in.mnem = .aas,
        0x40...0x47 => {
            in.mnem = .inc;
            in.ops[0] = C.regOp(2, op & 7);
            in.nops = 1;
        },
        0x48...0x4F => {
            in.mnem = .dec;
            in.ops[0] = C.regOp(2, op & 7);
            in.nops = 1;
        },
        0x50...0x57 => {
            in.mnem = .push;
            in.ops[0] = C.regOp(2, op & 7);
            in.nops = 1;
        },
        0x58...0x5F => {
            in.mnem = .pop;
            in.ops[0] = C.regOp(2, op & 7);
            in.nops = 1;
        },
        0x60 => in.mnem = .pusha,
        0x61 => in.mnem = .popa,
        0x68 => {
            in.mnem = .push;
            in.ops[0] = C.imm(&r, &in, 2) orelse return null;
            in.nops = 1;
        },
        0x6A => {
            in.mnem = .push;
            in.ops[0] = C.immSext(&r, &in) orelse return null;
            in.nops = 1;
        },
        0x69, 0x6B => {
            in.mnem = .imul;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(2, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, 2) orelse return null;
            in.ops[2] = (if (op == 0x69) C.imm(&r, &in, 2) else C.immSext(&r, &in)) orelse return null;
            in.nops = 3;
        },
        0x6C => in.mnem = .insb,
        0x6D => in.mnem = .insw,
        0x6E => in.mnem = .outsb,
        0x6F => in.mnem = .outsw,
        0x70...0x7F => {
            in.mnem = jccs[op & 15];
            in.ops[0] = C.rel8(&r) orelse return null;
            in.nops = 1;
            in.imm_off = 1;
            in.imm_size = 1;
            in.flow = .jcc;
        },
        0x80...0x83 => {
            C.readModrm(&r, &modrm) orelse return null;
            in.mnem = alu[modrm.reg];
            const size: u8 = if (op & 1 == 0) 1 else 2;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.ops[1] = (if (op == 0x81) C.imm(&r, &in, 2) else if (op == 0x83) C.immSext(&r, &in) else C.imm(&r, &in, 1)) orelse return null;
            in.nops = 2;
        },
        0x84, 0x85, 0x86, 0x87 => {
            in.mnem = if (op < 0x86) .@"test" else .xchg;
            const size: u8 = if (op & 1 == 0) 1 else 2;
            C.readModrm(&r, &modrm) orelse return null;
            const rm = C.rmOp(&r, &in, modrm, size) orelse return null;
            const rg = C.regOp(size, modrm.reg);
            // NASM puts the reg field first for a register xchg.
            if (op >= 0x86 and modrm.mod == 3) {
                in.ops[0] = rg;
                in.ops[1] = rm;
            } else {
                in.ops[0] = rm;
                in.ops[1] = rg;
            }
            in.nops = 2;
        },
        0x88...0x8B => {
            in.mnem = .mov;
            const size: u8 = if (op & 1 == 0) 1 else 2;
            C.readModrm(&r, &modrm) orelse return null;
            const rm = C.rmOp(&r, &in, modrm, size) orelse return null;
            const rg = C.regOp(size, modrm.reg);
            if (op & 2 == 0) {
                in.ops[0] = rm;
                in.ops[1] = rg;
            } else {
                in.ops[0] = rg;
                in.ops[1] = rm;
            }
            in.nops = 2;
        },
        0x8C, 0x8E => {
            in.mnem = .mov;
            C.readModrm(&r, &modrm) orelse return null;
            if (modrm.reg > 3) return null;
            if (op == 0x8E and modrm.reg == 1) return null; // mov cs, x
            const rm = C.rmOp(&r, &in, modrm, 2) orelse return null;
            const sr = Operand{ .kind = .sreg, .reg = modrm.reg, .size = 2 };
            in.ops[0] = if (op == 0x8C) rm else sr;
            in.ops[1] = if (op == 0x8C) sr else rm;
            in.nops = 2;
        },
        0x8D => {
            in.mnem = .lea;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(2, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, 0) orelse return null;
            in.nops = 2;
        },
        0x8F => {
            C.readModrm(&r, &modrm) orelse return null;
            if (modrm.reg != 0) return null;
            in.mnem = .pop;
            in.ops[0] = C.rmOp(&r, &in, modrm, 2) orelse return null;
            in.nops = 1;
        },
        0x90 => in.mnem = .nop,
        0x91...0x97 => {
            in.mnem = .xchg;
            in.ops[0] = C.regOp(2, op & 7);
            in.ops[1] = C.regOp(2, 0);
            in.nops = 2;
        },
        0x98 => in.mnem = .cbw,
        0x99 => in.mnem = .cwd,
        0x9A, 0xEA => {
            in.mnem = if (op == 0x9A) .call else .jmp;
            in.imm_off = @intCast(r.i);
            in.imm_size = 4;
            const off = r.u16_() orelse return null;
            const sg = r.u16_() orelse return null;
            in.ops[0] = .{ .kind = .far, .value = off, .seg = sg, .size = 4, .enc_size = 4 };
            in.nops = 1;
            in.flow = if (op == 0x9A) .call_far else .jmp_far;
        },
        0x9B => in.mnem = .wait,
        0x9C => in.mnem = .pushf,
        0x9D => in.mnem = .popf,
        0x9E => in.mnem = .sahf,
        0x9F => in.mnem = .lahf,
        0xA0...0xA3 => {
            in.mnem = .mov;
            const size: u8 = if (op & 1 == 0) 1 else 2;
            in.disp_off = @intCast(r.i);
            const m = Operand{ .kind = .mem, .size = size, .reg = direct, .value = r.u16_() orelse return null, .enc_size = 2 };
            const a = C.regOp(size, 0);
            in.ops[0] = if (op < 0xA2) a else m;
            in.ops[1] = if (op < 0xA2) m else a;
            in.nops = 2;
        },
        0xA4...0xA7, 0xAA...0xAF => in.mnem = switch (op) {
            0xA4 => .movsb,
            0xA5 => .movsw,
            0xA6 => .cmpsb,
            0xA7 => .cmpsw,
            0xAA => .stosb,
            0xAB => .stosw,
            0xAC => .lodsb,
            0xAD => .lodsw,
            0xAE => .scasb,
            else => .scasw,
        },
        0xA8, 0xA9 => {
            in.mnem = .@"test";
            const size: u8 = if (op == 0xA8) 1 else 2;
            in.ops[0] = C.regOp(size, 0);
            in.ops[1] = C.imm(&r, &in, size) orelse return null;
            in.nops = 2;
        },
        0xB0...0xBF => {
            in.mnem = .mov;
            const size: u8 = if (op < 0xB8) 1 else 2;
            in.ops[0] = C.regOp(size, op & 7);
            in.ops[1] = C.imm(&r, &in, size) orelse return null;
            in.nops = 2;
        },
        0xC0, 0xC1, 0xD0...0xD3 => {
            C.readModrm(&r, &modrm) orelse return null;
            in.mnem = shifts[modrm.reg] orelse return null;
            const size: u8 = if (op & 1 == 0) 1 else 2;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.ops[1] = switch (op) {
                0xC0, 0xC1 => C.imm(&r, &in, 1) orelse return null,
                0xD0, 0xD1 => .{ .kind = .one },
                else => .{ .kind = .cl },
            };
            in.nops = 2;
        },
        0xC2, 0xCA => {
            in.mnem = if (op == 0xC2) .ret else .retf;
            in.ops[0] = C.imm(&r, &in, 2) orelse return null;
            in.nops = 1;
            in.flow = .ret;
        },
        0xC3 => {
            in.mnem = .ret;
            in.flow = .ret;
        },
        0xCB => {
            in.mnem = .retf;
            in.flow = .ret;
        },
        0xCF => {
            in.mnem = .iret;
            in.flow = .ret;
        },
        0xC4, 0xC5 => {
            in.mnem = if (op == 0xC4) .les else .lds;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(2, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, 0) orelse return null;
            in.nops = 2;
        },
        0xC6, 0xC7 => {
            C.readModrm(&r, &modrm) orelse return null;
            if (modrm.reg != 0) return null;
            in.mnem = .mov;
            const size: u8 = if (op == 0xC6) 1 else 2;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.ops[1] = C.imm(&r, &in, size) orelse return null;
            in.nops = 2;
        },
        0xC8 => {
            in.mnem = .enter;
            in.ops[0] = .{ .kind = .imm, .value = r.u16_() orelse return null, .size = 2, .enc_size = 2 };
            in.ops[1] = .{ .kind = .imm, .value = r.u8_() orelse return null, .size = 1, .enc_size = 1 };
            in.nops = 2;
        },
        0xC9 => in.mnem = .leave,
        0xCC => in.mnem = .int3,
        0xCD => {
            in.mnem = .int;
            in.ops[0] = C.imm(&r, &in, 1) orelse return null;
            in.nops = 1;
        },
        0xCE => in.mnem = .into,
        0xD4, 0xD5 => {
            in.mnem = if (op == 0xD4) .aam else .aad;
            const v = r.u8_() orelse return null;
            if (v != 10) {
                in.ops[0] = .{ .kind = .imm, .value = v, .size = 1, .enc_size = 1 };
                in.nops = 1;
            }
        },
        0xD7 => in.mnem = .xlatb,
        0xE0...0xE3 => {
            in.mnem = switch (op) {
                0xE0 => .loopne,
                0xE1 => .loope,
                0xE2 => .loop,
                else => .jcxz,
            };
            in.ops[0] = C.rel8(&r) orelse return null;
            in.nops = 1;
            in.imm_off = 1;
            in.imm_size = 1;
            in.flow = .jcc;
        },
        0xE4, 0xE5 => {
            in.mnem = .in;
            in.ops[0] = C.regOp(if (op == 0xE4) 1 else 2, 0);
            in.ops[1] = C.imm(&r, &in, 1) orelse return null;
            in.nops = 2;
        },
        0xE6, 0xE7 => {
            in.mnem = .out;
            in.ops[0] = C.imm(&r, &in, 1) orelse return null;
            in.ops[1] = C.regOp(if (op == 0xE6) 1 else 2, 0);
            in.nops = 2;
        },
        0xEC, 0xED => {
            in.mnem = .in;
            in.ops[0] = C.regOp(if (op == 0xEC) 1 else 2, 0);
            in.ops[1] = .{ .kind = .dx };
            in.nops = 2;
        },
        0xEE, 0xEF => {
            in.mnem = .out;
            in.ops[0] = .{ .kind = .dx };
            in.ops[1] = C.regOp(if (op == 0xEE) 1 else 2, 0);
            in.nops = 2;
        },
        0xE8, 0xE9 => {
            in.mnem = if (op == 0xE8) .call else .jmp;
            in.imm_off = @intCast(r.i);
            in.imm_size = 2;
            in.ops[0] = .{ .kind = .rel, .value = r.u16_() orelse return null, .size = 2, .enc_size = 2 };
            in.nops = 1;
            in.flow = if (op == 0xE8) .call else .jmp;
        },
        0xEB => {
            in.mnem = .jmp;
            in.imm_off = @intCast(r.i);
            in.imm_size = 1;
            in.ops[0] = C.rel8(&r) orelse return null;
            in.nops = 1;
            in.flow = .jmp;
        },
        0xF4 => {
            in.mnem = .hlt;
            in.flow = .halt;
        },
        0xF5 => in.mnem = .cmc,
        0xF6, 0xF7 => {
            C.readModrm(&r, &modrm) orelse return null;
            const size: u8 = if (op == 0xF6) 1 else 2;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.nops = 1;
            switch (modrm.reg) {
                0 => {
                    in.mnem = .@"test";
                    in.ops[1] = C.imm(&r, &in, size) orelse return null;
                    in.nops = 2;
                },
                1 => return null,
                2 => in.mnem = .not,
                3 => in.mnem = .neg,
                4 => in.mnem = .mul,
                5 => in.mnem = .imul,
                6 => in.mnem = .div,
                else => in.mnem = .idiv,
            }
        },
        0xF8 => in.mnem = .clc,
        0xF9 => in.mnem = .stc,
        0xFA => in.mnem = .cli,
        0xFB => in.mnem = .sti,
        0xFC => in.mnem = .cld,
        0xFD => in.mnem = .std,
        0xFE => {
            C.readModrm(&r, &modrm) orelse return null;
            if (modrm.reg > 1) return null;
            in.mnem = if (modrm.reg == 0) .inc else .dec;
            in.ops[0] = C.rmOp(&r, &in, modrm, 1) orelse return null;
            in.nops = 1;
        },
        0xFF => {
            C.readModrm(&r, &modrm) orelse return null;
            switch (modrm.reg) {
                0, 1 => {
                    in.mnem = if (modrm.reg == 0) .inc else .dec;
                    in.ops[0] = C.rmOp(&r, &in, modrm, 2) orelse return null;
                },
                2, 4 => {
                    in.mnem = if (modrm.reg == 2) .call else .jmp;
                    in.ops[0] = C.rmOp(&r, &in, modrm, 2) orelse return null;
                    in.flow = if (modrm.reg == 2) .call_ind else .jmp_ind;
                },
                3, 5 => {
                    in.mnem = if (modrm.reg == 3) .call else .jmp;
                    in.ops[0] = C.rmOp(&r, &in, modrm, 4) orelse return null;
                    in.flow = if (modrm.reg == 3) .call_ind else .jmp_ind;
                },
                6 => {
                    in.mnem = .push;
                    in.ops[0] = C.rmOp(&r, &in, modrm, 2) orelse return null;
                },
                else => return null,
            }
            in.nops = 1;
        },
        else => return null,
    }
    // A segment override only makes sense on a memory operand or string op; a
    // rep only on a string op; lock only on a memory read-modify-write.
    const has_mem = in.memOp() != null;
    const is_string = in.mnem.isString();
    if (in.seg_prefix != no_seg and !has_mem and !is_string) return null;
    if (in.rep != 0 and !is_string) return null;
    if (in.lock and !has_mem) return null;
    in.len = @intCast(r.i);
    return in;
}

const no_geom = Geometry{ .code_lo = 0, .code_hi = 0xffff_ffff, .bias = 0 };

test "decode basics" {
    const i = decode(&.{ 0x8B, 0x46, 0x04 }, 0, no_geom);
    try std.testing.expectEqual(Mnem.mov, i.mnem);
    try std.testing.expectEqual(@as(u8, 3), i.len);
    try std.testing.expectEqual(Space.ss, i.ops[1].space);
}

test "rel target" {
    const i = decode(&.{ 0x90, 0xEB, 0xFE }, 1, .{ .code_lo = 0, .code_hi = 3, .bias = 0x100 });
    try std.testing.expectEqual(@as(u16, 0x101), i.target);
}
