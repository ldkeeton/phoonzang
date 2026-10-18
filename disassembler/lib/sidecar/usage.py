"""Which sidecar entries the build applied.

A sidecar entry is a stated fact about the binary.  One that applies to
nothing -- its offset no longer decodes the way it says, its name was
renamed, another source overrode it -- is a stale fact, and the build must
say so rather than drop it: every consumer reports each entry it applied
(:meth:`SidecarUse.applied`) or why it did not (:meth:`SidecarUse.skipped`),
and :meth:`SidecarUse.check` fails on any entry left unapplied.

An entry is applied when it decided the outcome or agreed with what the
analysis found anyway.  A later report wins, so a consumer that applies an
entry and another that overrides it leave it skipped.
"""

from .errors import SidecarError


class SidecarUse:
    """The applied/skipped state of one binary's sidecar entries."""

    def __init__(self, where):
        self.where = where              # ``binaries.<name>``
        self._expected = {}             # (key, ident) -> None
        self._state = {}                # (key, ident) -> None (applied) | reason
        # (key, ident) -> (offset, name) a naming entry put in the label map;
        # it is applied if the final label map still says so
        # (:meth:`check_names`).
        self.final_names = {}

    def expect(self, key, ident):
        self._expected[(key, str(ident))] = None

    def applied(self, key, ident):
        self._state[(key, str(ident))] = None

    def skipped(self, key, ident, reason):
        self._state[(key, str(ident))] = reason

    def is_applied(self, key, ident):
        k = (key, str(ident))
        return k in self._state and self._state[k] is None

    def expected(self, key):
        """The idents expected under *key*, in sidecar order."""
        return [ident for k, ident in self._expected if k == key]

    def check_names(self, label_map):
        """Settle each naming entry against the final *label_map*."""
        for (key, ident), (offset, name) in self.final_names.items():
            final = label_map.get(offset)
            if str(final) == name:
                self.applied(key, ident)
            else:
                self.skipped(key, ident, f'{name!r} at 0x{offset:04x} was '
                                         f'renamed {str(final)!r}')

    def problems(self):
        out = []
        for key, ident in self._expected:
            state = self._state.get((key, ident), 'applied to nothing')
            if state is not None:
                out.append(f'{self.where}.{key}[{ident}]: {state}')
        return out

    def check(self):
        problems = self.problems()
        if problems:
            raise SidecarError(
                f'{len(problems)} sidecar entr{"y" if len(problems) == 1 else "ies"} '
                f'not applied:\n  ' + '\n  '.join(problems))
