/* fills the action entries for table cell (row, col) from member's slot
   record; group selects the record group, -1 meaning group 0 plus randomized
   targets unless the forced byte is 0xfe */

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
extern int npc_melee;
extern int dest_alt_arg;
extern int random_below();

fill_action_slot_table_vmnpc(member, row, col, group)
int member, row, col, group;
{
	int rec, entry, action, target, randomized;

	if (party_char[member][415] == -1)	/* no slot record */
		return;
	rec = party_char[member][415];
	randomized = 0;
	if (group == -1) {
		group = 0;
		if (slot_rec_forced[rec][0] != 254)
			randomized = 1;
	}
	/* one entry per record in group's range */
	for (entry = slot_rec_first[rec][group];
		entry < slot_rec_first[rec][group] + slot_rec_count[rec][group];
		++entry) {
		action = slot_rec_action[rec][entry];
		/* group 0 with a forced value (1..0xfd) overrides the record */
		if (group == 0 && slot_rec_forced[rec][0] > 0
				&& slot_rec_forced[rec][0] < 254) {
			if (slot_rec_forced[rec][0] == 253) {	/* action 0, target 0 */
				action = 0;
				target = 0;
			} else {
				target = slot_rec_forced[rec][0];
				if (party_char_ext[member][215] == 71) {
					/* melee into VMNPC: split the destination argument */
					if (npc_melee == 1) {
						action = dest_alt_arg / 256;
						target = dest_alt_arg % 256;
					} else if (randomized == 0) {
						action = 1;
						target = 11;
					}
				}
			}
		} else {
			/* base action plus random spread, then its target */
			action += random_below(slot_rec_action_rand[rec][entry]);
			target = slot_rec_target[rec][action];
			if (randomized != 0)
				target += random_below(slot_rec_target_rand[rec][action]);
		}
		/* cells are 3 wide; each holds 10 entries of (action, target, roll) */
		action_slot_mode[row * 3 + col] = group;
		action_slot_table[row * 90 + col * 30 + entry * 3] = action;
		action_slot_table[row * 90 + col * 30 + entry * 3 + 1] = target;
		/* roll = base + 1 + random extra, from target's 4-byte range entry */
		action_slot_table[row * 90 + col * 30 + entry * 3 + 2] =
			slot_rec_ranges[rec][target * 4] + 1;
		action_slot_table[row * 90 + col * 30 + entry * 3 + 2] +=
			random_below(slot_rec_ranges[rec][target * 4 + 1]);
	}
}
