/* finds target in a character class's target table and picks a matching
   target slot from it */

extern char *party_char_ext[];
extern int maze_variant;
extern char target_weight[];
extern char *aztec_setmem();
extern int clamp_between();
extern int random_below();

pick_target_slot(char_idx, target)
int char_idx, target;
{
	int slot, row, tries, prev, class_id, pick;
	int target_table[12][6];
	char picked[12];

	/* class byte below 2 has no table */
	if (party_char_ext[char_idx][229] < 2)
		return -1;
	class_id = party_char_ext[char_idx][229];
	for (slot = 0; slot < 12; slot++)
		for (row = 0; row < 6; row++)
			target_table[slot][row] = -1;
	/* rows 1..7: fixed target values per class */
	target_table[1][0] = -1;
	target_table[1][1] = 94;
	target_table[1][2] = 94;
	target_table[1][3] = 95;
	target_table[1][4] = 96;
	target_table[1][5] = 96;
	target_table[2][0] = 60;
	target_table[2][1] = 61;
	target_table[2][2] = 61;
	target_table[2][3] = 62;
	target_table[2][4] = 63;
	target_table[2][5] = 64;
	target_table[3][0] = 66;
	target_table[3][1] = 66;
	target_table[3][2] = 67;
	target_table[3][3] = 68;
	target_table[3][4] = 69;
	target_table[3][5] = 70;
	target_table[4][0] = 77;
	target_table[4][1] = 77;
	target_table[4][2] = 78;
	target_table[4][3] = 79;
	target_table[4][4] = 80;
	target_table[4][5] = 80;
	target_table[5][0] = -1;
	target_table[5][1] = 72;
	target_table[5][2] = 73;
	target_table[5][3] = 74;
	target_table[5][4] = 75;
	target_table[5][5] = 75;
	target_table[6][0] = 82;
	target_table[6][1] = 83;
	target_table[6][2] = 84;
	target_table[6][3] = 86;
	target_table[6][4] = 85;
	target_table[6][5] = 87;
	target_table[7][0] = 88;
	target_table[7][1] = 89;
	target_table[7][2] = 90;
	target_table[7][3] = 91;
	target_table[7][4] = 92;
	target_table[7][5] = 105;
	/* row 8 only exists for even maze variants */
	if (maze_variant % 2 == 0) {
		target_table[8][0] = -1;
		target_table[8][1] = 98;
		target_table[8][2] = 99;
		target_table[8][3] = 99;
		target_table[8][4] = 100;
		target_table[8][5] = 100;
	}
	for (slot = 0; slot < 6; slot++) {
		if (target_table[class_id][slot] == target) {
			aztec_setmem(picked, 12, 0);
			picked[class_id] = 1;
			prev = clamp_between(slot - 1, 0, 5);
			tries = 0;
			do {
				/* pick an unused target 1..8 */
				do {
					pick = random_below(8) + 1;
				} while (picked[pick]);
				picked[pick] = 1;
				tries++;
				/* weight byte 0x23 is the cutoff */
				if (target_weight[class_id * 12 + pick] > 35) {
					if (target_table[pick][prev] != -1)
						return target_table[pick][prev];
				}
			} while (tries < 3);
			return -1;
		}
	}
	return -1;
}
