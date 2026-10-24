/* advances one member's item slot actions, packs the slots that survive and
   announces how many of them fired */

struct item_slot {
	char head[34];			/* 0x00 */
	unsigned char state;		/* 0x22: 3 or more means the slot is spent */
	char spare[7];			/* 0x23 */
	signed char cell;		/* 0x2a: cell the slot holds, -1 for none */
	char tail;			/* 0x2b */
};

extern struct item_slot *party_char[];	/* 0x1a4-byte member records */
extern char *party_char_ext[];		/* 0xe8-byte extended member records */
extern int cell_slot_ref[][3];		/* cells: member*10 + item slot, 0 free */
extern int message_delay;
extern char space_text[];		/* single space between count and name */
extern advance_item_slot_action(), restore_areas_redraw_glyph(),
	wait_ticks_with_events(), format_int_decimal(), aztec_strcat(),
	aztec_strlen(), load_message_string(), show_centered_message(),
	titlecase_string();

advance_member_item_actions(member)
int member;
{
	int kept, slot, row, col, fired, len;
	char buf[80];

	kept = 0;
	fired = 0;
	/* 417: the member's item slot count */
	for (slot = 0; slot < ((unsigned char *)party_char[member])[417]; slot++) {
		if (party_char[member][slot].state < 3) {
			/* 221: attack strength charged against the action */
			if (advance_item_slot_action(member, slot,
				((unsigned char *)party_char_ext[member])[221], 0) == 1)
				fired++;
		}
		/* a slot whose action just fired is spent, so it is left out */
		if (party_char[member][slot].state < 3) {
			party_char[member][kept] = party_char[member][slot];
			if (party_char[member][kept].cell != -1) {
				row = party_char[member][kept].cell / 10;
				col = party_char[member][kept].cell % 10;
				/* the slot now sits at its new index */
				cell_slot_ref[row][col] = member * 10 + kept;
			}
			kept++;
		}
	}
	if (fired > 0) {
		restore_areas_redraw_glyph(1);	/* show the message strip */
		wait_ticks_with_events(1);
		if (((unsigned char *)party_char[member])[417] == 1)
			buf[0] = 0;		/* one slot: leave out the count */
		else {
			format_int_decimal(fired, buf);
			aztec_strcat(buf, space_text);
		}
		/* 416: 32-byte name row; +0 singular, +16 plural */
		aztec_strcat(buf, party_char_ext[member]
			+ ((fired == 1 ? 0 : 1) << 4)
			+ (((unsigned char *)party_char[member])[416] << 5));
		titlecase_string(buf);
		len = aztec_strlen(buf);
		buf[len] = ' ';
		load_message_string(3524, buf + len + 1);	/* 3524: message id */
		show_centered_message(buf, 17);			/* 17: its message sound */
		wait_ticks_with_events(message_delay);
	}
	((unsigned char *)party_char[member])[417] = kept;	/* new slot count */
}
