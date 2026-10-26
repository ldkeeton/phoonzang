//! 16-bit-mode x86 instruction decoder: 8086 through 486, plus the x87.
//!
//! Decodes one instruction into mnemonic, operands and the encoding facts a
//! formatter needs to spell it in NASM syntax (displacement/immediate sizes
//! and where they sit).  It does not judge whether an instruction is
//! plausible: ``isa`` says which processor introduced it and ``facts`` flag
//! prefixes that do nothing and alternative encodings, so a caller decides
//! what it accepts.  Only encodings no 16-bit-mode CPU of that range defines
//! (and truncated ones) fail to decode.

const std = @import("std");

pub const reg8 = [_][]const u8{ "al", "cl", "dl", "bl", "ah", "ch", "dh", "bh" };
pub const reg16 = [_][]const u8{ "ax", "cx", "dx", "bx", "sp", "bp", "si", "di" };
pub const reg32 = [_][]const u8{ "eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi" };
pub const sreg = [_][]const u8{ "es", "cs", "ss", "ds", "fs", "gs" };
/// ModRM r/m base spellings (index 6 is ``bp``; ``rm == direct`` is ``[disp16]``).
pub const rm_base = [_][]const u8{ "bx+si", "bx+di", "bp+si", "bp+di", "si", "di", "bp", "bx" };
pub const direct: u8 = 8;
/// ``Operand.reg`` of a memory operand with 32-bit addressing (``base``,
/// ``index`` and ``scale`` describe it).
pub const addr32: u8 = 9;
/// ``Operand.base`` / ``index`` when absent.
pub const no_reg: u8 = 0xff;
pub const no_seg: u8 = 0xff;

/// Address spaces names live in.  ``ext`` is free for a caller's own use.
pub const Space = enum(u8) { none, cs, ds, ss, es, ext };
pub const Flow = enum(u8) { seq, jmp, jcc, call, ret, jmp_ind, call_ind, jmp_far, call_far, halt };
pub const Kind = enum(u8) { none, reg8, reg16, sreg, imm, mem, rel, far, one, cl, dx, reg32, creg, dreg, treg, st };
/// The processor that introduced an instruction (or the prefix it carries).
pub const Isa = enum(u8) { i8086, i186, i286, i386, i486, x87 };

/// Encoding facts; all clear for an instruction an assembler would emit.
pub const Facts = packed struct(u8) {
    /// Segment override on an instruction that has nothing for it to apply to.
    seg_unused: bool = false,
    /// rep/repne on an instruction that does not repeat.
    rep_unused: bool = false,
    /// lock on an instruction that cannot be locked.
    lock_unused: bool = false,
    /// A prefix group given twice (two segments, two reps, ...).
    repeated: bool = false,
    /// An undocumented duplicate (82, F6 /1, shift /6, ``mov cs``) or an
    /// encoding with a shorter canonical form (redundant SIB, mod != 3 for a
    /// control register move).
    alias: bool = false,
    /// Prefixes in an order NASM never writes (it orders them itself, and
    /// puts ``wait`` before all of them).
    prefix_order: bool = false,
    _: u2 = 0,

    pub fn any(f: Facts) bool {
        return @as(u8, @bitCast(f)) != 0;
    }
};

