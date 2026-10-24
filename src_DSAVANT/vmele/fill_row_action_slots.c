/* picks three distinct free cells in each drawn cell row and lets the first
   member with a free item slot claim them for an action */

extern int cell_slot_ref[3][3];		/* cells: member*10 + item slot, 0 free */
extern int cell_action_marks[3][3];
	/* 1 when the cell has an action assigned */
extern int npc_melee;			/* melee's next state is 0x12 (VMNPC) */
extern int row_limit;			/* last cell row that is drawn (0..2) */
extern int party_member_count;		/* member loops run 1..this */
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
				/* row picks the first member tried */
				switch (row) {
				case 0:
					claim_cell_for_member(1, row, pick);
					break;
				case 1:
					if (party_member_count == 1)
						claim_cell_for_member(1, row, pick);
					else
						claim_cell_for_member(2, row, pick);
					break;
				case 2:
					if (party_member_count == 1)
						claim_cell_for_member(1, row, pick);
					else if (party_member_count == 2)
						claim_cell_for_member(2, row, pick);
					else
						claim_cell_for_member(3, row, pick);
					break;
				}
			}
		}
	}
}
