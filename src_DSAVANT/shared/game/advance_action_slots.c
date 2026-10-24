/* writes one byte per action entry of cell (b, c) into out, advancing each
   entry's roll, target and action as they run out; refills the cell from
   group 0 when its targets are exhausted in another group */

extern char *party_char[];
extern unsigned char slot_rec_first[][350];
extern unsigned char slot_rec_count[][350];
extern unsigned char slot_rec_action[][350];
extern unsigned char slot_rec_action_rand[][350];
extern unsigned char slot_rec_target[][350];
extern unsigned char slot_rec_target_rand[][350];
extern unsigned char slot_rec_ranges[][350];
extern unsigned char slot_rec_forced[][350];
extern unsigned char action_slot_mode[];
extern unsigned char action_slot_table[];

advance_action_slots(member, item, b, c, consume, out)
int member, item, b, c, consume;
char *out;
{
	int rec, entry, action, target, roll, unused, len;

	*out = 0;
	if (party_char[member][415] == -1)	/* no slot record */
		return;
	rec = party_char[member][415];
	len = 0;
	/* the entries of the group the cell was filled for */
	for (entry = slot_rec_first[rec][action_slot_mode[b * 3 + c]];
			entry < slot_rec_first[rec][action_slot_mode[b * 3 + c]]
			+ slot_rec_count[rec][action_slot_mode[b * 3 + c]]; ++entry) {
		/* item entries are 0x2c bytes; any of these keeps the entry as is */
		if (party_char[member][item * 44 + 34] == 2
				|| ((unsigned char *)party_char[member])[item * 44 + 17] > 0
				|| ((unsigned char *)party_char[member])[item * 44 + 16] > 0) {
			action = action_slot_table[b * 90 + c * 30 + entry * 3];
			target = slot_rec_target[rec][action];
		} else {
			target = action_slot_table[b * 90 + c * 30 + entry * 3 + 1];
			roll = action_slot_table[b * 90 + c * 30 + entry * 3 + 2];
			if (consume)
				--roll;
			if (roll <= 0) {	/* roll used up: next target */
				action = action_slot_table[b * 90 + c * 30 + entry * 3];
				++target;
				/* past the action's target range: new action */
				if (slot_rec_target[rec][action] + slot_rec_target_rand[rec][action] - 1
					< target) {
					if (action_slot_mode[b * 3 + c] != 0) {
						/* refill from group 0 and start over */
						action_slot_mode[b * 3 + c] = 0;
						fill_action_slot_table(member, b, c, 0);
						advance_action_slots(member, item, b, c, 0, out);
						return;
					}
					action = random_below(slot_rec_action_rand[rec][entry])
						+ slot_rec_action[rec][entry];
					action_slot_table[b * 90 + c * 30 + entry * 3] = action;
					target = slot_rec_target[rec][action];
				}
				action_slot_table[b * 90 + c * 30 + entry * 3 + 1] = target;
				roll = random_below(slot_rec_ranges[rec][target * 4 + 1])
					+ slot_rec_ranges[rec][target * 4];
			}
			action_slot_table[b * 90 + c * 30 + entry * 3 + 2] = roll;
		}
		/* byte before the target's range entry */
		out[len] = slot_rec_ranges[rec][target * 4 - 1];
		/* 0x79 or 0x8d at 0x19e: slot_rec_forced[1] goes before this byte */
		if (party_char[member][414] == 121
				|| ((unsigned char *)party_char[member])[414] == 141) {
			++len;
			out[len] = out[len - 1];
			out[len - 1] = slot_rec_forced[rec][1];
		}
		if (out[len] != 0)	/* skip zero bytes */
			++len;
	}
	out[len] = 0;	/* NUL-terminate */
}
