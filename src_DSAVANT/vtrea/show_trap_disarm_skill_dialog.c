/* Trap disarm skill dialog and skill check. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int dialog_selection, dialog_button, show_area_bottom;
extern int mouse_active, hotspot_rects[], hotspot_hit;
extern int trap_glyph_pressed[], trap_row_index;
extern unsigned char trap_glyph_ids[], trap_row_codes[];
extern int trap_row_types[];
extern char list_entry_text[];
extern int save_screen_area(), restore_saved_screen(), draw_dialog_box();
extern int load_message_string(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), draw_button(), draw_inset_panel();
extern int draw_glyph_string_grid(), draw_text_list(), draw_scrollbar();
extern int set_hotspot(), call_show_area(), call_fill_area(), flash_area();
extern int call_get_mouse(), clamp_between(), tick_treasure_animation();
extern int delay_ms(), poll_hotspots(), flash_area(), flash_button();
extern int random_below(), play_sound_effect(), try_raise_member_skill();
extern int call_show_area(), draw_font_glyph(), get_filtered_key();
extern int strlen(), strcpy(), strcat(),
	format_int_decimal();
extern int highlight_button_outline();
extern char trap_dialog_temp_file[], trap_skill_open_paren[],
	trap_skill_percent_close[], inspect_label_open_paren[],
	inspect_label_close_paren[];

show_trap_disarm_skill_dialog(pc, button_message, show_inspect,
	show_cancel,
							trap_row_count, trap_power)
int pc, button_message, show_inspect, show_cancel, trap_row_count,
	trap_power;
{
	int i, j, box_x, box_y, box_width, box_height;
	int mouse_x, mouse_y, scroll, visible_rows, drag_position, selected_row;
	int hotspot_action, keep_open, mouse_status, unused_hotspot_margin, pad,
		drawn_rows;
	char inspect_label[40];
	char label[40];
	int saved_screen, code_length, pressed_count, success_chance;
	int skill_bonus, safe_attempt, skill_passed, roll;

	for (i = 0; i < trap_row_count; i++)
		load_message_string(MSG_NO_TRAP + trap_row_types[i],
			list_entry_text + i * 20);
	show_area_bottom = 141;
	code_length = 0;
	if (trap_row_index != -1) {
		for (j = 0; j < 8; j++)
			if (trap_row_codes[trap_row_index * 10 + j] != '-')
				code_length++;
	}
	dialog_selection = -1;
	box_x = 55;
	box_y = 143;
	box_width = 264;
	box_height = 197;
	visible_rows = 22;
	drawn_rows = 1;
	saved_screen = save_screen_area(box_x - 1, box_y - 1,
		box_width + 1, box_height + 1, trap_dialog_temp_file);
	draw_dialog_box(box_x, box_y, box_width, box_height);
	call_set_text_color(1, 194);
	call_set_text_pos(box_x + 27 - strlen(party_records[pc].name) * 6 / 2,
		box_y + 6);
	draw_text_glyphs(party_records[pc].name, 0);
	strcpy(label, trap_skill_open_paren);
	format_int_decimal(party_records[pc].skills[16], label + 1);
	strcat(label, trap_skill_percent_close);
	call_set_text_pos(box_x + 27 - strlen(label) * 6 / 2,
		box_y + 12);
	draw_text_glyphs(label, 0);
	draw_inset_panel(box_x + 54, box_y + 5, box_x + 80, box_y + 17);
	draw_glyph_string_grid(0, box_x + 56, box_y + 6, 0);
	load_message_string(button_message, inspect_label);
	draw_button(box_x + 8, box_y + 24, 12, 1, show_inspect, inspect_label);
	load_message_string(button_message + 1, label);
	draw_button(box_x + 8, box_y + 40, 12, 1, show_cancel,
		label);
	call_set_text_color(0, 192);
	for (i = 0; i < 8; i++) {
		highlight_button_outline(box_x + 93 + (i % 4) * 26,
			box_y + 5 + (i / 4) * 32,
			box_x + 107 + (i % 4) * 26,
			box_y + 17 + (i / 4) * 32, trap_glyph_pressed[i]);
		call_set_text_pos(box_x + 95 + (i % 4) * 26,
			box_y + 7 + (i / 4) * 32);
		draw_font_glyph(trap_glyph_ids[i * 2], 1);
	}
	draw_inset_panel(box_x + 93, box_y + 24, box_x + 97, box_y + 30);
	selected_row = 0;
	pad = -1;
	draw_text_list(box_x + 105, box_y + 24, 13, 1,
		selected_row, pad, drawn_rows);
	scroll = 0;
	draw_scrollbar(box_x + 193, box_y + 6, 8, 7, scroll);
	set_hotspot(0, box_x + 193, box_y + scroll + 14, box_x + 201,
		box_y + scroll + 18, 0, 0);
	set_hotspot(1, box_x + 193, box_y + 6, box_x + 201,
		box_y + 12, 9, 0);
	set_hotspot(2, box_x + 193, box_y + 42, box_x + 201,
		box_y + 48, 11, 0);
	set_hotspot(3, box_x + 8, box_y + 24, box_x + 80,
		box_y + 32, 73, 13);
	set_hotspot(4, box_x + 8, box_y + 40, box_x + 80,
		box_y + 48, 27, 0);
	for (i = 0; i < 8; i++)
		set_hotspot(i + 5, box_x + 93 + (i % 4) * 26,
			box_y + 5 + (i / 4) * 32,
			box_x + 107 + (i % 4) * 26,
			box_y + 17 + (i / 4) * 32, (char)(i + 49), 0);
	set_hotspot(13, (unsigned)65535, 0, 0, 0, 0, 0);
	call_show_area(box_x - 1, box_y - 1, box_width + 1, box_height + 1);
	keep_open = 1;
	success_chance = party_records[pc].skills[16] - 5 * trap_power +
		party_records[pc].stat[4] / 2 + party_records[pc].level / 2;
	skill_bonus = 0;
	if (party_records[pc].profession == 3) {
		success_chance += party_records[pc].stat[4] * 3;
		skill_bonus = 3;
	} else if (party_records[pc].profession == 13 ||
		party_records[pc].profession == 4 ||
		party_records[pc].profession == 6) {
		success_chance += party_records[pc].stat[4] * 2;
		skill_bonus = 2;
	}
	success_chance = clamp_between(success_chance, 5, 90);
	for (;;) {
		roll = random_below(100);
		safe_attempt = 100 - ((100 - success_chance) / 3) >= roll;
		skill_passed = roll < success_chance;
		call_fill_area(box_x + 93, box_y + 24, box_x + 97,
			box_y + 30,
			!safe_attempt ? 26 : skill_passed ? 55 : 86);
		call_show_area(box_x + 93, box_y + 24,
			box_x + 97, box_y + 30);
		if (!tick_treasure_animation())
			delay_ms(25);
		hotspot_action = poll_hotspots(hotspot_rects) - 1;
		if (hotspot_hit == 1) {
		switch (hotspot_action) {
		case 0:
			call_get_mouse(&mouse_x, &mouse_y);
			drag_position = clamp_between(mouse_y - (box_y + scroll + 14), 0, 4);
			for (;;) {
				mouse_status = call_get_mouse(&mouse_x, &mouse_y);
				scroll = clamp_between(mouse_y - (box_y + 14) - drag_position,
					0, visible_rows);
				if (trap_row_count > 1)
					selected_row = (scroll * 100) /
						((visible_rows * 100 + 100) / trap_row_count);
				draw_text_list(box_x + 105, box_y + 24, 13, 1,
					selected_row, pad, drawn_rows);
				draw_inset_panel(box_x + 54, box_y + 5,
					box_x + 80, box_y + 17);
				draw_glyph_string_grid(selected_row, box_x + 56,
					box_y + 6, 0);
				draw_scrollbar(box_x + 193, box_y + 6,
					8, 7, scroll);
				set_hotspot(0, box_x + 193, box_y + scroll + 14,
					box_x + 201, box_y + scroll + 18, 0, 0);
				call_show_area(box_x + 93, box_y + 6,
					box_x + 201, box_y + 48);
				call_show_area(box_x + 54, box_y + 5,
					box_x + 80, box_y + 18);
				if (!mouse_status)
					break;
			}
			break;
		case 1:
		case 2:
			if (hotspot_action == 1) {
				flash_area( box_x + 193, box_y + 6,
					box_x + 201, box_y + 12, 1);
				if (selected_row > 0)
					selected_row--;
			} else {
				flash_area(box_x + 193, box_y + 42,
					box_x + 201, box_y + 48, 1);
				if (trap_row_count - 1 > selected_row)
					selected_row++;
			}
			if (trap_row_count > 1)
				scroll = clamp_between(
					((100 * visible_rows + 100) / (trap_row_count - 1) * selected_row) / 100,
					0, visible_rows);
			draw_text_list(box_x + 105, box_y + 24, 13, 1,
				selected_row, pad, drawn_rows);
			draw_inset_panel(box_x + 54, box_y + 5,
				box_x + 80, box_y + 17);
			draw_glyph_string_grid(selected_row, box_x + 56, box_y + 6, 0);
			draw_scrollbar(box_x + 193, box_y + 6, 8, 7, scroll);
			set_hotspot(0, box_x + 193, box_y + scroll + 14,
				box_x + 201, box_y + scroll + 18, 0, 0);
			call_show_area(box_x + 93, box_y + 6,
				box_x + 201, box_y + 48);
			call_show_area(box_x + 54, box_y + 5,
				box_x + 80, box_y + 18);
			break;
		case 3:
			if (show_inspect) {
				if (!safe_attempt) {
					play_sound_effect(4);
					dialog_button = 1;
					keep_open = 0;
				} else {
					highlight_button_outline(box_x + 8, box_y + 24,
						box_x + 80, box_y + 32, 1);
					call_set_text_color(26, 192);
					strcpy(label, inspect_label_open_paren);
					strcat(label, inspect_label);
					strcat(label, inspect_label_close_paren);
					call_set_text_pos(box_x + 9 +
						(12 - strlen(label)) * 6 / 2,
						box_y + 26);
					draw_text_glyphs(label, 0);
					call_show_area(box_x + 8, box_y + 24,
						box_x + 80, box_y + 32);
					draw_inset_panel(box_x + 54, box_y + 5,
						box_x + 80, box_y + 17);
					draw_glyph_string_grid(pc, box_x + 56,
						box_y + 6, 1);
					call_show_area(box_x + 54, box_y + 5,
						box_x + 80, box_y + 18);
					if (mouse_active)
						while (call_get_mouse(&mouse_x, &mouse_y))
							;
					else
						get_filtered_key(1);
					draw_inset_panel(box_x + 54, box_y + 5,
						box_x + 80, box_y + 17);
					draw_glyph_string_grid(selected_row, box_x + 56,
						box_y + 6, 0);
					call_show_area(box_x + 54, box_y + 5,
						box_x + 80, box_y + 18);
					highlight_button_outline(box_x + 8, box_y + 24,
						box_x + 80, box_y + 32, 0);
					call_set_text_color(85, 192);
					call_set_text_pos(box_x + 9 +
						(12 - strlen(inspect_label)) * 6 / 2,
						box_y + 26);
					draw_text_glyphs(inspect_label, 0);
					call_show_area(box_x + 8, box_y + 24,
						box_x + 80, box_y + 32);
				}
			}
			break;
		case 4:
			if (show_cancel) {
				flash_button(box_x + 8, box_y + 39, 12, 1, 1);
				flash_button(box_x + 8, box_y + 39, 12, 1, 0);
				dialog_button = 2;
				keep_open = 0;
			}
			break;
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
			i = hotspot_action - 5;
			if (trap_glyph_pressed[i]) {
				/* already selected: leave it alone */
			} else {
				pressed_count = 0;
				for (j = 0; j < 8; j++)
					if (trap_glyph_pressed[j])
						pressed_count++;
				trap_glyph_pressed[i] = 1;
				highlight_button_outline(box_x + 93 + (i % 4) * 26,
					box_y + 5 + (i / 4) * 32,
					box_x + 107 + (i % 4) * 26,
					box_y + 17 + (i / 4) * 32,
					trap_glyph_pressed[i]);
				call_set_text_color(1, 194);
				call_set_text_pos(box_x + 95 + (i % 4) * 26,
					box_y + 7 + (i / 4) * 32);
				draw_font_glyph(trap_glyph_ids[i * 2], 1);
				call_show_area(box_x + 93 + (i % 4) * 26,
					box_y + 5 + (i / 4) * 32,
					box_x + 107 + (i % 4) * 26,
					box_y + 17 + (i / 4) * 32);
				play_sound_effect(4);
				if (trap_row_index == -1) {
					dialog_button = 1;
					keep_open = 0;
				} else if (!safe_attempt ||
					trap_row_codes[trap_row_index * 10 + i] !=
						pressed_count + 49) {
					dialog_button = 1;
					keep_open = 0;
				} else if (!skill_passed) {
					delay_ms(200);
					trap_glyph_pressed[i] = 0;
					highlight_button_outline(box_x + 93 + (i % 4) * 26,
						box_y + 5 + (i / 4) * 32,
						box_x + 107 + (i % 4) * 26,
						box_y + 17 + (i / 4) * 32,
						trap_glyph_pressed[i]);
					call_set_text_color(26, 194);
					call_set_text_pos(box_x + 95 + (i % 4) * 26,
						box_y + 7 + (i / 4) * 32);
					draw_font_glyph(trap_glyph_ids[i * 2], 1);
					call_show_area(box_x + 93 + (i % 4) * 26,
						box_y + 5 + (i / 4) * 32,
						box_x + 107 + (i % 4) * 26,
						box_y + 17 + (i / 4) * 32);
					play_sound_effect(4);
				} else if (code_length - 1 == pressed_count) {
					if (skill_bonus != 0)
						try_raise_member_skill(pc, 16, skill_bonus);
					dialog_button = 0;
					keep_open = 0;
				}
			}
			break;
		}
		}
		if (!keep_open)
			break;
	}
	restore_saved_screen(saved_screen, 1);
	show_area_bottom = 143;
	call_show_area(box_x - 1, box_y - 1, box_width + 1, box_height + 1);
	return dialog_button;
}