pub const Mnem = enum(u8) {
    none,
    // zig fmt: off
    add, @"or", adc, sbb, @"and", sub, xor, cmp,
    rol, ror, rcl, rcr, shl, shr, sal, sar,
    jo, jno, jb, jae, je, jne, jbe, ja, js, jns, jp, jnp, jl, jge, jle, jg,
    seto, setno, setb, setae, sete, setne, setbe, seta, sets, setns, setp, setnp, setl, setge, setle, setg,
    aaa, aad, aam, aas, call, cbw, clc, cld, cli, cmc, cmpsb, cmpsw, cwd, daa, das,
    dec, div, enter, hlt, idiv, imul, in, inc, insb, insw, int, int3, into, iret,
    jcxz, jmp, lahf, lds, lea, leave, les, lodsb, lodsw, loop, loope, loopne, mov,
    movsb, movsw, mul, neg, nop, not, out, outsb, outsw, pop, popa, popf, push,
    pusha, pushf, ret, retf, sahf, scasb, scasw, stc, std, sti, stosb, stosw,
    @"test", wait, xchg, xlatb,
    // undocumented 8086, 186, 286
    salc, int1, bound, arpl,
    sldt, str, lldt, ltr, verr, verw, sgdt, sidt, lgdt, lidt, smsw, lmsw, lar, lsl, clts,
    // 386 / 486
    pushad, popad, pushfd, popfd, cwde, cdq, iretd,
    movsd, cmpsd, stosd, lodsd, scasd, insd, outsd, jecxz,
    bt, bts, btr, btc, shld, shrd, lss, lfs, lgs, movzx, movsx, bsf, bsr,
    invlpg, invd, wbinvd, cmpxchg, xadd, bswap,
    // x87
    fadd, fmul, fcom, fcomp, fsub, fsubr, fdiv, fdivr,
    fiadd, fimul, ficom, ficomp, fisub, fisubr, fidiv, fidivr,
    faddp, fmulp, fsubp, fsubrp, fdivp, fdivrp, fcompp, fucompp,
    fld, fst, fstp, fild, fist, fistp, fbld, fbstp, fxch, ffree, fucom, fucomp,
    fldenv, fldcw, fnstenv, fnstcw, frstor, fnsave, fnstsw,
    fnop, fchs, fabs, ftst, fxam, fld1, fldl2t, fldl2e, fldpi, fldlg2, fldln2, fldz,
    f2xm1, fyl2x, fptan, fpatan, fxtract, fprem1, fdecstp, fincstp,
    fprem, fyl2xp1, fsqrt, fsincos, frndint, fscale, fsin, fcos,
    fneni, fndisi, fnclex, fninit, fsetpm,
    // zig fmt: on

    pub fn isString(m: Mnem) bool {
        return switch (m) {
            .movsb, .movsw, .cmpsb, .cmpsw, .stosb, .stosw, .lodsb, .lodsw, .scasb, .scasw => true,
            else => false,
        };
    }

    /// Repeatable with rep/repne (strings, including the 186 port strings).
    pub fn repeats(m: Mnem) bool {
        return m.isString() or switch (m) {
            .insb, .insw, .outsb, .outsw, .movsd, .cmpsd, .stosd, .lodsd, .scasd, .insd, .outsd => true,
            else => false,
        };
    }

    /// The source a segment override redirects (movs/cmps/lods/outs read ds:si; stos/scas/ins write es:di).
    pub fn readsDsSi(m: Mnem) bool {
        return switch (m) {
            .movsb, .movsw, .movsd, .cmpsb, .cmpsw, .cmpsd, .lodsb, .lodsw, .lodsd, .outsb, .outsw, .outsd, .xlatb => true,
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
    /// Bytes: 1, 2, 4, 8 or 10; far mem 4 (16:16) or 6 (16:32); 0 =
    /// untyped memory (lea/les/lds, descriptor tables, x87 environment).
    size: u8 = 0,
    /// Register index; mem: r/m 0-7, ``direct``, or ``addr32``.
    reg: u8 = 0,
    /// mem: displacement bytes as encoded (0/1/2/4); imm/rel: 1, 2 or 4.
    enc_size: u8 = 0,
    /// imm8 sign-extended to a word operand (83 /x, 6A, 6B).
    sext: bool = false,
    /// mem/rel: the default space (prefix, ``bp`` base -> ss, else ds; rel -> cs).
    space: Space = .none,
    /// imm value, mem displacement, rel absolute target, or far offset (low word).
    value: u16 = 0,
    /// far: segment word.
    seg: u16 = 0,
    /// High word of a 32-bit imm, displacement, rel target or far offset.
    value_hi: u16 = 0,
    /// addr32 mem: base and index registers (``no_reg`` when absent), scale as log2.
    base: u8 = no_reg,
    index: u8 = no_reg,
    scale: u8 = 0,
    /// mem: a far pointer (call/jmp far [m]).
    far: bool = false,

    pub fn value32(o: *const Operand) u32 {
        return @as(u32, o.value_hi) << 16 | o.value;
    }
};

pub const Insn = extern struct {
    /// 0 = not decodable here.
    len: u8 = 0,
    mnem: Mnem = .none,
    flow: Flow = .seq,
    nops: u8 = 0,
    /// Segment override prefix as an sreg index (the last one given), ``no_seg`` if none.
    seg_prefix: u8 = no_seg,
    rep: u8 = 0, // 0xF2 / 0xF3
    lock: bool = false,
    /// The opcode byte (the second one after a ``0F`` escape).
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
    /// ``0x0F`` for a two-byte opcode, else 0.
    escape: u8 = 0,
    /// 66 / 67 prefixes present.
    osize: bool = false,
    asize: bool = false,
    isa: Isa = .i8086,
    facts: Facts = .{},
    /// The instruction's bytes (``raw[0..len]``).
    raw: [15]u8 = @splat(0),

    pub fn segment(self: *const Insn) ?u8 {
        return if (self.seg_prefix == no_seg) null else self.seg_prefix;
    }

    pub fn memOp(self: *const Insn) ?*const Operand {
        for (self.ops[0..self.nops]) |*op| if (op.kind == .mem) return op;
        return null;
    }

    pub fn bytes(self: *const Insn) []const u8 {
        return self.raw[0..self.len];
    }
};

const alu = [_]Mnem{ .add, .@"or", .adc, .sbb, .@"and", .sub, .xor, .cmp };
const shifts = [_]Mnem{ .rol, .ror, .rcl, .rcr, .shl, .shr, .sal, .sar };
const jccs = [_]Mnem{ .jo, .jno, .jb, .jae, .je, .jne, .jbe, .ja, .js, .jns, .jp, .jnp, .jl, .jge, .jle, .jg };
const setccs = [_]Mnem{ .seto, .setno, .setb, .setae, .sete, .setne, .setbe, .seta, .sets, .setns, .setp, .setnp, .setl, .setge, .setle, .setg };
const lockable = [_]Mnem{ .add, .@"or", .adc, .sbb, .@"and", .sub, .xor, .not, .neg, .inc, .dec, .xchg, .bts, .btr, .btc, .xadd, .cmpxchg };

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
    fn u32_(r: *Reader) ?u32 {
        const lo = r.u16_() orelse return null;
        const hi = r.u16_() orelse return null;
        return @as(u32, lo) | (@as(u32, hi) << 16);
    }
};

const ModRM = struct { mod: u8, reg: u8, rm: u8 };

fn sext8(v: u8) u16 {
    return @bitCast(@as(i16, @as(i8, @bitCast(v))));
}

fn sext8to32(v: u8) u32 {
    return @bitCast(@as(i32, @as(i8, @bitCast(v))));
}

/// Operand readers shared by the one-byte, 0F and x87 maps.
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
                1 => .{ .kind = .reg8, .reg = m.rm, .size = 1 },
                2 => .{ .kind = .reg16, .reg = m.rm, .size = 2 },
                4 => .{ .kind = .reg32, .reg = m.rm, .size = 4 },
                else => null, // lea/les/far ptr/x87 memory need memory
            };
        }
        if (insn.asize) return rmOp32(rd, insn, m, size);
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
    /// 32-bit addressing: [base + index*scale + disp], SIB when rm == 4.
    fn rmOp32(rd: *Reader, insn: *Insn, m: ModRM, size: u8) ?Operand {
        var o = Operand{ .kind = .mem, .size = size, .reg = addr32 };
        var disp: u8 = switch (m.mod) {
            1 => 1,
            2 => 4,
            else => 0,
        };
        if (m.rm == 4) {
            const sib = rd.u8_() orelse return null;
            const index = (sib >> 3) & 7;
            const base = sib & 7;
            if (index != 4) {
                o.index = index;
                o.scale = sib >> 6;
            } else if (sib >> 6 != 0 or base != 4) {
                // No index: only [esp + ...] needs a SIB byte.
                insn.facts.alias = true;
            }
            if (base == 5 and m.mod == 0) disp = 4 else o.base = base;
        } else if (m.rm == 5 and m.mod == 0) {
            disp = 4;
        } else o.base = m.rm;
        if (disp != 0) insn.disp_off = @intCast(rd.i);
        const v: u32 = switch (disp) {
            1 => sext8to32(rd.u8_() orelse return null),
            4 => rd.u32_() orelse return null,
            else => 0,
        };
        o.value = @truncate(v);
        o.value_hi = @truncate(v >> 16);
        o.enc_size = disp;
        return o;
    }
    fn imm(rd: *Reader, insn: *Insn, size: u8) ?Operand {
        insn.imm_off = @intCast(rd.i);
        insn.imm_size = size;
        const v: u32 = switch (size) {
            1 => rd.u8_() orelse return null,
            2 => rd.u16_() orelse return null,
            else => rd.u32_() orelse return null,
        };
        return .{ .kind = .imm, .value = @truncate(v), .value_hi = @truncate(v >> 16), .size = size, .enc_size = size };
    }
    /// imm8 sign-extended to the operand size *size*.
    fn immSext(rd: *Reader, insn: *Insn, size: u8) ?Operand {
        insn.imm_off = @intCast(rd.i);
        insn.imm_size = 1;
        const v = sext8to32(rd.u8_() orelse return null);
        return .{ .kind = .imm, .value = @truncate(v), .value_hi = if (size == 4) @truncate(v >> 16) else 0, .size = size, .enc_size = 1, .sext = true };
    }
    fn regOp(size: u8, idx: u8) Operand {
        return switch (size) {
            1 => .{ .kind = .reg8, .reg = idx, .size = 1 },
            2 => .{ .kind = .reg16, .reg = idx, .size = 2 },
            else => .{ .kind = .reg32, .reg = idx, .size = 4 },
        };
    }
    fn rel8(rd: *Reader) ?Operand {
        return .{ .kind = .rel, .value = sext8(rd.u8_() orelse return null), .size = 2, .enc_size = 1 };
    }
    /// rel16, or rel32 under an operand-size prefix.
    fn relW(rd: *Reader, insn: *Insn) ?Operand {
        insn.imm_off = @intCast(rd.i);
        if (insn.osize) {
            insn.imm_size = 4;
            const v = rd.u32_() orelse return null;
            return .{ .kind = .rel, .value = @truncate(v), .value_hi = @truncate(v >> 16), .size = 4, .enc_size = 4 };
        }
        insn.imm_size = 2;
        return .{ .kind = .rel, .value = rd.u16_() orelse return null, .size = 2, .enc_size = 2 };
    }
    /// The d-form mnemonic under an operand-size prefix.
    fn wide(insn: *const Insn, w: Mnem, d: Mnem) Mnem {
        return if (insn.osize) d else w;
    }
};

