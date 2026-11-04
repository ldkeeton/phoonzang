/* tries groups in order until one claims the requested cell */

extern int assign_monster_group_cell();

claim_cell_for_group(group, row, col)
int group, row, col;
{
	for (; group <= 3; group++) {
		/* stop when the group successfully claims the cell */
		if (assign_monster_group_cell(group, row, col) == 0)
			return;
	}
}
