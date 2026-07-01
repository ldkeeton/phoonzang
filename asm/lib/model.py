from dataclasses import dataclass, field
from typing import Optional

import polars as pl
import numpy as np

IS_UNKNOWN = 0
IS_CODE = 1
IS_DATA = 2

CONF_CODE = 1.0
CONF_UNKNOWN = 0.0
CONF_DATA = -1.0

ARBITER_THRESHOLD = 0.3


@dataclass(order=True)
class SeedInfo:
    address: int
    source_phase: str
    confidence: float
    reason: str = ''


@dataclass
class TargetInfo:
    address: int
    reason: str
    confidence: float
    source_offset: int = -1


@dataclass
class BasicBlock:
    start: int
    end: int
    exit_type: str
    exit_targets: list[int] = field(default_factory=list)
    confidence: float = 0.0
    provenance: str = ''


@dataclass
class JumpTableInfo:
    table_addr: int
    jmp_addr: int
    targets: list[int] = field(default_factory=list)
    max_index: Optional[int] = None
    validated: bool = False
    validation_ok: bool = False
    table_end: int = 0


class PhaseContext:
    def __init__(self, binary_data, start_offset=0, name='',
                 sidecar_entry=None, detailed_timings=False,
                 trace=None):
        n = len(binary_data)
        self.binary_data = binary_data
        self.layers = pl.DataFrame({
            'raw_byte': pl.Series('raw_byte', list(binary_data),
                                  dtype=pl.UInt8),
            'seed': pl.Series('seed', [CONF_UNKNOWN] * n,
                              dtype=pl.Float32),
        })
        self.label_map = {}
        self.code_targets: dict[int, TargetInfo] = {}
        self.annotations = []
        self.start_offset = start_offset
        self.name = name
        self.seeds: list[SeedInfo] = []
        self.sidecar_entry = sidecar_entry
        self.detailed_timings = detailed_timings
        self.trace = trace
        self.iteration: int | None = None
        self.blocks: list[BasicBlock] = []
        self.jump_tables: list[JumpTableInfo] = []
        self.carve_strings_1: list[tuple[int, int]] = []
        self.report = {
            'binary': {'name': name, 'size': n, 'start_offset': start_offset},
            'phases': {},
            'jump_tables': [],
            'arbiter': {},
            'classification': {},
            'verify': {},
        }

    @property
    def code_target_set(self):
        return set(self.code_targets.keys())

    @property
    def bitmap(self):
        if 'squashed' not in self.layers.columns:
            return bytearray(len(self.binary_data))
        return bytearray(self.layers['squashed'].to_numpy())

    def add_layer(self, name, series):
        self.layers = self.layers.with_columns(series.alias(name))


def is_iteration_column(name):
    return name.startswith('squashed_iter_')