/// Decode the instruction at file offset *at* of *bytes* (``len == 0`` when
/// invalid or truncated).  Decoding never reads past ``geom.code_hi``.
pub fn decode(bytes: []const u8, at: u32, geom: Geometry) Insn {
    if (at >= bytes.len) return .{};
    const hi = if (at < geom.code_hi) @min(geom.code_hi, bytes.len) else bytes.len;
    var in = decodeRaw(bytes[at..@min(at + 15, hi)]) orelse return .{};
    const cs: u16 = @truncate(@as(u64, @bitCast(@as(i64, at) + geom.bias)));
    for (in.ops[0..in.nops]) |*op| switch (op.kind) {
        .rel => {
            if (op.enc_size == 4) {
                const t = @as(u32, cs) +% in.len +% op.value32();
                op.value = @truncate(t);
                op.value_hi = @truncate(t >> 16);
            } else op.value = cs +% in.len +% op.value;
            op.space = .cs;
            in.target = op.value;
        },
        .mem => op.space = if (in.segment()) |s|
            ([_]Space{ .es, .cs, .ss, .ds, .none, .none })[s]
        else if (op.reg == addr32)
            (if (op.base == 4 or op.base == 5) .ss else .ds)
        else if (op.reg == 2 or op.reg == 3 or op.reg == 6)
            .ss
        else
            .ds,
        else => {},
    };
    return in;
}

/// The order NASM writes prefixes in, whatever order the source names them.
fn prefixRank(p: u8) u8 {
    return switch (p) {
        0x67 => 1,
        0xF0 => 2,
        0x66 => 3,
        0xF2, 0xF3 => 4,
        else => 0, // segment
    };
}

