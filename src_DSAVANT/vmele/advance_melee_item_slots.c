/* advances member 0's item slots from each member's attack and defense, then
   orders the party by the member state byte and picks the return state */

extern char *party_char[];			/* pointers to 0x2c-byte item records */
extern char member_state[], party_records[];	/* 0x248-byte records */
extern char member_roster_index[];
extern int party_char_count, party_return_state, party_screen_done;
extern advance_item_slot_action(), copy_member_party_record(),
	draw_party_member_panel(),
	play_sound_effect(), aztec_swapmem();

advance_melee_item_slots()
{
	int member, other;
	char frame_pad[628];		/* keeps the original 0x27c frame */
	int swap, found;

	for (member = 0; member < party_char_count; member++) {
		/* 0x22: item action phase; 0x2c: item record stride */
		if (((unsigned char *)party_char[0])[member * 44 + 34] < 3) {
			if (advance_item_slot_action(0, member,
				/* +6 attack, +7 defense */
				*(unsigned char *)(member_state + member * 584 + 6),
				*(unsigned char *)(member_state + member * 584 + 7)) == 1) {
				copy_member_party_record(member);
				draw_party_member_panel(member, 1);	/* reveal */
				play_sound_effect(
					*(unsigned char *)(member_state + member * 584 + 2) + 8);
			}
		}
	}
	/* refresh every pc record from the roster */
	for (member = 0; member < party_char_count; member++)
		copy_member_party_record(member);
	/* order by the state byte, moving the roster record, the item record and
	   the two parallel word arrays together */
	for (member = 0; member < party_char_count - 1; member++) {
		for (other = member + 1; other < party_char_count; other++) {
			/* 584: roster record size, 44: item record size */
			if (*(unsigned char *)(member_state + member * 584 + 5) >	/* +5 state */
			    *(unsigned char *)(member_state + other * 584 + 5)) {
				aztec_swapmem(party_records + member * 584,
					party_records + other * 584, 584);
				aztec_swapmem(party_char[0] + member * 44,
					party_char[0] + other * 44, sizeof(char[44]));
				swap = *(int *)(member_roster_index + member * 2 + 2);
				*(int *)(member_roster_index + member * 2 + 2) =
					*(int *)(member_roster_index + other * 2 + 2);
				*(int *)(member_roster_index + other * 2 + 2) = swap;
				swap = *(int *)(member_state + member * 2 + 2962);	/* +0xb92 */
				*(int *)(member_state + member * 2 + 2962) =
					*(int *)(member_state + other * 2 + 2962);
				*(int *)(member_state + other * 2 + 2962) = swap;
			}
		}
	}
	other = 0;				/* members in state >= 2 */
	found = 0;				/* a member is in phase 2 */
	for (member = 0; member < party_char_count; member++) {
		if (*(unsigned char *)(member_state + member * 584 + 5) >= 2)
			other++;
		if (((unsigned char *)party_char[0])[member * 44 + 43] == 2)	/* +0x2b */
			found = 1;
	}
	if (other == party_char_count) {	/* all spent: back to the battle */
		party_return_state = 8;
		party_screen_done = 1;
	} else if (found > 0) {			/* reopen the party screen */
		party_return_state = 23;	/* 0x17: party screen */
		party_screen_done = 1;
	}
}
