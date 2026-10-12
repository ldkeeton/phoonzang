"""Byte verification and NASM source generation.

This package was split out of the former monolithic ``compare.py``.  The
stable facade remains ``lib.compare``: every public and private name
that callers imported from the old module is re-exported here, so existing
imports (``from lib.compare import verify, _c_bytes_to_records``)
continue to work unchanged.
"""

from lib.verify.assemble import (
    micro_assemble,
    is_semantically_equivalent,
    clear_assemble_cache,
)

from lib.compare.constants import (
    _FILE_FORMATS,
    _INT_DESCRIPTIONS,
    _DOS_FUNCTIONS,
    _BIOS_VIDEO_FUNCTIONS,
    _BIOS_DISK_FUNCTIONS,
    _BIOS_KBD_FUNCTIONS,
    _BIOS_TIMER_FUNCTIONS,
    _BIOS_MOUSE_FUNCTIONS,
    _BIOS_SYSTEM_FUNCTIONS,
    _INT_FUNCTION_TABLES,
    _CFLOW_INSTS,
)
from lib.compare.interrupts import (
    _set_insn_fields,
    _annotate_interrupts,
)
from lib.compare.detect import (
    _try_decode_block,
    _detect_jump_table,
    _detect_file_format,
)
from lib.compare.inline import _generate_inline_code
from lib.compare.postprocess import _postprocess_data_blocks
from lib.compare.jumptables import (
    _parse_hex_offset,
    _merge_jump_table_specs,
    _usable_jump_label,
    _records_overlapping,
    _ensure_jump_case_label,
    _ensure_global_label,
    _jump_table_record,
    _replace_jump_span,
    _inject_jump_tables,
    _rewrite_jump_dispatchers,
)
from lib.compare.records import (
    _record_span,
    _emit_label,
    _flush_data_block,
    _emit_label_record,
    _BARE_MEM_RE,
    _BARE_FLOW_RE,
    _count_bare_addrs,
    count_frozen_addrs,
)
from lib.compare.analysis import (
    _compute_func_boundaries,
    _direct_flow_targets,
    _is_conditional_branch,
    _direct_branch_targets,
    _function_roots,
    _compute_branch_ownership,
    _local_branch_targets,
    _compute_local_labels,
)
from lib.compare.symbols import (
    _data_prefix,
    _resolve_mem_symbols,
    _resolve_imm_symbols,
    _build_address_records,
)
from lib.compare.coverrides import (
    _c_bytes_to_records,
    _merge_label_records,
    _apply_c_overrides,
)
from lib.compare.splitting import (
    _select_split_ranges,
    _extend_split_ranges_with_local_tails,
    _partition_function_records,
)
from lib.compare.render import (
    _group_db_lines,
    _render_data_block,
    _render_records,
    _render_mz_header,
    _render_ovr_header,
    _build_source,
)
from lib.compare.verify import verify
