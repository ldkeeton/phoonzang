struct rec {
	unsigned char kind;	/* < 25 means the slot is in use */
	unsigned char map_piece;
	char pad[18];
	unsigned char flag;	/* +0x14 */
	char pad2[17];
};				/* 0x26-byte stride */

struct kind_info {
	char state;
	char pad[3];
};				/* 4-byte stride */

extern struct rec slot_records[];
extern struct kind_info kind_state_table[];
extern int game_state_arg, party_map_piece;
extern long saved_area_a;
extern char flag_bitset[], report_line1_none[], report_line2_none[];
long gfx_save_area();

/* for each of 20 slots, roll percent chances scaled by level to report it in a message box */
roll_slot_detection_report(level)
int level;
{
	int slot, chance_piece, chance_state, chance_any, found;
	char title[80], line1[80], line2[80];

	chance_piece = 0;
	chance_state = 0;
	chance_any = 0;
	switch (level) {	/* higher levels fall through, accumulating 25% steps */
	case 7:
		chance_any += 25;
	case 6:
		chance_any += 25;
	case 5:
		chance_state += 25;
		chance_any += 25;
	case 4:
		chance_state += 25;
		chance_any += 25;
	case 3:
		chance_piece += 25;
		chance_state += 25;
	case 2:
		chance_piece += 25;
		chance_state += 25;
	case 1:
		chance_piece += 50;
	case 0:
		;
	}
	free_picture_slot(2);
	ds_app_file_TSNH(0, 14);
	saved_area_a = gfx_save_area(0x37, 0x92, 0x109, 0xc6);	/* box corners */
	restore_area_a_draw_glyph();
	found = 0;
	for (slot = 0; slot < 20; slot++) {
		if (slot_records[slot].kind >= 25)	/* unused slot */
			continue;
		if (random_below(100) < chance_any)
			goto hit;
		if (kind_state_table[slot_records[slot].kind].state == game_state_arg && random_below(100) < chance_state)
			goto hit;
		if (slot_records[slot].map_piece != party_map_piece)
			continue;
		if (random_below(100) < chance_piece)
			goto hit;
		continue;
hit:
		found = 1;
		load_message_string(slot + 0x6a4, title);	/* per-slot message */
		line1[0] = 0;
		line2[0] = 0;
		if (slot_records[slot].flag == 0 || (slot == 4 && test_bit(flag_bitset, 0x40)))
			load_message_string(0x1e7, line1);
		else {
			load_message_string(0x1e5, line1);
			load_message_string(slot_records[slot].kind + 0x6ea, line2);	/* per-kind message */
		}
		draw_centered_lines(title, line1, line2);
	}
	if (found == 0) {	/* nothing detected */
		load_message_string(0x1e6, title);
		draw_centered_lines(title, report_line1_none, report_line2_none);
	}
	gfx_restore_area(saved_area_a, 1);
	ds_app_VRKV(0x37, 0x92, 0x109, 0xc6);
	free_picture_slot(14);
	ds_app_file_TSNH(3, 2);
}
