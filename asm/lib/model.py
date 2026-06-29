import polars as pl
import numpy as np

IS_UNKNOWN = 0
IS_CODE = 1
IS_DATA = 2

CONF_CODE = 1.0
CONF_UNKNOWN = 0.0
CONF_DATA = -1.0

ARBITER_THRESHOLD = 0.3


class PhaseContext:
    """Mutable context threaded through every phase in the pipeline.

    *binary_data* is read-only.  *layers* is a Polars DataFrame where
    each column is a named phase output (f32 confidence values).
    The ``raw_byte`` column is always present.

    Phases read their input slot via ``ctx.layers[input_slot]`` and
    write their output via ``ctx.layers.with_columns(result.alias(name))``.

    *seeds* is an accumulator for entry-point offsets discovered by
    earlier phases (sidecar, trampoline, error-handler).  The
    ``RecursiveDescentPhase`` reads it.
    """

    def __init__(self, binary_data, start_offset=0, name='',
                 sidecar_entry=None):
        n = len(binary_data)
        self.binary_data = binary_data
        self.layers = pl.DataFrame({
            'raw_byte': pl.Series('raw_byte', list(binary_data),
                                  dtype=pl.UInt8),
            'seed': pl.Series('seed', [CONF_UNKNOWN] * n,
                              dtype=pl.Float32),
        })
        self.label_map = {}
        self.code_targets = set()
        self.annotations = []
        self.start_offset = start_offset
        self.name = name
        self.seeds = set()
        self.sidecar_entry = sidecar_entry

    @property
    def bitmap(self):
        """Legacy property: returns squashed classification as bytearray.

        Used by ``disassemble()`` and ``verify()`` which expect a
        u8 array where 1=CODE, 2=DATA, 0=UNKNOWN.
        """
        if 'squashed' not in self.layers.columns:
            return bytearray(len(self.binary_data))
        return bytearray(self.layers['squashed'].to_numpy())

    def add_layer(self, name, series):
        self.layers = self.layers.with_columns(series.alias(name))
