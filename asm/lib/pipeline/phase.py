"""Phase base class and context for the pipeline.

Each phase is a small, focused step that reads from *ctx* and
writes results back to it (bitmap, annotations, etc.).
"""

from abc import ABC, abstractmethod
from lib.model import PhaseContext


class Phase(ABC):
    """Base class for a single pipeline phase.

    Subclasses override ``run()`` to inspect and mutate *ctx*.
    """

    @property
    def name(self):
        return self.__class__.__name__

    @abstractmethod
    def run(self, ctx: PhaseContext):
        """Execute this phase.  Modify *ctx* in place."""
        ...