/// Decode the instruction at the start of *b*; rel operands hold their raw
/// displacement.  Null when invalid or truncated.
fn decodeRaw(b: []const u8) ?Insn {
    var r = Reader{ .b = b };
    var in = Insn{};
    var pfx_isa: Isa = .i8086;
    var isa: Isa = .i8086;
    // Prefixes, any number in any order (the instruction stays within 15 bytes).
    while (true) {
        const p = if (r.i < b.len) b[r.i] else return null;
        switch (p) {
            0x26, 0x2E, 0x36, 0x3E, 0x64, 0x65 => {
                if (in.seg_prefix != no_seg) in.facts.repeated = true;
                in.seg_prefix = if (p >= 0x64) p - 0x60 else (p >> 3) & 3;
                if (p >= 0x64) pfx_isa = .i386;
            },
            0x66, 0x67 => {
                const seen = if (p == 0x66) &in.osize else &in.asize;
                if (seen.*) in.facts.repeated = true;
                seen.* = true;
                pfx_isa = .i386;
            },
            0xF2, 0xF3 => {
                if (in.rep != 0) in.facts.repeated = true;
                in.rep = p;
            },
            0xF0 => {
                if (in.lock) in.facts.repeated = true;
                in.lock = true;
            },
            else => break,
        }
        r.i += 1;
    }
    in.op_at = @intCast(r.i);
    var op = r.u8_() orelse return null;
    if (op == 0x0F) {
        in.escape = 0x0F;
        op = r.u8_() orelse return null;
    }
    in.opcode = op;
    // Word-or-dword operand size.
    const wsize: u8 = if (in.osize) 4 else 2;

    var modrm: ModRM = undefined;

    if (in.escape == 0x0F) {
        if (!twoByte(&r, &in, op, wsize, &isa)) return null;
    } else switch (op) {
        // ALU block: add/or/adc/sbb/and/sub/xor/cmp
        0x00...0x05, 0x08...0x0D, 0x10...0x15, 0x18...0x1D, 0x20...0x25, 0x28...0x2D, 0x30...0x35, 0x38...0x3D => {
            in.mnem = alu[op >> 3];
            const form = op & 7;
            const size: u8 = if (form & 1 == 0) 1 else wsize;
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
            in.ops[0] = C.regOp(wsize, op & 7);
            in.nops = 1;
        },
        0x48...0x4F => {
            in.mnem = .dec;
            in.ops[0] = C.regOp(wsize, op & 7);
            in.nops = 1;
        },
        0x50...0x57 => {
            in.mnem = .push;
            in.ops[0] = C.regOp(wsize, op & 7);
            in.nops = 1;
        },
        0x58...0x5F => {
            in.mnem = .pop;
            in.ops[0] = C.regOp(wsize, op & 7);
            in.nops = 1;
        },
        0x60 => {
            in.mnem = C.wide(&in, .pusha, .pushad);
            isa = .i186;
        },
        0x61 => {
            in.mnem = C.wide(&in, .popa, .popad);
            isa = .i186;
        },
        0x62 => {
            in.mnem = .bound;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(wsize, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, 0) orelse return null;
            in.nops = 2;
            isa = .i186;
        },
        0x63 => {
            in.mnem = .arpl;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.rmOp(&r, &in, modrm, 2) orelse return null;
            in.ops[1] = C.regOp(2, modrm.reg);
            in.nops = 2;
            isa = .i286;
        },
        0x68 => {
            in.mnem = .push;
            in.ops[0] = C.imm(&r, &in, wsize) orelse return null;
            in.nops = 1;
            isa = .i186;
        },
        0x6A => {
            in.mnem = .push;
            in.ops[0] = C.immSext(&r, &in, wsize) orelse return null;
            in.nops = 1;
            isa = .i186;
        },
        0x69, 0x6B => {
            in.mnem = .imul;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(wsize, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, wsize) orelse return null;
            in.ops[2] = (if (op == 0x69) C.imm(&r, &in, wsize) else C.immSext(&r, &in, wsize)) orelse return null;
            in.nops = 3;
            isa = .i186;
        },
        0x6C => {
            in.mnem = .insb;
            isa = .i186;
        },
        0x6D => {
            in.mnem = C.wide(&in, .insw, .insd);
            isa = .i186;
        },
        0x6E => {
            in.mnem = .outsb;
            isa = .i186;
        },
        0x6F => {
            in.mnem = C.wide(&in, .outsw, .outsd);
            isa = .i186;
        },
        0x70...0x7F => {
            in.mnem = jccs[op & 15];
            in.ops[0] = C.rel8(&r) orelse return null;
            in.nops = 1;
            in.imm_off = in.op_at + 1;
            in.imm_size = 1;
            in.flow = .jcc;
        },
        0x80...0x83 => {
            C.readModrm(&r, &modrm) orelse return null;
            in.mnem = alu[modrm.reg];
            // 82 is an undocumented copy of 80.
            if (op == 0x82) in.facts.alias = true;
            const size: u8 = if (op & 1 == 0) 1 else wsize;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.ops[1] = (if (op == 0x81) C.imm(&r, &in, wsize) else if (op == 0x83) C.immSext(&r, &in, wsize) else C.imm(&r, &in, 1)) orelse return null;
            in.nops = 2;
        },
        0x84, 0x85, 0x86, 0x87 => {
            in.mnem = if (op < 0x86) .@"test" else .xchg;
            const size: u8 = if (op & 1 == 0) 1 else wsize;
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
            const size: u8 = if (op & 1 == 0) 1 else wsize;
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
            if (modrm.reg > 5) return null;
            if (modrm.reg > 3) isa = .i386;
            // mov cs, x: 8086 only, and NASM will not write it.
            if (op == 0x8E and modrm.reg == 1) in.facts.alias = true;
            // A register destination of mov r, sreg takes the operand size.
            const rm = C.rmOp(&r, &in, modrm, if (modrm.mod == 3) wsize else 2) orelse return null;
            const sr = Operand{ .kind = .sreg, .reg = modrm.reg, .size = 2 };
            in.ops[0] = if (op == 0x8C) rm else sr;
            in.ops[1] = if (op == 0x8C) sr else rm;
            in.nops = 2;
        },
        0x8D => {
            in.mnem = .lea;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(wsize, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, 0) orelse return null;
            in.nops = 2;
        },
        0x8F => {
            C.readModrm(&r, &modrm) orelse return null;
            if (modrm.reg != 0) return null;
            in.mnem = .pop;
            in.ops[0] = C.rmOp(&r, &in, modrm, wsize) orelse return null;
            in.nops = 1;
        },
        0x90 => in.mnem = .nop,
        0x91...0x97 => {
            in.mnem = .xchg;
            in.ops[0] = C.regOp(wsize, op & 7);
            in.ops[1] = C.regOp(wsize, 0);
            in.nops = 2;
        },
        0x98 => in.mnem = C.wide(&in, .cbw, .cwde),
        0x99 => in.mnem = C.wide(&in, .cwd, .cdq),
        0x9A, 0xEA => {
            in.mnem = if (op == 0x9A) .call else .jmp;
            in.imm_off = @intCast(r.i);
            in.imm_size = if (in.osize) 6 else 4;
            const off: u32 = (if (in.osize) r.u32_() else @as(?u32, r.u16_() orelse return null)) orelse return null;
            const sg = r.u16_() orelse return null;
            in.ops[0] = .{ .kind = .far, .value = @truncate(off), .value_hi = @truncate(off >> 16), .seg = sg, .size = in.imm_size, .enc_size = in.imm_size };
            in.nops = 1;
            in.flow = if (op == 0x9A) .call_far else .jmp_far;
        },
        0x9B => in.mnem = .wait,
        0x9C => in.mnem = C.wide(&in, .pushf, .pushfd),
        0x9D => in.mnem = C.wide(&in, .popf, .popfd),
        0x9E => in.mnem = .sahf,
        0x9F => in.mnem = .lahf,
        0xA0...0xA3 => {
            in.mnem = .mov;
            const size: u8 = if (op & 1 == 0) 1 else wsize;
            in.disp_off = @intCast(r.i);
            var m = Operand{ .kind = .mem, .size = size, .reg = direct, .enc_size = 2 };
            if (in.asize) {
                const v = r.u32_() orelse return null;
                m.reg = addr32;
                m.value = @truncate(v);
                m.value_hi = @truncate(v >> 16);
                m.enc_size = 4;
            } else m.value = r.u16_() orelse return null;
            const a = C.regOp(size, 0);
            in.ops[0] = if (op < 0xA2) a else m;
            in.ops[1] = if (op < 0xA2) m else a;
            in.nops = 2;
        },
        0xA4 => in.mnem = .movsb,
        0xA5 => in.mnem = C.wide(&in, .movsw, .movsd),
        0xA6 => in.mnem = .cmpsb,
        0xA7 => in.mnem = C.wide(&in, .cmpsw, .cmpsd),
        0xAA => in.mnem = .stosb,
        0xAB => in.mnem = C.wide(&in, .stosw, .stosd),
        0xAC => in.mnem = .lodsb,
        0xAD => in.mnem = C.wide(&in, .lodsw, .lodsd),
        0xAE => in.mnem = .scasb,
        0xAF => in.mnem = C.wide(&in, .scasw, .scasd),
        0xA8, 0xA9 => {
            in.mnem = .@"test";
            const size: u8 = if (op == 0xA8) 1 else wsize;
            in.ops[0] = C.regOp(size, 0);
            in.ops[1] = C.imm(&r, &in, size) orelse return null;
            in.nops = 2;
        },
        0xB0...0xBF => {
            in.mnem = .mov;
            const size: u8 = if (op < 0xB8) 1 else wsize;
            in.ops[0] = C.regOp(size, op & 7);
            in.ops[1] = C.imm(&r, &in, size) orelse return null;
            in.nops = 2;
        },
        0xC0, 0xC1, 0xD0...0xD3 => {
            C.readModrm(&r, &modrm) orelse return null;
            in.mnem = shifts[modrm.reg];
            // /6 is an undocumented copy of shl.
            if (modrm.reg == 6) in.facts.alias = true;
            if (op < 0xD0) isa = .i186;
            const size: u8 = if (op & 1 == 0) 1 else wsize;
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
            in.mnem = C.wide(&in, .iret, .iretd);
            in.flow = .ret;
        },
        0xC4, 0xC5 => {
            in.mnem = if (op == 0xC4) .les else .lds;
            C.readModrm(&r, &modrm) orelse return null;
            in.ops[0] = C.regOp(wsize, modrm.reg);
            in.ops[1] = C.rmOp(&r, &in, modrm, 0) orelse return null;
            in.nops = 2;
        },
        0xC6, 0xC7 => {
            C.readModrm(&r, &modrm) orelse return null;
            if (modrm.reg != 0) return null;
            in.mnem = .mov;
            const size: u8 = if (op == 0xC6) 1 else wsize;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.ops[1] = C.imm(&r, &in, size) orelse return null;
            in.nops = 2;
        },
        0xC8 => {
            in.mnem = .enter;
            in.ops[0] = .{ .kind = .imm, .value = r.u16_() orelse return null, .size = 2, .enc_size = 2 };
            in.ops[1] = .{ .kind = .imm, .value = r.u8_() orelse return null, .size = 1, .enc_size = 1 };
            in.nops = 2;
            isa = .i186;
        },
        0xC9 => {
            in.mnem = .leave;
            isa = .i186;
        },
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
        0xD6 => in.mnem = .salc,
        0xD7 => in.mnem = .xlatb,
        0xD8...0xDF => {
            if (!x87(&r, &in, op)) return null;
            isa = .x87;
        },
        0xE0...0xE3 => {
            in.mnem = switch (op) {
                0xE0 => .loopne,
                0xE1 => .loope,
                0xE2 => .loop,
                else => if (in.asize) .jecxz else .jcxz,
            };
            in.ops[0] = C.rel8(&r) orelse return null;
            in.nops = 1;
            in.imm_off = in.op_at + 1;
            in.imm_size = 1;
            in.flow = .jcc;
        },
        0xE4, 0xE5 => {
            in.mnem = .in;
            in.ops[0] = C.regOp(if (op == 0xE4) 1 else wsize, 0);
            in.ops[1] = C.imm(&r, &in, 1) orelse return null;
            in.nops = 2;
        },
        0xE6, 0xE7 => {
            in.mnem = .out;
            in.ops[0] = C.imm(&r, &in, 1) orelse return null;
            in.ops[1] = C.regOp(if (op == 0xE6) 1 else wsize, 0);
            in.nops = 2;
        },
        0xEC, 0xED => {
            in.mnem = .in;
            in.ops[0] = C.regOp(if (op == 0xEC) 1 else wsize, 0);
            in.ops[1] = .{ .kind = .dx };
            in.nops = 2;
        },
        0xEE, 0xEF => {
            in.mnem = .out;
            in.ops[0] = .{ .kind = .dx };
            in.ops[1] = C.regOp(if (op == 0xEE) 1 else wsize, 0);
            in.nops = 2;
        },
        0xE8, 0xE9 => {
            in.mnem = if (op == 0xE8) .call else .jmp;
            in.ops[0] = C.relW(&r, &in) orelse return null;
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
        0xF1 => {
            in.mnem = .int1;
            isa = .i386;
        },
        0xF4 => {
            in.mnem = .hlt;
            in.flow = .halt;
        },
        0xF5 => in.mnem = .cmc,
        0xF6, 0xF7 => {
            C.readModrm(&r, &modrm) orelse return null;
            const size: u8 = if (op == 0xF6) 1 else wsize;
            in.ops[0] = C.rmOp(&r, &in, modrm, size) orelse return null;
            in.nops = 1;
            switch (modrm.reg) {
                0, 1 => {
                    // /1 is an undocumented copy of test.
                    if (modrm.reg == 1) in.facts.alias = true;
                    in.mnem = .@"test";
                    in.ops[1] = C.imm(&r, &in, size) orelse return null;
                    in.nops = 2;
                },
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
                    in.ops[0] = C.rmOp(&r, &in, modrm, wsize) orelse return null;
                },
                2, 4 => {
                    in.mnem = if (modrm.reg == 2) .call else .jmp;
                    in.ops[0] = C.rmOp(&r, &in, modrm, wsize) orelse return null;
                    in.flow = if (modrm.reg == 2) .call_ind else .jmp_ind;
                },
                3, 5 => {
                    if (modrm.mod == 3) return null;
                    in.mnem = if (modrm.reg == 3) .call else .jmp;
                    in.ops[0] = C.rmOp(&r, &in, modrm, wsize + 2) orelse return null;
                    in.ops[0].far = true;
                    in.flow = if (modrm.reg == 3) .call_ind else .jmp_ind;
                },
                6 => {
                    in.mnem = .push;
                    in.ops[0] = C.rmOp(&r, &in, modrm, wsize) orelse return null;
                },
                else => return null,
            }
            in.nops = 1;
        },
        else => unreachable, // prefixes and 0F are consumed above
    }
    in.isa = if (@intFromEnum(isa) > @intFromEnum(pfx_isa)) isa else pfx_isa;

    // A segment override applies to a memory operand or a ds:si string
    // source; rep to a string op; lock to a read-modify-write of memory.
    const has_mem = in.memOp() != null;
    if (in.seg_prefix != no_seg and !has_mem and !in.mnem.readsDsSi()) in.facts.seg_unused = true;
    if (in.rep != 0 and !in.mnem.repeats()) in.facts.rep_unused = true;
    if (in.lock) {
        const ok = for (lockable) |m| {
            if (m == in.mnem) break true;
        } else false;
        // The memory operand is the destination (either side of an xchg).
        const dest_mem = in.ops[0].kind == .mem or (in.mnem == .xchg and has_mem);
        if (!ok or !dest_mem) in.facts.lock_unused = true;
    }
    if (in.mnem == .wait and in.op_at > 0) in.facts.prefix_order = true;
    var last: u8 = 0;
    for (b[0..in.op_at]) |p| {
        const rank = prefixRank(p);
        if (rank < last) in.facts.prefix_order = true;
        last = rank;
    }
    in.len = @intCast(r.i);
    @memcpy(in.raw[0..in.len], b[0..in.len]);
    return in;
}

