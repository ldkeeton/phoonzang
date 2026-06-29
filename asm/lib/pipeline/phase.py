from abc import ABC, abstractmethod

import polars as pl

from lib.model import PhaseContext


class Phase(ABC):
    """Base class for a single pipeline phase.

    Each phase declares its *input_slot* (which column to read) and
    *output_slot* (which column to write).  ``run()`` is a pure
    function: it reads its input column and ``ctx``, and returns a
    Polars Series of f32 confidence values (CONF_CODE / CONF_UNKNOWN /
    CONF_DATA).

    Subclasses that need the raw binary data set *requires_binary*.
    Subclasses that need ``ctx.label_map`` set *requires_label_map*.
    """

    input_slot: str = ''
    output_slot: str = ''
    requires_binary: bool = False
    requires_label_map: bool = False

    @property
    def name(self):
        return self.__class__.__name__

    @abstractmethod
    def run(self, input_col: pl.Series | None,
            ctx: PhaseContext) -> pl.Series:
        """Execute this phase.  Returns an f32 confidence series."""
