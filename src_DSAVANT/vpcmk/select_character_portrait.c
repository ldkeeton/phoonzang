/* Select a character portrait in the member creation dialog. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int hotspot_rects[];
extern int hotspot_hit;
extern int set_hotspot();
extern long draw_dialog_button_prompt();
extern int call_restore_area();
extern int load_member_icon();
extern int draw_loaded_member_icon();
extern int call_show_area();
extern int poll_hotspots();
extern int flash_button();

select_character_portrait(member_index, area_x, area_y)
int member_index, area_x, area_y;
{
	int button;
	long saved_area;

	set_hotspot(0, 12, 17, 38, 74, 11, 8);
	set_hotspot(1, 39, 17, 67, 74, 9, 10);
	saved_area = draw_dialog_button_prompt(MSG_SELECT_PORTRAIT,
		88, 151, 24, 1, 2);
	flush_keyboard();

	for (;;) {
		call_restore_area(area_x, area_y, 0);
		load_member_icon(party_records[member_index].portrait, 0);
		draw_loaded_member_icon(member_index, 14, 18);
		call_show_area(14, 18, 66, 74);
		do {
			button = poll_hotspots(hotspot_rects) - 1;
		} while (!hotspot_hit);

		switch (button) {
		case 0:
			party_records[member_index].portrait =
				(party_records[member_index].portrait + 32) % 33;
			break;
		case 1:
			party_records[member_index].portrait =
				(party_records[member_index].portrait + 1) % 33;
			break;
		}
		if (button == 2)
			break;
	}

	flash_button(88, 151, 24, 1, 1);
	flash_button(88, 151, 24, 1, 0);
	call_restore_area(saved_area, 1);
	draw_loaded_member_icon(member_index, 14, 18);
	call_show_area(0, 0, 319, 199);
}