/// The ``0F xx`` map (286 through 486).  False when undefined.
fn twoByte(r: *Reader, in: *Insn, op: u8, wsize: u8, isa: *Isa) bool {
    var m: ModRM = undefined;
    const S = struct {
        fn modrm(rd: *Reader, out: *ModRM) bool {
            const x = rd.u8_() orelse return false;
            out.* = .{ .mod = x >> 6, .reg = (x >> 3) & 7, .rm = x & 7 };
            return true;
        }
    };
    isa.* = .i386;
    switch (op) {
        0x00 => {
            if (!S.modrm(r, &m) or m.reg > 5) return false;
            in.mnem = ([_]Mnem{ .sldt, .str, .lldt, .ltr, .verr, .verw })[m.reg];
            in.ops[0] = C.rmOp(r, in, m, 2) orelse return false;
            in.nops = 1;
            isa.* = .i286;
        },
        0x01 => {
            if (!S.modrm(r, &m) or m.reg == 5) return false;
            switch (m.reg) {
                0...3, 7 => {
                    if (m.mod == 3) return false;
                    in.mnem = ([_]Mnem{ .sgdt, .sidt, .lgdt, .lidt, .none, .none, .none, .invlpg })[m.reg];
                    in.ops[0] = C.rmOp(r, in, m, 0) orelse return false;
                    isa.* = if (m.reg == 7) .i486 else .i286;
                },
                else => {
                    in.mnem = if (m.reg == 4) .smsw else .lmsw;
                    in.ops[0] = C.rmOp(r, in, m, if (m.reg == 4 and m.mod == 3) wsize else 2) orelse return false;
                    isa.* = .i286;
                },
            }
            in.nops = 1;
        },
        0x02, 0x03 => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = if (op == 0x02) .lar else .lsl;
            in.ops[0] = C.regOp(wsize, m.reg);
            in.ops[1] = C.rmOp(r, in, m, 2) orelse return false;
            in.nops = 2;
            isa.* = .i286;
        },
        0x06 => {
            in.mnem = .clts;
            isa.* = .i286;
        },
        0x08 => {
            in.mnem = .invd;
            isa.* = .i486;
        },
        0x09 => {
            in.mnem = .wbinvd;
            isa.* = .i486;
        },
        0x20...0x24, 0x26 => {
            if (!S.modrm(r, &m)) return false;
            // The r/m field is always a register; mod is ignored.
            if (m.mod != 3) in.facts.alias = true;
            const kind: Kind = switch (op & 7) {
                0, 2 => .creg,
                1, 3 => .dreg,
                else => .treg,
            };
            if (kind == .creg and (m.reg == 1 or m.reg > 4)) return false; // cr0, cr2-cr4
            if (kind == .treg and m.reg < 3) return false;
            in.mnem = .mov;
            const special = Operand{ .kind = kind, .reg = m.reg, .size = 4 };
            const gpr = Operand{ .kind = .reg32, .reg = m.rm, .size = 4 };
            const to_special = op == 0x22 or op == 0x23 or op == 0x26;
            in.ops[0] = if (to_special) special else gpr;
            in.ops[1] = if (to_special) gpr else special;
            in.nops = 2;
        },
        0x80...0x8F => {
            in.mnem = jccs[op & 15];
            in.ops[0] = C.relW(r, in) orelse return false;
            in.nops = 1;
            in.flow = .jcc;
        },
        0x90...0x9F => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = setccs[op & 15];
            // The reg field is ignored; assemblers write 0.
            if (m.reg != 0) in.facts.alias = true;
            in.ops[0] = C.rmOp(r, in, m, 1) orelse return false;
            in.nops = 1;
        },
        0xA0, 0xA1, 0xA8, 0xA9 => {
            in.mnem = if (op & 1 == 0) .push else .pop;
            in.ops[0] = .{ .kind = .sreg, .reg = if (op < 0xA8) 4 else 5, .size = 2 };
            in.nops = 1;
        },
        0xA3, 0xAB, 0xB3, 0xBB => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = ([_]Mnem{ .bt, .bts, .btr, .btc })[(op >> 3) & 3];
            in.ops[0] = C.rmOp(r, in, m, wsize) orelse return false;
            in.ops[1] = C.regOp(wsize, m.reg);
            in.nops = 2;
        },
        0xA4, 0xA5, 0xAC, 0xAD => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = if (op < 0xA8) .shld else .shrd;
            in.ops[0] = C.rmOp(r, in, m, wsize) orelse return false;
            in.ops[1] = C.regOp(wsize, m.reg);
            in.ops[2] = if (op & 1 == 0) (C.imm(r, in, 1) orelse return false) else .{ .kind = .cl };
            in.nops = 3;
        },
        0xAF => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = .imul;
            in.ops[0] = C.regOp(wsize, m.reg);
            in.ops[1] = C.rmOp(r, in, m, wsize) orelse return false;
            in.nops = 2;
        },
        0xB0, 0xB1, 0xC0, 0xC1 => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = if (op < 0xC0) .cmpxchg else .xadd;
            const size: u8 = if (op & 1 == 0) 1 else wsize;
            in.ops[0] = C.rmOp(r, in, m, size) orelse return false;
            in.ops[1] = C.regOp(size, m.reg);
            in.nops = 2;
            isa.* = .i486;
        },
        0xB2, 0xB4, 0xB5 => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = switch (op) {
                0xB2 => .lss,
                0xB4 => .lfs,
                else => .lgs,
            };
            in.ops[0] = C.regOp(wsize, m.reg);
            in.ops[1] = C.rmOp(r, in, m, 0) orelse return false;
            in.nops = 2;
        },
        0xB6, 0xB7, 0xBE, 0xBF => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = if (op < 0xB8) .movzx else .movsx;
            in.ops[0] = C.regOp(wsize, m.reg);
            in.ops[1] = C.rmOp(r, in, m, if (op & 1 == 0) 1 else 2) orelse return false;
            in.nops = 2;
        },
        0xBA => {
            if (!S.modrm(r, &m) or m.reg < 4) return false;
            in.mnem = ([_]Mnem{ .bt, .bts, .btr, .btc })[m.reg - 4];
            in.ops[0] = C.rmOp(r, in, m, wsize) orelse return false;
            in.ops[1] = C.imm(r, in, 1) orelse return false;
            in.nops = 2;
        },
        0xBC, 0xBD => {
            if (!S.modrm(r, &m)) return false;
            in.mnem = if (op == 0xBC) .bsf else .bsr;
            in.ops[0] = C.regOp(wsize, m.reg);
            in.ops[1] = C.rmOp(r, in, m, wsize) orelse return false;
            in.nops = 2;
        },
        0xC8...0xCF => {
            // bswap of a 16-bit register is undefined.
            if (!in.osize) return false;
            in.mnem = .bswap;
            in.ops[0] = C.regOp(4, op & 7);
            in.nops = 1;
            isa.* = .i486;
        },
        else => return false,
    }
    return true;
}

