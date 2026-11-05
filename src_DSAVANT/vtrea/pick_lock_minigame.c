/* PICK LOCK dialog: stop each tumbler; returns 0 success, 1 failure,
 * 2 jammed, -1 cancel */
#include "structs/pcrec.h"
#include "msg.h"

extern int show_area_bottom, dialog_selection, dialog_button;
extern int message_delay, hotspot_hit, lock_tumbler_values[], hotspot_rects[];
extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int call_set_text_color(), call_set_text_pos(), draw_text_glyphs();
extern int aztec_strlen(), aztec_strcpy(), aztec_strcat(),
	format_int_decimal();
extern int draw_button(), draw_inset_panel(), set_hotspot(), call_show_area();
extern int random_below(), call_set_text_opaque(), draw_number_field();
extern int call_fill_area(), tick_treasure_animation(), delay_ms();
extern int poll_hotspots(), flash_button(), play_sound_effect();
extern int try_raise_member_skill(), wait_treasure_input_or_timeout();
extern int restore_saved_screen(), clamp_between();
extern struct pc_rec party_records[];
extern char pick_lock_temp_file[];
extern char pick_lock_skill_open_paren[];
extern char pick_lock_skill_percent_close[];

pick_lock_minigame(member, title_message, show_cancel, tumbler_count,
					jammed, lock_strength)
int member, title_message, show_cancel, tumbler_count;
int jammed, lock_strength;
{
	int row;
	int unused_a;
	int left, top, right, bottom;
	int unused_b, unused_c;
	int hotspot_selection, roll, active, saved_area;
	int skill, skill_bonus, tumblers_left;
	int tumbler_stopped[6], tumbler_safe[6], tumbler_open[6];
	char text[40];

	show_area_bottom = 141;
	dialog_selection = -1;
	left = 55;
	top = 143;
	right = 264;
	bottom = 197;
	saved_area = save_screen_area(left - 1, top - 1, right + 1,
		bottom + 1, pick_lock_temp_file);
	draw_dialog_box(left, top, right, bottom);
	load_message_string(title_message, text);
	call_set_text_color(28, 194);
	call_set_text_pos(left + 9 + (12 - aztec_strlen(text)) * 6 / 2,
		top + 9);
	draw_text_glyphs(text, 0);
	call_set_text_color(1, 194);
	call_set_text_pos(left + 45 -
		aztec_strlen(party_records[member].name) * 6 / 2,
		top + 21);
	draw_text_glyphs(party_records[member].name, 0);
	aztec_strcpy(text, pick_lock_skill_open_paren);
	format_int_decimal(party_records[member].skills[16], text + 1);
	aztec_strcat(text, pick_lock_skill_percent_close);
	call_set_text_pos(left + 45 - aztec_strlen(text) * 6 / 2,
		top + 27);
	draw_text_glyphs(text, 0);
	load_message_string(title_message + 1, text);
	draw_button(left + 8, top + 38, 12, 1, show_cancel, text);
	for (row = 0; row < 6; row++) {
		draw_inset_panel(left + 89 + 20 * row,
			top + 8, left + 103 + 20 * row, top + 14);
		draw_inset_panel(left + 94 + 20 * row,
			top + 23, left + 98 + 20 * row, top + 29);
		highlight_button_outline(left + 89 + 20 * row, top + 38,
			left + 103 + 20 * row, top + 46, 0);
	}
	set_hotspot(0, left + 8, top + 38, left + 80,
		top + 46, 27, 0);
	for (row = 0; row < tumbler_count; row++)
		set_hotspot(row + 1, left + 89 + row * 20,
			top + 38, left + 103 + row * 20,
			top + 46, (char)(row + 49), 0);
	set_hotspot(tumbler_count + 1, -1, 0, 0, 0, 0, 0);
	call_show_area(left - 1, top - 1, right + 1, bottom + 1);
	active = 1;
	skill_bonus = 0;
	skill = party_records[member].skills[16]
		- 3 * lock_strength
		+ party_records[member].level;
	if (party_records[member].profession == 3) {
		skill += party_records[member].stat[4];
		skill_bonus = 2;
	} else if (party_records[member].profession == 13 ||
		party_records[member].profession == 4 ||
		party_records[member].profession == 6) {
		skill += party_records[member].stat[4] / 2;
		skill_bonus = 1;
	}
	skill = clamp_between(skill, 2, 95);
	tumblers_left = tumbler_count;
	aztec_setmem(tumbler_stopped, 12, 0);
	for (;;) {
		for (row = 0; row < tumbler_count; row++) {
			if (tumbler_stopped[row] == 0) {
				roll = random_below(skill);
				call_set_text_opaque(1);
				call_set_text_color(180, 195);
				call_set_text_pos(left + 91 + 20 * row, top + 9);
				draw_number_field(roll, 2, 0);
				call_set_text_opaque(0);
				tumbler_safe[row] = lock_tumbler_values[row] -
					(skill - lock_tumbler_values[row]) / 3 < roll ? 1 : 0;
				tumbler_open[row] = lock_tumbler_values[row] < roll ? 1 : 0;
				call_fill_area(left + 94 + 20 * row, top + 23,
					left + 98 + 20 * row, top + 29,
					(tumbler_safe[row] == 0 ? 26 :
					(tumbler_open[row] != 0 ? 55 : 86)));
			}
		}
		call_show_area(left + 89, top + 8, left + 209, top + 31);
		if (tick_treasure_animation() == 0)
			delay_ms(25);
		hotspot_selection = poll_hotspots(hotspot_rects) - 1;
		if (hotspot_hit == 1) {
			switch (hotspot_selection) {
			case 0:
				if (show_cancel != 0) {
					flash_button(left + 8, top + 39, 12, 1, 1);
					flash_button(left + 8, top + 39, 12, 1, 0);
					dialog_button = -1;
					active = 0;
				}
				break;
			default:
				row = hotspot_selection - 1;
				if (tumbler_stopped[row] == 0) {
					tumbler_stopped[row] = 1;
					highlight_button_outline(left + 89 + 20 * row, top + 38,
						left + 103 + 20 * row, top + 46,
						tumbler_stopped[row]);
					call_show_area(left + 89 + 20 * row, top + 38,
						left + 103 + 20 * row, top + 46);
					play_sound_effect(4);
					if (tumbler_safe[row] == 0) {
						if (random_below(3) == 0)
							jammed = 1;
						dialog_button = jammed + 1;
						active = 0;
					} else if (tumbler_open[row] == 0) {
						delay_ms(200);
						tumbler_stopped[row] = 0;
						highlight_button_outline(left + 89 + 20 * row, top + 38,
							left + 103 + 20 * row, top + 46,
							tumbler_stopped[row]);
						call_show_area(left + 89 + 20 * row,
							top + 38,
							left + 103 + 20 * row, top + 46);
						play_sound_effect(4);
					} else if (--tumblers_left == 0) {
						if (skill_bonus != 0)
							try_raise_member_skill(member, 16,
								skill_bonus);
						dialog_button = 0;
						active = 0;
					}
				}
				break;
			}
		}
		if (active == 0)
			break;
	}
	wait_treasure_input_or_timeout(message_delay);
	show_area_bottom = 143;
	restore_saved_screen(saved_area, 1);
	call_show_area(left - 1, top - 1, right + 1, bottom + 1);
	return dialog_button;
}
