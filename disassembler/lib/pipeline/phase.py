from abc import ABC, abstractmethod
from dataclasses import dataclass, field

import polars as pl

from lib.model import PhaseContext


@dataclass
class PhaseContract:
    """Declared side effects of a pipeline phase.

    This is the SINGLE SOURCE OF TRUTH for what a phase reads and writes.
    PipelineDef validates these at construction time.
    """
    input_slot: str = ''
    output_slot: str = ''
    reads_columns: list[str] = field(default_factory=list)
    writes_columns: list[str] = field(default_factory=list)
    reads_ctx: list[str] = field(default_factory=list)
    writes_ctx: list[str] = field(default_factory=list)
    requires_binary: bool = False
    requires_label_map: bool = False

    @property
    def name(self):
        return ''


class Phase(ABC):
    """Base class for a single pipeline phase.

    Each phase declares its *input_slot* (which column to read) and
    *output_slot* (which column to write).  ``run()`` is a pure-ish
    function: it reads its input column and ``ctx``, and returns a
    Polars Series of f32 confidence values.

    Subclasses MUST set ``contract`` as a class-level PhaseContract.
    This is validated by PipelineDef at construction time.
    """

    contract: PhaseContract = PhaseContract()

    @property
    def input_slot(self):
        if hasattr(self, '_input_slot'):
            return self._input_slot
        cls = type(self)
        if 'input_slot' in cls.__dict__ and not isinstance(cls.__dict__['input_slot'], property):
            return cls.__dict__['input_slot']
        return self.contract.input_slot

    @input_slot.setter
    def input_slot(self, value):
        self._input_slot = value

    @property
    def output_slot(self):
        if hasattr(self, '_output_slot'):
            return self._output_slot
        cls = type(self)
        if 'output_slot' in cls.__dict__ and not isinstance(cls.__dict__['output_slot'], property):
            return cls.__dict__['output_slot']
        return self.contract.output_slot

    @output_slot.setter
    def output_slot(self, value):
        self._output_slot = value

    @property
    def name(self):
        return self.contract.name or self.__class__.__name__

    @property
    def requires_binary(self):
        return self.contract.requires_binary

    @property
    def requires_label_map(self):
        return self.contract.requires_label_map

    @abstractmethod
    def run(self, input_col: pl.Series | None,
            ctx: PhaseContext) -> pl.Series:
        """Execute this phase.  Returns an f32 confidence series."""
