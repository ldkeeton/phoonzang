/* moves one member's queued item actions one cell row toward the party,
   refilling the action table at every cell that is free to take the action */

extern int cell_slot_ref[][3];		/* cells: member*10 + item slot, 0 free */
extern int cell_overlay_code[5][3][3];	/* per-cell tables; [3] steps a row */
extern char *party_char[];
extern fill_action_slot_table_vmnpc(), run_party_screen_animation(),
	wait_ticks_with_events();

advance_member_cell_actions(member)
int member;
{
	int item, queued_cell, row, col, new_row, new_col;

	/* item slots are 0x2c-byte records; +0x2a is the cell it holds */
	for (item = 0; item < ((unsigned char *)party_char[member])[417]; ++item) {
		queued_cell = party_char[member][item * 44 + 42];
		if (queued_cell == -1)		/* item holds no cell */
			continue;
		row = queued_cell / 10;
		col = queued_cell % 10;
		cell_slot_ref[row][col] = 0;	/* release the cell it held */
		party_char[member][item * 44 + 42] = -1;
		/* [3][row][col]: same column, one row nearer (row 0 stays) */
		new_row = cell_overlay_code[3][row][col] / 10;
		new_col = cell_overlay_code[3][row][col] % 10;
		if (cell_slot_ref[new_row][new_col] == 0) {
			cell_slot_ref[new_row][new_col] = member * 10 + item;
			party_char[member][item * 44 + 42] = new_row * 10 + new_col;
			/* -1: plain group 0 refill of the new cell */
			fill_action_slot_table_vmnpc(member, new_row, new_col, -1);
		}
	}
	run_party_screen_animation();
	wait_ticks_with_events(4);			/* 4: ticks for the move to play */
}
