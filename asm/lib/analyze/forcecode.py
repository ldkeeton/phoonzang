"""Force-code phase.

After recursive descent, known function offsets (from pattern matching,
trampoline discovery) that the classifier missed are forcibly marked as
IS_CODE, along with their prologue and body up to the first terminator.

This is the extracted logic that was previously inline in main.py's
``process()`` function (the label_map force-code loop).
"""

from capstone import Cs, CS_ARCH_X86, CS_MODE_16

from lib.model import PhaseContext, IS_CODE
from lib.pipeline.phase import Phase


_TERMINATORS = {'ret', 'retf', 'iret', 'hlt'}


class ForceCodePhase(Phase):
    """Force-code function bodies that the classifier missed."""

    def run(self, ctx: PhaseContext):
        if not ctx.label_map:
            return

        data = ctx.binary_data
        bitmap = ctx.bitmap
        n = len(data)

        md = Cs(CS_ARCH_X86, CS_MODE_16)
        md.detail = True

        for off in sorted(ctx.label_map.keys()):
            lbl = ctx.label_map[off]

            expected = f'loc_{off:04x}'
            if lbl == expected or lbl.endswith(f'_{expected}'):
                continue

            func_start = off
            for i in range(min(16, off), 0, -1):
                p = off - i
                if data[p] == 0x55:
                    try:
                        prev = list(md.disasm(data[p:off], p))
                    except Exception:
                        prev = []
                    if prev and prev[-1].address + prev[-1].size == off:
                        func_start = p
                        break

            for i in range(func_start, off):
                if i < n and bitmap[i] != IS_CODE:
                    bitmap[i] = IS_CODE
                    ctx.mark_changed()

            end = min(func_start + 512, n)
            try:
                for insn in md.disasm(data[func_start:end], func_start):
                    if insn.mnemonic in _TERMINATORS:
                        end = insn.address + insn.size
                        break
                    end = insn.address + insn.size
            except Exception:
                pass
            for i in range(func_start, min(end, n)):
                if bitmap[i] != IS_CODE:
                    bitmap[i] = IS_CODE
                    ctx.mark_changed()
