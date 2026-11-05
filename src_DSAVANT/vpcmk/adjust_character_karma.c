/* Let a party member adjust their karma stat. */
#include "msg.h"
#include "structs/pcrec.h"

extern int saved_screen_handle_low;
extern int saved_screen_handle_high;
extern struct pc_rec party_records[];
extern int hotspot_rects[];
extern int hotspot_hit;
extern long call_save_area();
extern int call_restore_screen();
extern int call_restore_area();
extern int call_show_area();
extern int call_set_text_pos();
extern int call_set_text_color();
extern int display_character_statistics();
extern long draw_dialog_button_prompt();
extern int flush_keyboard();
extern int random_below();
extern int draw_number_field();
extern int poll_hotspots();
extern int flash_button();

adjust_character_karma(member_index)
int member_index;
{
	long saved_stat_area;
	long saved_button_area;

	call_restore_screen(saved_screen_handle_low, saved_screen_handle_high,
		0, 0);
	saved_stat_area = call_save_area(139, 77, 151, 83);
	display_character_statistics(member_index, 0);
	saved_button_area = draw_dialog_button_prompt(MSG_CASTING_KARMA,
		112, 151, 16, 1, 0);
	flush_keyboard();

	for (;;) {
		party_records[member_index].stat[7] = random_below(19);
		if (party_records[member_index].gender == 1)
			party_records[member_index].stat[7]++;

		call_restore_area(saved_stat_area, 0);
		call_set_text_pos(139, 77);
		call_set_text_color(1, 0);
		draw_number_field(party_records[member_index].stat[7], 2, 0);
		call_show_area(139, 77, 151, 83);
		poll_hotspots(hotspot_rects);
		if (hotspot_hit != 0)
			break;
	}

	flash_button(112, 151, 16, 1, 1);
	flash_button(112, 151, 16, 1, 0);
	call_restore_area(saved_button_area, 1);
	call_restore_area(saved_stat_area, 1);
	display_character_statistics(member_index, 0);
	call_show_area(0, 0, 319, 199);
}
