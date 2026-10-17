"""Declarative pipeline definition with contract validation."""

from dataclasses import dataclass, field

from lib.model import PhaseContext
from lib.pipeline.phase import Phase, PhaseContract
from lib.pipeline.functional import run_functional


_INITIAL_CTX_FIELDS = {
    'binary_data', 'start_offset', 'name', 'sidecar_entry',
    'detailed_timings', 'trace', 'iteration', 'seeds',
    'code_targets', 'label_map', 'annotations', 'blocks',
    'jump_tables', 'carve_strings_1', 'report', 'layers',
    'hard_data', 'hard_code',
    'branch_targets', 'branch_edges', 'entry_targets',
}
_INITIAL_COLUMNS = {'raw_byte', 'seed'}


@dataclass
class Stage:
    """A named pipeline stage with explicitly scoped ctx visibility.

    Each stage declares which ctx fields it reads and writes.
    Phases within a stage cannot read ctx fields written by later stages.
    """
    name: str
    phases: list[Phase]
    reads_ctx: list[str] = field(default_factory=list)
    writes_ctx: list[str] = field(default_factory=list)
    is_iterative: bool = False
    max_iterations: int = 1


class PipelineDef:
    """Declarative pipeline that validates phase contracts at build time.

    Usage::

        pipeline = PipelineDef(name='classify', stages=[
            Stage('discovery', phases=[SeedPhase(), SidecarPhase(), ...]),
            Stage('refinement', phases=[PruneDeadPhase(), ...]),
        ])
    """

    def __init__(self, name: str = '', stages: list[Stage] | None = None,
                 phases: list[Phase] | None = None):
        self.name = name
        self.stages = stages or []
        if phases:
            self.stages.append(Stage('default', phases=phases))

        if self.stages:
            self._validate()

    def _validate(self):
        """Check all phase contracts for consistency."""
        errors = []

        columns_written: set[str] = set(_INITIAL_COLUMNS)
        ctx_written: set[str] = set(_INITIAL_CTX_FIELDS)

        for stage in self.stages:
            stage_cols_written: set[str] = set()
            stage_ctx_written: set[str] = set()

            for phase in stage.phases:
                name = phase.name
                c = phase.contract

                # input_slot must exist as a prior column
                in_slot = phase.input_slot or c.input_slot
                available = columns_written | stage_cols_written
                if in_slot and in_slot not in available:
                    errors.append(
                        f'{name}: input_slot="{in_slot}" not found '
                        f'(available: {sorted(columns_written)})')

                # reads_columns must exist
                for col in (c.reads_columns or []):
                    if col == 'ALL':
                        continue
                    if col not in available:
                        errors.append(
                            f'{name}: reads_column="{col}" not found '
                            f'(available: {sorted(columns_written)})')

                # reads_ctx must exist
                for field in (c.reads_ctx or []):
                    if field not in ctx_written:
                        errors.append(
                            f'{name}: reads_ctx="{field}" not found'
                            f'(stage: {stage.name})')

                # output_slot must not be duplicated in same stage
                out_slot = phase.output_slot or c.output_slot
                if out_slot:
                    if out_slot in stage_cols_written:
                        errors.append(
                            f'{name}: output_slot="{out_slot}" '
                            f'duplicated in stage "{stage.name}"')
                    stage_cols_written.add(out_slot)

                # Register columns and ctx written
                for col in (c.writes_columns or []):
                    columns_written.add(col)
                if out_slot and out_slot not in (c.writes_columns or []):
                    columns_written.add(out_slot)
                for field in (c.writes_ctx or []):
                    if field not in ctx_written:
                        ctx_written.add(field)
                        stage_ctx_written.add(field)

                # requires_label_map requires label_map in ctx
                if c.requires_label_map and 'label_map' not in ctx_written:
                    errors.append(
                        f'{name}: requires_label_map=True but '
                        f'no prior phase writes ctx.label_map')

                columns_written |= stage_cols_written

        if errors:
            raise ValueError(
                f'Pipeline "{self.name}" validation failed:\n' +
                '\n'.join(f'  - {e}' for e in errors))

    def print_report(self):
        """Print a human-readable dependency report."""
        lines = []
        lines.append(f'Pipeline: {self.name}')
        lines.append('─' * 60)

        columns_written: set[str] = set(_INITIAL_COLUMNS)
        ctx_written: set[str] = set(_INITIAL_CTX_FIELDS)

        for stage in self.stages:
            lines.append(f'\nStage: {stage.name}'
                         f'{" (iterative, max=" + str(stage.max_iterations) + ")" if stage.is_iterative else ""}')
            lines.append('─' * 40)

            for phase in stage.phases:
                c = phase.contract
                name = phase.name
                in_slot = phase.input_slot or c.input_slot
                out_slot = phase.output_slot or c.output_slot

                in_info = f' in="{in_slot}"' if in_slot else ''
                out_info = f' out="{out_slot}"' if out_slot else ''
                lines.append(f'  {name}{in_info}{out_info}')

                reads_all = 'ALL' in (c.reads_columns or [])
                if reads_all:
                    reads_text = f'ALL ({len(columns_written)} prior columns)'
                else:
                    reads_from_prior = [col for col in (c.reads_columns or [])
                                        if col in columns_written]
                    reads_text = ', '.join(reads_from_prior) if reads_from_prior else '—'

                writes_text = ', '.join(c.writes_columns) if c.writes_columns else '—'
                reads_ctx_text = ', '.join(c.reads_ctx) if c.reads_ctx else '—'
                writes_ctx_text = ', '.join(c.writes_ctx) if c.writes_ctx else '—'

                lines.append(f'    reads:  columns=[{reads_text}]')
                lines.append(f'    writes: columns=[{writes_text}]')
                lines.append(f'    reads:  ctx={{{reads_ctx_text}}}')
                lines.append(f'    writes: ctx={{{writes_ctx_text}}}')

                if c.requires_binary or c.requires_label_map:
                    flags = []
                    if c.requires_binary: flags.append('binary')
                    if c.requires_label_map: flags.append('label_map')
                    lines.append(f'    needs: {", ".join(flags)}')

                for col in (c.writes_columns or []):
                    columns_written.add(col)
                if out_slot and out_slot not in (c.writes_columns or []):
                    columns_written.add(out_slot)
                for field in (c.writes_ctx or []):
                    ctx_written.add(field)

            if stage.is_iterative:
                cols_in_feedback = columns_written - {'raw_byte', 'seed', 'squashed', 'force_code', ''}
                lines.append(f'  ── iterative feedback ──')
                lines.append(f'  data_boundary/prior_code reads ALL columns except '
                             f'[raw_byte, seed, squashed, squashed_iter_*, phase.output_slot]')
                lines.append(f'  ({len(cols_in_feedback)} columns feed back)')

        lines.append('\n')
        lines.append('Cross-stage ctx flow:')
        prev_ctx = set(_INITIAL_CTX_FIELDS)
        for stage in self.stages:
            for phase in stage.phases:
                c = phase.contract
                for field in (c.reads_ctx or []):
                    if field not in prev_ctx:
                        lines.append(f'  {phase.name} reads ctx.{field} from prior stage')
                for field in (c.writes_ctx or []):
                    prev_ctx.add(field)

        return '\n'.join(lines)

    def run(self, ctx: PhaseContext):
        """Execute all stages sequentially."""
        for stage in self.stages:
            run_functional(ctx, stage.phases)

    def run_iterative(self, ctx: PhaseContext,
                      classify_phases: list[Phase] | None = None,
                      refine_phases: list[Phase] | None = None):
        """Execute the iterative pipeline pattern."""
        from lib.pipeline.iterative import run_iterative
        from lib.phases.settle import SettlePhase
        from lib.phases.arbiter import ArbiterPhase

        if classify_phases:
            all_iter = classify_phases + [
                SettlePhase(input_slot=classify_phases[-1].output_slot)]
            run_iterative(ctx, all_iter,
                          arbiter_phase=ArbiterPhase(), max_iter=3)
