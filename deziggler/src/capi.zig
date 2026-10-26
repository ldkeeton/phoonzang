//! C ABI over ``deziggler.zig``, one export per call.  Arrays travel as
//! pointer + length; returned buffers belong to the context and stay valid
//! until the next call that replaces them (or ``zg_destroy``).

const std = @import("std");
const z = @import("deziggler.zig");

const gpa = std.heap.smp_allocator;

fn slice(comptime T: type, p: ?[*]const T, n: usize) []const T {
    return if (n == 0) &.{} else p.?[0..n];
}

export fn zg_create(bytes: ?[*]const u8, len: usize, code_lo: u32, code_hi: u32, bias: i32) ?*z.Ctx {
    return z.Ctx.init(gpa, slice(u8, bytes, len), .{ .code_lo = code_lo, .code_hi = code_hi, .bias = bias }) catch null;
}

export fn zg_destroy(c: *z.Ctx) void {
    c.deinit();
}

/// Size of one ``Insn`` record, for bindings to check their layout.
export fn zg_insn_size() usize {
    return @sizeOf(z.Insn);
}

export fn zg_decode_all(c: *z.Ctx, out_len: *usize) ?[*]const z.Insn {
    const a = c.decodeAll() catch return null;
    out_len.* = a.len;
    return a.ptr;
}

/// 0 on success, -1 on failure (bad pool slice or out of memory).
export fn zg_set_symbols(
    c: *z.Ctx,
    pool: ?[*]const u8,
    pool_len: usize,
    syms: ?[*]const z.Symbol,
    nsyms: usize,
    scopes: ?[*]const z.Scope,
    nscopes: usize,
    hints: ?[*]const z.Hint,
    nhints: usize,
) c_int {
    c.setSymbols(slice(u8, pool, pool_len), slice(z.Symbol, syms, nsyms), slice(z.Scope, scopes, nscopes), slice(z.Hint, hints, nhints)) catch return -1;
    return 0;
}

export fn zg_render(c: *z.Ctx, starts: ?[*]const u32, n: usize, out_len: *usize) ?[*]const u8 {
    const text = c.render(slice(u32, starts, n)) catch return null;
    out_len.* = text.len;
    return text.ptr;
}

export fn zg_mnemonic(id: u8, out_len: *usize) [*]const u8 {
    const s = z.mnemonicName(id);
    out_len.* = s.len;
    return s.ptr;
}
