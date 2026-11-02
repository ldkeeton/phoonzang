/* visits each drawn battle row's cells in random order and places a monster
   in every free one, from the group the row starts with */

extern int cell_slot_ref[3][3];		/* cells: group*10 + unit, 0 free */
extern int cell_action_marks[3][3];
	/* 1 when the cell has an action assigned */
extern int npc_melee;			/* melee's next state is 0x12 (VMNPC) */
extern int row_limit;			/* last cell row that is drawn (0..2) */
extern int monster_group_count;		/* group loops run 1..this */
extern int random_below();

fill_row_action_slots()
{
	int row, pick, col, used[3];

	for (row = 0; row <= row_limit; row++) {
		/* the whole row is re-picked, so clear its cell marks */
		for (col = 0; col < 3; col++) {
			cell_action_marks[row][col] = 0;
			used[col] = 0;
		}
		for (col = 0; col < 3; col++) {
			do {
				pick = random_below(3);
			} while (used[pick] == 1);
			/* column 0 is preferred in row 0 and in an NPC melee */
			if (used[0] == 0) {
				if (npc_melee == 1 || row == 0)
					pick = 0;
			}
			used[pick] = 1;
			if (cell_slot_ref[row][pick] == 0) {
				/* row picks the first group tried */
				switch (row) {
				case 0:
					claim_cell_for_group(1, row, pick);
					break;
				case 1:
					if (monster_group_count == 1)
						claim_cell_for_group(1, row, pick);
					else
						claim_cell_for_group(2, row, pick);
					break;
				case 2:
					if (monster_group_count == 1)
						claim_cell_for_group(1, row, pick);
					else if (monster_group_count == 2)
						claim_cell_for_group(2, row, pick);
					else
						claim_cell_for_group(3, row, pick);
					break;
				}
			}
		}
	}
}
