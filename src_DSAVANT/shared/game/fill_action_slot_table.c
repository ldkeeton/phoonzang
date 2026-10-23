extern char *party_char[];
extern char *party_char_ext[];
extern unsigned char slot_rec_first[][350];
extern unsigned char slot_rec_action[][350];
extern unsigned char slot_rec_action_rand[][350];
extern unsigned char slot_rec_target[][350];
extern unsigned char slot_rec_target_rand[][350];
extern unsigned char slot_rec_forced[][350];
extern unsigned char slot_rec_count[][350];
extern unsigned char slot_rec_ranges[][350];
extern unsigned char action_slot_mode[];
extern unsigned char action_slot_table[];

/* fills the action entries for table cell (b, c) from character a's slot
   record; d picks the record group, -1 meaning group 0 plus randomized
   targets unless the forced byte is 0xfe */
fill_action_slot_table(a, b, c, d)
int a, b, c, d;
{
	int v1, i, j, k, flag;

	if (party_char[a][415] == -1)	/* no slot record */
		return;
	v1 = party_char[a][415];
	flag = 0;
	if (d == -1) {
		d = 0;
		if (slot_rec_forced[v1][0] != 254)
			flag = 1;
	}
	/* one entry per record in group d's range */
	for (i = slot_rec_first[v1][d]; i < slot_rec_first[v1][d] + slot_rec_count[v1][d]; ++i) { 
		j = slot_rec_action[v1][i];
		/* group 0 with a forced value (1..0xfd) overrides the record */
		if (d == 0 && slot_rec_forced[v1][0] > 0 && slot_rec_forced[v1][0] < 254) {
			if (slot_rec_forced[v1][0] == 253) {	/* forced to action 0, target 0 */
				j = 0;
				k = 0;
			} else {
				k = slot_rec_forced[v1][0];
				/* special case: ext byte 0xd7 == 0x47 forces action 1, target 0xb */
				if (party_char_ext[a][215] == 71 && flag == 0) {
					j = 1;
					k = 11;
				}
			}
		} else {
			/* base action plus random spread, then its target */
			j += random_below(slot_rec_action_rand[v1][i]);
			k = slot_rec_target[v1][j];
			if (flag != 0)
				k += random_below(slot_rec_target_rand[v1][j]);
		}
		/* cells are 3 wide; each holds 10 entries of (action, target, roll) */
		action_slot_mode[b * 3 + c] = d;
		action_slot_table[b * 90 + c * 30 + i * 3] = j;
		action_slot_table[b * 90 + c * 30 + i * 3 + 1] = k;
		/* roll = base + 1 + random extra, from target k's 4-byte range entry */
		action_slot_table[b * 90 + c * 30 + i * 3 + 2] = slot_rec_ranges[v1][k * 4] + 1;
		action_slot_table[b * 90 + c * 30 + i * 3 + 2] += random_below(slot_rec_ranges[v1][k * 4 + 1]);
	}
}
