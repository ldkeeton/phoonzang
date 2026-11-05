/* Draw a party member's age, deaths, and experience needed for the next
   level, then wait for input. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int mouse_active;
extern int member_screen_cache_low, member_screen_cache_high;
extern int call_get_mouse(), call_restore_screen();
extern int data_record_io(), load_message_string();
extern int call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs(), format_int_decimal();
extern int draw_padded_number(), call_show_area();
extern unsigned char get_filtered_key();

show_member_age_and_next_level(member_index)
int member_index;
{
	int key;
	int mouse_result;
	int mouse_x;
	int mouse_y;
	long next_experience;
	long experience_thresholds[16];
	int level_offset;
	char text[80];

	mouse_result = 0;
	if (mouse_active)
		mouse_result = call_get_mouse(&mouse_x, &mouse_y);
	call_restore_screen(member_screen_cache_low, member_screen_cache_high, 0, 0);
	data_record_io(0, experience_thresholds,
		party_records[member_index].profession, 0);
	load_message_string(MSG_AGE_217, text);
	call_set_text_pos(6, 93);
	call_set_text_color(54, 0);
	draw_text_glyphs(text, 0);
	call_set_text_color(52, 0);
	format_int_decimal((int)(party_records[member_index].age_days / 365), text);
	draw_text_glyphs(text, 0);
	load_message_string(MSG_LIFE, text);
	call_set_text_pos(6, 99);
	call_set_text_color(88, 0);
	draw_text_glyphs(text, 0);
	call_set_text_color(85, 0);
	format_int_decimal(party_records[member_index].deaths, text);
	draw_text_glyphs(text, 0);
	if (party_records[member_index].level < 16)
		next_experience =
			experience_thresholds[party_records[member_index].level - 1];
	else {
		level_offset = party_records[member_index].level - 16;
		next_experience = experience_thresholds[15] +
			(experience_thresholds[15] - experience_thresholds[14]) *
			level_offset;
	}
	load_message_string(MSG_NEXT_LVL, text);
	call_set_text_pos(91, 93);
	call_set_text_color(135, 0);
	draw_text_glyphs(text, 0);
	call_set_text_pos(91, 99);
	call_set_text_color(133, 0);
	draw_padded_number(next_experience - party_records[member_index].experience,
		8, 0);
	call_show_area(6, 93, 151, 105);
	if (mouse_active) {
		while (mouse_result) {
			if (call_get_mouse(&mouse_x, &mouse_y) == 0)
				break;
		}
	} else {
		do {
			key = get_filtered_key(1);
		} while (key != 13 && key != 27);
	}
}
