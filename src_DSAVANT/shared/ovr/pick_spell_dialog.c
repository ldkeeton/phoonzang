/* modal spell dialog for pc: six realm hotspots, a scrolling list of known
   spells, a 1..7 power row and two buttons; returns spell_dialog_button (0
   first button, 1 second) and leaves (power << 8) + spell + 0x100 in
   spell_dialog_result */

#include "structs/pcrec.h"
#include "structs/spell.h"

extern int party_slot_frame[];
extern int hotspot_rects[];
extern int spell_dialog_result, party_redraw_interval, spell_dialog_button,
	space_key_hit, hotspot_hit;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern char spell_screen_temp_file[];
extern struct spell_info spell_table[];
extern struct pc_rec party_records[];
extern int known_spell_ids[];

pick_spell_dialog(pc, button_msg, ok_enabled, limit_by_points)
int pc, button_msg, ok_enabled, limit_by_points;
{
	int i, box_x0, box_y0, box_x1, box_y1, panel_x, mouse_x, mouse_y, thumb_y,
		thumb_travel, grab_dy, list_top, hit;
	int running, mouse_btn, rows_shown, sel_row, rows_drawn;
	char label[20];
	int saved_area, spell, power, max_power, realm, spell_count;
	for (i = 0; i < 6; i++)
		party_slot_frame[i] = 0;
	spell_dialog_result = -1;
	box_x0 = 50;
	box_y0 = 115;
	box_x1 = 269;
	box_y1 = 197;
	panel_x = 149;
	thumb_travel = 22;
	saved_area = save_screen_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1,
		spell_screen_temp_file);
	draw_dialog_box(box_x0, box_y0, box_x1, box_y1);
	draw_dialog_box(149, box_y0, box_x1, box_y1);
	draw_marker_glyph();
	draw_realm_spell_points(pc);
	draw_party_slot_letters(50, 115, 1);
	load_message_string(button_msg, label);
	draw_button(panel_x + 6, box_y0 + 6, 8, 1, ok_enabled, label);
	load_message_string(button_msg + 1, label);
	draw_button(panel_x + 66, box_y0 + 6, 8, 1, 1, label);
	gfx_set_text_pos(panel_x + 72, box_y0 + 20);
	gfx_set_text_color(205, 0);
	draw_font_glyph(10, 2);
	spell = -1;
	power = 0;
	max_power = 0;
	for (i = 0; i < 7; i++)	/* power row, current one highlighted */
		draw_power_digit(panel_x + 12, box_y0 + 20, i, i == power);
	realm = 0;
	draw_spell_cost(panel_x + 94, box_y0 + 21, realm, 0, 0);
	spell_count = collect_known_spells(pc, realm);
	rows_drawn = spell_count < 7 ? spell_count : 7;
	list_top = 0;
	sel_row = -1;
	draw_text_list(panel_x + 6, box_y0 + 34, 15, 7, list_top, sel_row,
		rows_drawn);
	thumb_y = 0;
	draw_scrollbar(panel_x + 106, box_y0 + 34, 8, 7, thumb_y);
	set_hotspot(0, panel_x + 106, box_y0 + thumb_y + 42, panel_x + 114,
		box_y0 + thumb_y + 46, 0, 0);
	set_hotspot(1, panel_x + 106, box_y0 + 34, panel_x + 114, box_y0 + 40, 9, 0);
	set_hotspot(2, panel_x + 106, box_y0 + 70, panel_x + 114, box_y0 + 76, 11, 0);
	set_hotspot(3, panel_x + 6, box_y0 + 6, panel_x + 54, box_y0 + 14, 13, 0);
	set_hotspot(4, panel_x + 66, box_y0 + 6, panel_x + 114, box_y0 + 14, 27, 0);
	for (i = 0; i < 7; i++)	/* hotspots 5..11: power digits, keys 1..7 */
		set_hotspot(i + 5, 10 * i + panel_x + 12, box_y0 + 20, 10 * i + panel_x + 19,
			box_y0 + 27, (char)(i + '1'), 0);
	/* realm hotspots 12..17, keyed F W A E M D */
	set_hotspot(12, 70, 116, 82, 135, 'F', 0);
	set_hotspot(13, 50, 144, 75, 157, 'W', 0);
	set_hotspot(14, 67, 165, 95, 187, 'A', 0);
	set_hotspot(15, 108, 119, 135, 137, 'E', 0);
	set_hotspot(16, 127, 145, 142, 156, 'M', 0);
	set_hotspot(17, 113, 166, 129, 185, 'D', 0);
	rows_shown = spell_count < 7 ? spell_count : 7;
	for (i = 0; i < 7; i++)	/* hotspots 18..24: list rows, 6 px apart */
		set_hotspot(i + 18, panel_x + 6, 6 * i + box_y0 + 34, panel_x + 98,
			6 * i + box_y0 + 40, 0, 0);
	set_hotspot(25, -1, 0, 0, 0, 0, 0);
	gfx_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	party_redraw_interval = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	running = 1;
	do {
		periodic_party_redraw(pc, realm);
		hit = poll_hotspots(hotspot_rects) - 1;	/* 0-based id */
		if (space_key_hit) {
			/* space: select the next row, wrapping to the first shown */
			if (sel_row >= list_top)
				sel_row++;
			if (sel_row == -1 || sel_row < list_top
				|| list_top + rows_shown - 1 < sel_row)
				sel_row = list_top;
			hotspot_hit = 1;
			hit = sel_row - list_top + 18;
		}
		if (hotspot_hit == 1) {
			switch (hit) {
			case 0:	/* drag the scroll thumb while the button is held */
				gfx_get_mouse(&mouse_x, &mouse_y);
				grab_dy = clamp_between(mouse_y - (box_y0 + thumb_y + 42), 0, 4);
				do {
					mouse_btn = gfx_get_mouse(&mouse_x, &mouse_y);
					thumb_y = clamp_between(mouse_y - (box_y0 + 42) - grab_dy, 0,
						thumb_travel);
					if (spell_count > 7)	/* more than the 7 visible rows */
						list_top = thumb_y * 100 /
							((thumb_travel * 100 + 100) / (spell_count - 6));
					draw_text_list(panel_x + 6, box_y0 + 34, 15, 7, list_top, sel_row,
						rows_drawn);
					draw_scrollbar(panel_x + 106, box_y0 + 34, 8, 7, thumb_y);
					set_hotspot(0, panel_x + 106, box_y0 + thumb_y + 42, panel_x + 114,
						box_y0 + thumb_y + 46, 0, 0);
					gfx_show_area(panel_x + 6, box_y0 + 34, panel_x + 114, box_y0 + 76);
				} while (mouse_btn);
				break;
			case 1:
			case 2:	/* scroll arrows: 1 up, 2 down */
				if (hit == 1) {
					flash_area(panel_x + 106, box_y0 + 34, panel_x + 114, box_y0 + 40, 1);
					if (list_top > 0)
						list_top--;
				} else {
					flash_area(panel_x + 106, box_y0 + 70, panel_x + 114, box_y0 + 76, 1);
					if (spell_count - 7 > list_top)
						list_top++;
				}
				if (spell_count > 7)
					thumb_y = clamp_between((100 * thumb_travel + 100) / (
						spell_count - 7) * list_top / 100, 0, thumb_travel);
				draw_text_list(panel_x + 6, box_y0 + 34, 15, 7, list_top, sel_row,
					rows_drawn);
				draw_scrollbar(panel_x + 106, box_y0 + 34, 8, 7, thumb_y);
				set_hotspot(0, panel_x + 106, box_y0 + thumb_y + 42, panel_x + 114,
					box_y0 + thumb_y + 46, 0, 0);
				gfx_show_area(panel_x + 6, box_y0 + 34, panel_x + 114, box_y0 + 76);
				break;
			case 3:	/* first button: needs a spell and, when limiting, enough points */
				if (ok_enabled) {
					if (spell >= 0 && (!limit_by_points || power <= max_power
					    && spell_table[spell].cost * (power + 1)
					    	<= party_records[pc].realm_points[realm][0])) {
						flash_button(panel_x + 6, box_y0 + 6, 8, 1, 1);
						flash_button(panel_x + 6, box_y0 + 6, 8, 1, 0);
						spell_dialog_button = 0;
						running = 0;
					}
					if (running)
						play_sound_effect(0);
				}
				break;
			case 4:	/* second button */
				flash_button(panel_x + 66, box_y0 + 6, 8, 1, 1);
				flash_button(panel_x + 66, box_y0 + 6, 8, 1, 0);
				spell_dialog_button = 1;
				running = 0;
				break;
			default:
				if (hit >= 5 && hit <= 11) {	/* power digit */
					draw_power_digit(panel_x + 12, box_y0 + 20, power, 0);
					power = hit - 5;
					draw_power_digit(panel_x + 12, box_y0 + 20, power, 1);
					if (spell >= 0) {
						max_power = clamp_between(
							party_records[pc].power_cap - spell_table[spell].level, 0, 6);
						i = spell_table[spell].cost * (max_power + 1);
						draw_spell_cost(panel_x + 94, box_y0 + 21, realm,
							spell_table[spell].cost * (power + 1),
							!limit_by_points ? 999 : (party_records[pc].realm_points[realm][0] < i
								? party_records[pc].realm_points[realm][0] : i));
					} else
						draw_spell_cost(panel_x + 94, box_y0 + 21, realm, 0, 0);
					gfx_show_area(panel_x + 11, box_y0 + 20, panel_x + 86, box_y0 + 28);
					gfx_show_area(panel_x + 94, box_y0 + 21, panel_x + 114, box_y0 + 27);
				} else if (hit >= 12 && hit <= 17) {	/* realm: refill the list */
					realm = hit - 12;
					spell = -1;
					spell_count = collect_known_spells(pc, realm);
					rows_drawn = spell_count < 7 ? spell_count : 7;
					rows_shown = spell_count < 7 ? spell_count : 7;
					list_top = 0;
					sel_row = -1;
					draw_text_list(panel_x + 6, box_y0 + 34, 15, 7, list_top, sel_row,
						rows_drawn);
					thumb_y = 0;
					draw_scrollbar(panel_x + 106, box_y0 + 34, 8, 7, thumb_y);
					set_hotspot(0, panel_x + 106, box_y0 + thumb_y + 42, panel_x + 114,
						box_y0 + thumb_y + 46, 0, 0);
					draw_spell_cost(panel_x + 94, box_y0 + 21, realm, 0, 0);
					gfx_show_area(panel_x + 6, box_y0 + 34, panel_x + 114, box_y0 + 76);
					gfx_show_area(panel_x + 94, box_y0 + 21, panel_x + 114, box_y0 + 27);
				} else if (hit >= 18 && rows_shown + 18 > hit) {	/* list row */
					sel_row = list_top + hit - 18;
					spell = known_spell_ids[sel_row];
					draw_text_list(panel_x + 6, box_y0 + 34, 15, 7, list_top, sel_row,
						rows_drawn);
					max_power = clamp_between(
						party_records[pc].power_cap - spell_table[spell].level, 0, 6);
					i = spell_table[spell].cost * (max_power + 1);
					draw_spell_cost(panel_x + 94, box_y0 + 21, realm,
						spell_table[spell].cost * (power + 1),
						!limit_by_points ? 999 : (party_records[pc].realm_points[realm][0] < i
							? party_records[pc].realm_points[realm][0] : i));
					gfx_show_area(panel_x + 6, box_y0 + 34, panel_x + 114, box_y0 + 76);
					gfx_show_area(panel_x + 94, box_y0 + 21, panel_x + 114, box_y0 + 27);
				}
				break;
			}
		}
	} while (running);
	restore_saved_screen(saved_area, 1);
	gfx_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	spell_dialog_result = (power << 8) + spell + 256;
	return spell_dialog_button;
}
