/* for each of 20 slots, roll percent chances scaled by level to report it in a
   message box */

#include "msg.h"

#include "structs/location.h"
#include "structs/slotstat.h"

extern struct slot_record slot_records[];
extern struct location_record location_records[];
extern int game_state_arg, party_map_piece;
extern long saved_area_a;
extern char flag_bitset[], report_line1_none[], report_line2_none[];
long call_save_area();

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
	load_monster_picture(0, 14);
	saved_area_a = call_save_area(55, 146, 265, 198);	/* box corners */
	restore_area_a_draw_glyph();
	found = 0;
	for (slot = 0; slot < 20; slot++) {
		if (slot_records[slot].location >= 25)	/* unused slot */
			continue;
		if (random_below(100) < chance_any)
			goto hit;
		if (location_records[slot_records[slot].location].game_state
			== game_state_arg
			&& random_below(100) < chance_state)
			goto hit;
		/* The closest check: the NPC is on the party's map piece number. */
		if (slot_records[slot].map_piece != party_map_piece)
			continue;
		if (random_below(100) < chance_piece)
			goto hit;
		continue;
hit:
		found = 1;
		load_message_string(slot + MSG_SLOT_NAME_BASE, title);	/* per-slot message */
		line1[0] = 0;
		line2[0] = 0;
		if (slot_records[slot].health == 0
			|| (slot == 4 && test_bit(flag_bitset, 64)))
			load_message_string(MSG_IS_DEAD, line1);
		else {
			load_message_string(MSG_AT, line1);
			load_message_string(slot_records[slot].location + MSG_LOCATION_NAME_BASE,
				line2);	/* location name */
		}
		draw_centered_lines(title, line1, line2);
	}
	if (found == 0) {	/* nothing detected */
		load_message_string(MSG_FAILURE_486, title);
		draw_centered_lines(title, report_line1_none, report_line2_none);
	}
	call_restore_area(saved_area_a, 1);
	dissolve_or_show_area(55, 146, 265, 198);
	free_picture_slot(14);
	load_monster_picture(3, 2);
}