/// x87 escapes D8-DF.  False when undefined.
fn x87(r: *Reader, in: *Insn, op: u8) bool {
    const x = r.u8_() orelse return false;
    const m = ModRM{ .mod = x >> 6, .reg = (x >> 3) & 7, .rm = x & 7 };
    const st0 = Operand{ .kind = .st, .reg = 0 };
    const sti = Operand{ .kind = .st, .reg = m.rm };
    const arith = [_]Mnem{ .fadd, .fmul, .fcom, .fcomp, .fsub, .fsubr, .fdiv, .fdivr };
    const iarith = [_]Mnem{ .fiadd, .fimul, .ficom, .ficomp, .fisub, .fisubr, .fidiv, .fidivr };
    if (m.mod != 3) {
        // Memory forms: mnemonic and operand size per (opcode, reg).
        const Form = struct { Mnem, u8 };
        const f: Form = switch (op) {
            0xD8 => .{ arith[m.reg], 4 },
            0xDA => .{ iarith[m.reg], 4 },
            0xDC => .{ arith[m.reg], 8 },
            0xDE => .{ iarith[m.reg], 2 },
            0xD9 => switch (m.reg) {
                0 => .{ .fld, 4 },
                2 => .{ .fst, 4 },
                3 => .{ .fstp, 4 },
                4 => .{ .fldenv, 0 },
                5 => .{ .fldcw, 0 },
                6 => .{ .fnstenv, 0 },
                7 => .{ .fnstcw, 0 },
                else => return false,
            },
            0xDB => switch (m.reg) {
                0 => .{ .fild, 4 },
                2 => .{ .fist, 4 },
                3 => .{ .fistp, 4 },
                5 => .{ .fld, 10 },
                7 => .{ .fstp, 10 },
                else => return false,
            },
            0xDD => switch (m.reg) {
                0 => .{ .fld, 8 },
                2 => .{ .fst, 8 },
                3 => .{ .fstp, 8 },
                4 => .{ .frstor, 0 },
                6 => .{ .fnsave, 0 },
                7 => .{ .fnstsw, 0 },
                else => return false,
            },
            else => switch (m.reg) { // DF
                0 => .{ .fild, 2 },
                2 => .{ .fist, 2 },
                3 => .{ .fistp, 2 },
                4 => .{ .fbld, 0 },
                5 => .{ .fild, 8 },
                6 => .{ .fbstp, 0 },
                7 => .{ .fistp, 8 },
                else => return false,
            },
        };
        in.mnem = f[0];
        in.ops[0] = C.rmOp(r, in, m, f[1]) orelse return false;
        in.nops = 1;
        return true;
    }
    switch (op) {
        0xD8 => {
            in.mnem = arith[m.reg];
            if (m.reg == 2 or m.reg == 3) {
                in.ops[0] = sti;
                in.nops = 1;
            } else {
                in.ops[0] = st0;
                in.ops[1] = sti;
                in.nops = 2;
            }
        },
        0xD9 => switch (m.reg) {
            0, 1 => {
                in.mnem = if (m.reg == 0) .fld else .fxch;
                in.ops[0] = sti;
                in.nops = 1;
            },
            else => in.mnem = switch (x) {
                0xD0 => .fnop,
                0xE0 => .fchs,
                0xE1 => .fabs,
                0xE4 => .ftst,
                0xE5 => .fxam,
                0xE8 => .fld1,
                0xE9 => .fldl2t,
                0xEA => .fldl2e,
                0xEB => .fldpi,
                0xEC => .fldlg2,
                0xED => .fldln2,
                0xEE => .fldz,
                0xF0 => .f2xm1,
                0xF1 => .fyl2x,
                0xF2 => .fptan,
                0xF3 => .fpatan,
                0xF4 => .fxtract,
                0xF5 => .fprem1,
                0xF6 => .fdecstp,
                0xF7 => .fincstp,
                0xF8 => .fprem,
                0xF9 => .fyl2xp1,
                0xFA => .fsqrt,
                0xFB => .fsincos,
                0xFC => .frndint,
                0xFD => .fscale,
                0xFE => .fsin,
                0xFF => .fcos,
                else => return false,
            },
        },
        0xDA => {
            if (x != 0xE9) return false;
            in.mnem = .fucompp;
        },
        0xDB => in.mnem = switch (x) {
            0xE0 => .fneni,
            0xE1 => .fndisi,
            0xE2 => .fnclex,
            0xE3 => .fninit,
            0xE4 => .fsetpm,
            else => return false,
        },
        0xDC => {
            // st(i) is the destination; sub/subr and div/divr swap rows.
            in.mnem = switch (m.reg) {
                0 => .fadd,
                1 => .fmul,
                4 => .fsubr,
                5 => .fsub,
                6 => .fdivr,
                7 => .fdiv,
                else => return false,
            };
            in.ops[0] = sti;
            in.ops[1] = st0;
            in.nops = 2;
        },
        0xDD => {
            in.mnem = switch (m.reg) {
                0 => .ffree,
                2 => .fst,
                3 => .fstp,
                4 => .fucom,
                5 => .fucomp,
                else => return false,
            };
            in.ops[0] = sti;
            in.nops = 1;
        },
        0xDE => {
            if (m.reg == 3) {
                if (x != 0xD9) return false;
                in.mnem = .fcompp;
                return true;
            }
            in.mnem = switch (m.reg) {
                0 => .faddp,
                1 => .fmulp,
                4 => .fsubrp,
                5 => .fsubp,
                6 => .fdivrp,
                7 => .fdivp,
                else => return false,
            };
            in.ops[0] = sti;
            in.ops[1] = st0;
            in.nops = 2;
        },
        else => { // DF
            if (x != 0xE0) return false;
            in.mnem = .fnstsw;
            in.ops[0] = .{ .kind = .reg16, .reg = 0, .size = 2 };
            in.nops = 1;
        },
    }
    return true;
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
