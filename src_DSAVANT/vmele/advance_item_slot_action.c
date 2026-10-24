/* fires one item slot's queued action: ages its roll and timer, charges the
   action from the member's stat difference, and pays the party when it
   bottoms out */

extern char *party_char[];
extern char *party_char_ext[];
extern char cell_key_grid[];
extern int cell_slot_ref[][3];		/* cells: member*10 + item slot, 0 free */
extern unsigned char action_bitmap[];	/* 0xcc-byte bitmap */
extern long item_action_reward;		/* running total shared by the party */
extern int random_below();
extern set_bitmap_bit();

advance_item_slot_action(member, item, attack, defense)
int member, item, attack, defense;
{
	int step_max;
	char *rec;
	int charge_delta, i, fired, row, col;

	rec = party_char[member] + item * 44;	/* 0x2c-byte item slots */
	fired = 0;
	if (((unsigned char *)rec)[16] > 0) {	/* action is running */
		step_max = (long)*(int *)(rec + 8) * 5 / 100;
		*(int *)(rec + 6) += random_below(step_max) + 1;
		if (*(int *)(rec + 6) > *(int *)(rec + 8))
			*(int *)(rec + 6) = *(int *)(rec + 8);
	}
	if (*(int *)(rec + 6) <= 0) {		/* restart 6..11 ticks */
		*(int *)(rec + 6) = 0;
		((unsigned char *)rec)[16] = random_below(6) + 6;
	}
	/* +0x23 is the action's resistance, +2 its charges, +4 the cap */
	charge_delta = (attack - defense) - ((unsigned char *)rec)[35];
	*(int *)(rec + 2) += charge_delta;
	if (*(int *)(rec + 2) > *(int *)(rec + 4))
		*(int *)(rec + 2) = *(int *)(rec + 4);
	if (*(int *)(rec + 2) > 0)
		goto scan;
	/* charges are gone: the action fires and the slot goes idle */
	*(int *)(rec + 2) = 0;
	*(int *)(rec + 6) = 0;
	((unsigned char *)rec)[34] = 3;
	fired = 1;
	if (member == 0)
		goto scan;
	if (member >= 1 && member <= 5)		/* other five members */
		item_action_reward += *(long *)(party_char_ext[member] + 64);
	if (*(signed char *)(rec + 42) != -1) {	/* slot holds a cell */
		row = *(signed char *)(rec + 42) / 10;
		col = *(signed char *)(rec + 42) % 10;
		cell_slot_ref[row][col] = 0;
		*(signed char *)(rec + 42) = -1;
	}
	if (((unsigned char *)party_char_ext[member])[226] & 1)
		/* ext flag bit 0: set the member's bit in the action bitmap */
		set_bitmap_bit(action_bitmap,
			((unsigned char *)party_char_ext[member])[224], 1);
scan:
	/* ten per-cell counters: count down the live ones */
	for (i = 0; i < 10; i++)
		if (((unsigned char *)rec)[14 + i] > 0 &&
		    ((unsigned char *)rec)[14 + i] != 255)
			((unsigned char *)rec)[14 + i]--;
	if (((unsigned char *)rec)[19] == 0)	/* flag clear: drop the resistance */
		((unsigned char *)rec)[35] = 0;
	i = *(signed char *)(rec + 41);	/* level eases toward 0 */
	*(signed char *)(rec + 41) = i < 0 ? i + 1 : i > 0 ? i - 1 : i;
	/* member 0: top the level up from the 0x248-byte cell-key page's
	   +0x14c byte */
	if (member == 0 &&
	    ((unsigned char *)cell_key_grid)[step_max * 584 + 332] > 0) {
		i = ((unsigned char *)cell_key_grid)[step_max * 584 + 332] / 10 + 2;
		if (*(signed char *)(rec + 41) < i)
			(*(signed char *)(rec + 41))++;
	}
	if (((unsigned char *)rec)[36] > 0)	/* +0x24: countdown */
		((unsigned char *)rec)[36]--;
	if (((unsigned char *)rec)[43] == 3)	/* +0x2b: phase wraps 3 -> 0 */
		((unsigned char *)rec)[43] = 0;
	/* a fired action for another member ends on phase 2 */
	if (((unsigned char *)rec)[34] != 3 && member != 0 &&
	    ((unsigned char *)rec)[43] == 2) {
		*(int *)(rec + 2) = 0;
		*(int *)(rec + 6) = 0;
		((unsigned char *)rec)[34] = 3;
	}
	return fired;
}
