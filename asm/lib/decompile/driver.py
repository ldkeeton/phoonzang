"""Decompiler entry point: build IR, extract functions, emit C source."""

from .c_types import C_FOOTER
from .emit import _emit_function_inline_asm, _emit_function_pure_c, _emit_preamble
from .extract import _extract_functions, _find_global_data_offsets
from .lift import _capstone_to_ir


def decompile(cs_instructions: list, label_map: dict[int, str],
              code_targets: set[int], name: str) -> str:
    """Main decompile entry point.

    Args:
        cs_instructions: list of Capstone CsInsn objects.
        label_map: {offset: label_name}.
        code_targets: set of offsets classified as code.
        name: binary name (e.g. 'vga').

    Returns:
        Complete C source text.
    """
    # Convert Capstone instructions to our IR
    instructions = _capstone_to_ir(cs_instructions)

    # Find global data offsets
    data_offsets = _find_global_data_offsets(instructions)

    # Extract functions
    functions = _extract_functions(instructions, label_map, code_targets)

    # Build C output
    parts = [_emit_preamble(name, data_offsets)]

    # Emit each function
    for fn in functions:
        if fn.inline_asm:
            parts.append(_emit_function_inline_asm(fn, label_map))
        else:
            parts.append(_emit_function_pure_c(fn, data_offsets, label_map))

    parts.append(C_FOOTER)
    return '\n'.join(parts)
