/* moves each monster in a group one battle row toward the party when the
   cell ahead is free, refilling the action table for its new cell */

extern int cell_slot_ref[][3];		/* cells: group*10 + unit, 0 free */
extern int next_cell_toward_party[3][3];
extern char *battle_groups[];
extern fill_action_slot_table(), run_party_screen_animation(),
	wait_ticks_with_events();

advance_group_toward_party(group)
int group;
{
	int idx, queued_cell, row, col, new_row, new_col;

	/* units are 0x2c-byte combatants; +0x2a is the cell held, 417 unit_count */
	for (idx = 0; idx < ((unsigned char *)battle_groups[group])[417]; ++idx) {
		queued_cell = battle_groups[group][idx * 44 + 42];
		if (queued_cell == -1)		/* not on the grid */
			continue;
		row = queued_cell / 10;
		col = queued_cell % 10;
		cell_slot_ref[row][col] = 0;	/* release the cell it held */
		battle_groups[group][idx * 44 + 42] = -1;
		/* [3][row][col]: same column, one row nearer (row 0 stays) */
		new_row = next_cell_toward_party[row][col] / 10;
		new_col = next_cell_toward_party[row][col] % 10;
		if (cell_slot_ref[new_row][new_col] == 0) {
			cell_slot_ref[new_row][new_col] = group * 10 + idx;
			battle_groups[group][idx * 44 + 42] = new_row * 10 + new_col;
			/* -1: plain group 0 refill of the new cell */
			fill_action_slot_table(group, new_row, new_col, -1);
		}
	}
	run_party_screen_animation();
	wait_ticks_with_events(4);			/* 4: ticks for the move to play */
}
