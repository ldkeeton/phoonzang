from dataclasses import dataclass, field

IS_UNKNOWN = 0
IS_CODE = 1
IS_DATA = 2


@dataclass
class Region:
    """A contiguous range of bytes at file offset *start*."""
    start: int
    end: int

    @property
    def length(self):
        return self.end - self.start


@dataclass
class Annotation:
    """A directive from one pipeline phase to another.

    *kind* is one of ``'force_code'``, ``'force_data'``, ``'jump_table'``,
    ``'string'``.  The *source* field records which phase produced it.
    """
    offset: int
    length: int
    kind: str
    source: str
    payload: dict = field(default_factory=dict)


@dataclass
class PhaseContext:
    """Mutable context threaded through every phase in the pipeline.

    Phases read *binary_data* and modify *bitmap*, *instructions*,
    *label_map*, and *annotations*.  *change_count* is bumped whenever
    the bitmap is modified so the scheduler can detect fixpoint.
    """
    binary_data: bytes
    bitmap: bytearray = field(default_factory=lambda: bytearray())
    instructions: list = field(default_factory=list)
    label_map: dict = field(default_factory=dict)
    code_targets: set = field(default_factory=set)
    annotations: list = field(default_factory=list)
    stats: dict = field(default_factory=dict)
    start_offset: int = 0
    name: str = ''
    cascade_promoted: set = field(default_factory=set)
    change_count: int = 0

    def mark_changed(self):
        self.change_count += 1
