"""Backward-compatibility shim — delegates to lib.compare."""
from lib.compare import verify, clear_assemble_cache, _try_decode_block, _detect_jump_table, _detect_file_format
from lib.verify.assemble import micro_assemble, is_semantically_equivalent, clear_assemble_cache as _clear_cache
