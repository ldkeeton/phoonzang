from dataclasses import dataclass, field
from typing import Optional

import polars as pl
import numpy as np

from lib.mz import parse_entrypoint as parse_mz_entrypoint
from lib.sidecar.offsets import _parse_offset
from lib.sidecar.ranges import validate_force_ranges

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
    hard: bool = False


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
    # Leading words that are switch keys, not code pointers (an inline
    # key/target table read by a non-returning call).
    keys: int = 0


class PhaseContext:
    def __init__(self, binary_data, start_offset=0, name='',
                 sidecar_entry=None, detailed_timings=False,
                 trace=None, entry_points=None):
        n = len(binary_data)
        self.binary_data = binary_data
        self.layers = pl.DataFrame({
            'raw_byte': pl.Series('raw_byte', list(binary_data),
                                  dtype=pl.UInt8),
            'seed': pl.Series('seed', [CONF_UNKNOWN] * n,
                              dtype=pl.Float32),
        })
        self.label_map = {}
        self.csav_functions: dict[int, int] = {}
        self.code_targets: dict[int, TargetInfo] = {}
        self.branch_targets: set[int] = set()
        self.branch_edges: set[tuple[int, int]] = set()
        self.entry_targets: set[int] = set()
        self.annotations = []
        self.start_offset = start_offset
        self.name = name
        if sidecar_entry is not None:
            validate_force_ranges(
                sidecar_entry.get('force_data', []),
                sidecar_entry.get('force_code', []),
                f'binary {name or "<unnamed>"}',
            )
        self.hard_data = np.zeros(n, dtype=bool)
        self.hard_code = np.zeros(n, dtype=bool)
        for index, data_range in enumerate(
                (sidecar_entry or {}).get('force_data', [])):
            start = _parse_offset(data_range['start'],
                                  f'force_data[{index}].start')
            end = _parse_offset(data_range.get('end', data_range['start']),
                                f'force_data[{index}].end') + 1
            self.hard_data[start:min(end, n)] = True
        self.seeds: list[SeedInfo] = []
        #: Handler offsets a declared ``dispatch_table`` names (D7.2c-2d).  The
        #: table is a contract, not a guess: each handler is a function entry,
        #: so the label pass categorizes it from its own body and the splitter
        #: gives it its own fragment even when its label stays a bare
        #: ``loc_<addr>``.
        self.dispatch_handlers: set[int] = set()
        seed_addresses = set()
        mz_entry = parse_mz_entrypoint(binary_data)
        if mz_entry is not None:
            self.seeds.append(SeedInfo(
                address=mz_entry, source_phase='mz_entry', confidence=1.0,
                reason='MZ header CS:IP',
            ))
            seed_addresses.add(mz_entry)
        for address in entry_points or ():
            address = int(address)
            if 0 <= address < n and address not in seed_addresses:
                self.seeds.append(SeedInfo(
                    address=address, source_phase='explicit_entry',
                    confidence=1.0, reason='explicit entry point',
                ))
                seed_addresses.add(address)
        self.sidecar_entry = sidecar_entry
        self.segments = None
        self.segment_flow = None
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
    def label_target_set(self):
        """Code targets suitable for global function-style labels.

        Direct jumps and conditional branches remain classifier targets, but
        are emitted as local labels when they stay within a function.
        """
        targets = self.code_target_set
        return (targets - self.branch_targets) | (targets & self.entry_targets)

    def is_hard_data(self, address):
        return (0 <= address < len(self.hard_data)
                and bool(self.hard_data[address]))

    @property
    def bitmap(self):
        if 'squashed' not in self.layers.columns:
            return bytearray(len(self.binary_data))
        return bytearray(self.layers['squashed'].to_numpy())

    def add_layer(self, name, series):
        self.layers = self.layers.with_columns(series.alias(name))


def is_iteration_column(name):
    return name.startswith('squashed_iter_')
