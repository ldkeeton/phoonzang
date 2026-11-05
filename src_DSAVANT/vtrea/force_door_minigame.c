/* FORCE DOOR / FORCE GATE dialog: the party's stamina against the door's
   strength */
#include "structs/pcrec.h"

extern int show_area_bottom, dialog_selection, dialog_button;
extern int party_char_count, message_delay, hotspot_hit, hotspot_rects[];
extern struct pc_rec party_records[];
extern int save_screen_area(), draw_dialog_box(), load_message_string();
extern int call_set_text_color(), aztec_strlen(), call_set_text_pos();
extern int draw_text_glyphs(), draw_button(), draw_inset_panel();
extern int call_fill_area(), set_hotspot(), call_show_area();
extern int member_is_active(), random_below(), draw_party_member_panel();
extern int tick_treasure_animation(), delay_ms(), poll_hotspots();
extern int highlight_button_outline(), play_sound_effect(), flash_button();
extern int wait_treasure_input_or_timeout(), restore_saved_screen();
extern int aztec_ldv();
extern char force_door_temp_file[];

/* returns 0 success, 1 failure, 2 jammed, -1 cancel */
force_door_minigame(unused_member, message_id, show_heave, show_cancel, jammed,
	door_strength)
int unused_member, message_id, show_heave, show_cancel, jammed, door_strength;
{
	int row, unused, left, top, width, height;
	int unused_dialog_margin[2], member_x, member_y, hit, keep_open,
		random_value;
	int member, bar_color, score, party_score, saved_screen;
	char message[40];
	char heave_label[40];

	show_area_bottom = 141;
	dialog_selection = -1;
	left = 55;
	top = 143;
	width = 264;
	height = 197;
	saved_screen = save_screen_area(left - 1, top - 1,
		width + 1, height + 1, force_door_temp_file);
	draw_dialog_box(left, top, width, height);
	load_message_string(message_id, message);
	call_set_text_color(28, 194);
	call_set_text_pos(left + 9 + ((12 - aztec_strlen(message)) * 6) / 2, top + 9);
	draw_text_glyphs(message, 0);
	load_message_string(message_id + 1, heave_label);
	draw_button(left + 8, top + 22, 12, 1, show_heave, heave_label);
	load_message_string(message_id + 2, message);
	draw_button(left + 8, top + 38, 12, 1, show_cancel, message);
	load_message_string(message_id + 3, message);
	call_set_text_color(1, 194);
	call_set_text_pos(left + 147 - (aztec_strlen(message) * 6) / 2, top + 6);
	draw_text_glyphs(message, 0);
	load_message_string(message_id + 4, message);
	call_set_text_color(155, 194);
	call_set_text_pos(left + 147 - (aztec_strlen(message) * 6) / 2, top + 30);
	draw_text_glyphs(message, 0);
	for (row = 0; row < 14; row++) {
		draw_inset_panel(left + 92 + row * 8, top + 15,
			left + 96 + row * 8, top + 21);
		call_fill_area(left + 92 + row * 8, top + 15,
			left + 96 + row * 8, top + 21, 0);
		draw_inset_panel(left + 92 + row * 8, top + 39,
			left + 96 + row * 8, top + 45);
		call_fill_area(left + 92 + row * 8, top + 39,
			left + 96 + row * 8, top + 45,
			(row < door_strength / 2 + 4) ? 26 : 0);
	}
	set_hotspot(0, left + 8, top + 22, left + 80, top + 30, 72, 13);
	set_hotspot(1, left + 8, top + 38, left + 80, top + 46, 27, 0);
	set_hotspot(2, -1, 0, 0, 0, 0, 0);
	call_show_area(left - 1, top - 1, width + 1, height + 1);
	bar_color = jammed ? 26 : 55;
	keep_open = 1;
	member = 0;
	do {
		party_score = 0;
		for (row = 0; row < party_char_count; row++)
			if (member_is_active(row)) {
				score = (long)party_records[row].stamina[0] * 100 /
					party_records[row].stamina[1] * party_records[row].stat[0] / 100;
				party_score = party_score + party_records[row].level / 3 + score;
			}
		if (party_score <= 0) {
			dialog_button = jammed + 1;
			keep_open = 0;
		}
		row = member;
		if (member_is_active(row)) {
			party_records[row].stamina[0]--;
			if (party_records[row].stamina[0] <= 0) {
				party_records[row].status[2] = random_below(6) + 6;
				party_records[row].stamina[0] = 0;
			}
			draw_party_member_panel(row, 0);
			member_x = (row % 2) * 252 + 5;
			member_y = (row / 2) * 45 + 18;
			switch (row) {
			case 4:
				call_show_area(member_x, member_y, member_x + 59, 141);
				call_show_area(member_x, member_y, 53, member_y + 43);
				break;
			case 5:
				call_show_area(member_x, member_y, member_x + 59, 141);
				call_show_area(266, member_y, member_x + 59, member_y + 43);
				break;
			default:
				call_show_area(member_x, member_y, member_x + 59, member_y + 43);
				break;
			}
		}
		member = (member + 1) % party_char_count;
		random_value = (random_below(party_score) + random_below(party_score) +
			party_score + party_score) / 4;
		for (row = 0; row < 14; row++)
			call_fill_area(left + 92 + row * 8, top + 15,
				left + 96 + row * 8, top + 21,
				(row < (random_value - 30) / 6) ? bar_color : 0);
		call_show_area(left + 92, top + 15, left + 204, top + 21);
		if (!tick_treasure_animation())
			delay_ms(25);
		hit = poll_hotspots(hotspot_rects) - 1;
		if (hotspot_hit == 1) {
			switch (hit) {
			case 0:
				if (show_heave) {
					highlight_button_outline(left + 8, top + 22, left + 80, top + 30, 1);
					call_set_text_color(26, 0);
					call_set_text_pos(left + 9 + ((12 - aztec_strlen(
						heave_label)) * 6) / 2, top + 24);
					draw_text_glyphs(heave_label, 0);
					call_show_area(left + 8, top + 22, left + 80, top + 30);
					play_sound_effect(4);
					if (door_strength / 2 + 4 <= (random_value - 30) / 6) {
						dialog_button = 0;
						keep_open = 0;
					} else {
						dialog_button = jammed + 1;
						keep_open = 0;
					}
				}
				break;
			case 1:
				if (show_cancel) {
					flash_button(left + 8, top + 38, 12, 1, 1);
					flash_button(left + 8, top + 38, 12, 1, 0);
					dialog_button = -1;
					keep_open = 0;
				}
				break;
			}
		}
	} while (keep_open);
	wait_treasure_input_or_timeout(message_delay);
	show_area_bottom = 143;
	restore_saved_screen(saved_screen, 1);
	call_show_area(left - 1, top - 1, width + 1, height + 1);
	return dialog_button;
}
