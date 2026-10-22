struct spell_info {	/* 6-byte entries */
	char realm;	/* +0: 0..5 */
	unsigned char level;	/* +1: subtracted from pc_rec.cap for the power limit */
	unsigned char cost;	/* +2: per power level, against points[realm][0] */
	char pad[3];
};
struct pc_rec {	/* 0x248-byte records */
	int cap;
	int w2;
	int points[6][2];	/* +4: one per realm */
	char pad[0x248 - 0x1c];
};
extern int party_slot_frame[];
extern int spell_dialog_result, party_redraw_interval, spell_dialog_button, space_key_hit, hotspot_hit;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern char str_swap_file_v[];
extern struct spell_info spell_table[];
extern struct pc_rec pc_spell_power_cap[];
extern int known_spell_list[];

/* modal spell dialog for pc: six realm hotspots, a scrolling list of known
   spells, a 1..7 power row and two buttons; returns spell_dialog_button (0 first button, 1 second) and
   leaves (power << 8) + spell + 0x100 in spell_dialog_result */
spell_select_dialog(pc, label_id, ok_enabled, limit_by_points)
int pc, label_id, ok_enabled, limit_by_points;
{
	int i, box_x0, box_y0, box_x1, box_y1, panel_x, mouse_x, mouse_y, thumb_y, thumb_travel, grab_dy, list_top, hit;
	int running, mouse_btn, rows_shown, sel_row, rows_drawn;
	char label[20];
	saved_area = save_screen_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1, str_swap_file_v);
	draw_dialog_box(box_x0, box_y0, box_x1, box_y1);
	draw_dialog_box(0x95, box_y0, box_x1, box_y1);
	draw_glyph_1_at_50_115();
	draw_realm_spell_points(pc);
	draw_party_slot_letters(0x32, 0x73, 1);
	load_message_string(label_id, label);
	draw_button(panel_x + 6, box_y0 + 6, 8, 1, ok_enabled, label);
	load_message_string(label_id + 1, label);
	draw_button(panel_x + 0x42, box_y0 + 6, 8, 1, 1, label);
	gfx_set_text_pos(panel_x + 0x48, box_y0 + 0x14);
	gfx_set_text_color(0xcd, 0);
	draw_font_glyph(0xa, 2);
	spell = -1;
	power = 0;
	max_power = 0;
	for (i = 0; i < 7; i++)	/* power row, current one highlighted */
		draw_power_digit(panel_x + 0xc, box_y0 + 0x14, i, i == power);
	realm = 0;
	draw_spell_cost(panel_x + 0x5e, box_y0 + 0x15, realm, 0, 0);
	spell_count = collect_known_spells(pc, realm);
	rows_drawn = spell_count < 7 ? spell_count : 7;
	list_top = 0;
	sel_row = -1;
	draw_text_list(panel_x + 6, box_y0 + 0x22, 0xf, 7, list_top, sel_row, rows_drawn);
	thumb_y = 0;
	draw_scrollbar(panel_x + 0x6a, box_y0 + 0x22, 8, 7, thumb_y);
	set_hotspot(0, panel_x + 0x6a, box_y0 + thumb_y + 0x2a, panel_x + 0x72, box_y0 + thumb_y + 0x2e, 0, 0);
	set_hotspot(1, panel_x + 0x6a, box_y0 + 0x22, panel_x + 0x72, box_y0 + 0x28, 9, 0);
	set_hotspot(2, panel_x + 0x6a, box_y0 + 0x46, panel_x + 0x72, box_y0 + 0x4c, 0xb, 0);
	set_hotspot(3, panel_x + 6, box_y0 + 6, panel_x + 0x36, box_y0 + 0xe, 0xd, 0);
	set_hotspot(4, panel_x + 0x42, box_y0 + 6, panel_x + 0x72, box_y0 + 0xe, 0x1b, 0);
	for (i = 0; i < 7; i++)	/* hotspots 5..11: power digits, keys 1..7 */
		set_hotspot(i + 5, 10 * i + panel_x + 0xc, box_y0 + 0x14, 10 * i + panel_x + 0x13, box_y0 + 0x1b, (char)(i + '1'), 0);
	/* realm hotspots 12..17, keyed F W A E M D */
	set_hotspot(0xc, 0x46, 0x74, 0x52, 0x87, 'F', 0);
	set_hotspot(0xd, 0x32, 0x90, 0x4b, 0x9d, 'W', 0);
	set_hotspot(0xe, 0x43, 0xa5, 0x5f, 0xbb, 'A', 0);
	set_hotspot(0xf, 0x6c, 0x77, 0x87, 0x89, 'E', 0);
	set_hotspot(0x10, 0x7f, 0x91, 0x8e, 0x9c, 'M', 0);
	set_hotspot(0x11, 0x71, 0xa6, 0x81, 0xb9, 'D', 0);
	rows_shown = spell_count < 7 ? spell_count : 7;
	for (i = 0; i < 7; i++)	/* hotspots 18..24: list rows, 6 px apart */
		set_hotspot(i + 0x12, panel_x + 6, 6 * i + box_y0 + 0x22, panel_x + 0x62, 6 * i + box_y0 + 0x28, 0, 0);
	set_hotspot(0x19, -1, 0, 0, 0, 0, 0);
	gfx_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	party_redraw_interval = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	running = 1;
	do {
		periodic_party_redraw(pc, realm);
		hit = poll_hotspots(0x59fe) - 1;	/* 0x59fe: hotspot table; 0-based id */
		if (space_key_hit) {	/* space: select the next row, wrapping to the first shown */
			if (sel_row >= list_top)
				sel_row++;
			if (sel_row == -1 || sel_row < list_top || list_top + rows_shown - 1 < sel_row)
				sel_row = list_top;
			hotspot_hit = 1;
			hit = sel_row - list_top + 0x12;
		}
		if (hotspot_hit == 1) {
			switch (hit) {
			case 0:	/* drag the scroll thumb while the button is held */
				gfx_get_mouse(&mouse_x, &mouse_y);
				grab_dy = clamp_between(mouse_y - (box_y0 + thumb_y + 0x2a), 0, 4);
				do {
					mouse_btn = gfx_get_mouse(&mouse_x, &mouse_y);
					thumb_y = clamp_between(mouse_y - (box_y0 + 0x2a) - grab_dy, 0, thumb_travel);
					if (spell_count > 7)	/* more than the 7 visible rows */
						list_top = thumb_y * 100 / ((thumb_travel * 100 + 100) / (spell_count - 6));
					draw_text_list(panel_x + 6, box_y0 + 0x22, 0xf, 7, list_top, sel_row, rows_drawn);
					draw_scrollbar(panel_x + 0x6a, box_y0 + 0x22, 8, 7, thumb_y);
					set_hotspot(0, panel_x + 0x6a, box_y0 + thumb_y + 0x2a, panel_x + 0x72, box_y0 + thumb_y + 0x2e, 0, 0);
					gfx_show_area(panel_x + 6, box_y0 + 0x22, panel_x + 0x72, box_y0 + 0x4c);
				} while (mouse_btn);
				break;
			case 1:
			case 2:	/* scroll arrows: 1 up, 2 down */
				if (hit == 1) {
					flash_area(panel_x + 0x6a, box_y0 + 0x22, panel_x + 0x72, box_y0 + 0x28, 1);
					if (list_top > 0)
						list_top--;
				} else {
					flash_area(panel_x + 0x6a, box_y0 + 0x46, panel_x + 0x72, box_y0 + 0x4c, 1);
					if (spell_count - 7 > list_top)
						list_top++;
				}
				if (spell_count > 7)
					thumb_y = clamp_between((100 * thumb_travel + 100) / (spell_count - 7) * list_top / 100, 0, thumb_travel);
				draw_text_list(panel_x + 6, box_y0 + 0x22, 0xf, 7, list_top, sel_row, rows_drawn);
				draw_scrollbar(panel_x + 0x6a, box_y0 + 0x22, 8, 7, thumb_y);
				set_hotspot(0, panel_x + 0x6a, box_y0 + thumb_y + 0x2a, panel_x + 0x72, box_y0 + thumb_y + 0x2e, 0, 0);
				gfx_show_area(panel_x + 6, box_y0 + 0x22, panel_x + 0x72, box_y0 + 0x4c);
				break;
			case 3:	/* first button: needs a spell and, when limiting, enough points */
				if (ok_enabled) {
					if (spell >= 0 && (!limit_by_points || power <= max_power && spell_table[spell].cost * (power + 1) <= pc_spell_power_cap[pc].points[realm][0])) {
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
				flash_button(panel_x + 0x42, box_y0 + 6, 8, 1, 1);
				flash_button(panel_x + 0x42, box_y0 + 6, 8, 1, 0);
				spell_dialog_button = 1;
				running = 0;
				break;
			default:
				if (hit >= 5 && hit <= 0xb) {	/* power digit */
					draw_power_digit(panel_x + 0xc, box_y0 + 0x14, power, 0);
					power = hit - 5;
					draw_power_digit(panel_x + 0xc, box_y0 + 0x14, power, 1);
					if (spell >= 0) {
						max_power = clamp_between(pc_spell_power_cap[pc].cap - spell_table[spell].level, 0, 6);
						i = spell_table[spell].cost * (max_power + 1);
						draw_spell_cost(panel_x + 0x5e, box_y0 + 0x15, realm, spell_table[spell].cost * (power + 1),
							!limit_by_points ? 999 : (pc_spell_power_cap[pc].points[realm][0] < i ? pc_spell_power_cap[pc].points[realm][0] : i));
					} else
						draw_spell_cost(panel_x + 0x5e, box_y0 + 0x15, realm, 0, 0);
					gfx_show_area(panel_x + 0xb, box_y0 + 0x14, panel_x + 0x56, box_y0 + 0x1c);
					gfx_show_area(panel_x + 0x5e, box_y0 + 0x15, panel_x + 0x72, box_y0 + 0x1b);
				} else if (hit >= 0xc && hit <= 0x11) {	/* realm: refill the list */
					realm = hit - 0xc;
					spell = -1;
					spell_count = collect_known_spells(pc, realm);
					rows_drawn = spell_count < 7 ? spell_count : 7;
					rows_shown = spell_count < 7 ? spell_count : 7;
					list_top = 0;
					sel_row = -1;
					draw_text_list(panel_x + 6, box_y0 + 0x22, 0xf, 7, list_top, sel_row, rows_drawn);
					thumb_y = 0;
					draw_scrollbar(panel_x + 0x6a, box_y0 + 0x22, 8, 7, thumb_y);
					set_hotspot(0, panel_x + 0x6a, box_y0 + thumb_y + 0x2a, panel_x + 0x72, box_y0 + thumb_y + 0x2e, 0, 0);
					draw_spell_cost(panel_x + 0x5e, box_y0 + 0x15, realm, 0, 0);
					gfx_show_area(panel_x + 6, box_y0 + 0x22, panel_x + 0x72, box_y0 + 0x4c);
					gfx_show_area(panel_x + 0x5e, box_y0 + 0x15, panel_x + 0x72, box_y0 + 0x1b);
				} else if (hit >= 0x12 && rows_shown + 0x12 > hit) {	/* list row */
					sel_row = list_top + hit - 0x12;
					spell = known_spell_list[sel_row];
					draw_text_list(panel_x + 6, box_y0 + 0x22, 0xf, 7, list_top, sel_row, rows_drawn);
					max_power = clamp_between(pc_spell_power_cap[pc].cap - spell_table[spell].level, 0, 6);
					i = spell_table[spell].cost * (max_power + 1);
					draw_spell_cost(panel_x + 0x5e, box_y0 + 0x15, realm, spell_table[spell].cost * (power + 1),
						!limit_by_points ? 999 : (pc_spell_power_cap[pc].points[realm][0] < i ? pc_spell_power_cap[pc].points[realm][0] : i));
					gfx_show_area(panel_x + 6, box_y0 + 0x22, panel_x + 0x72, box_y0 + 0x4c);
					gfx_show_area(panel_x + 0x5e, box_y0 + 0x15, panel_x + 0x72, box_y0 + 0x1b);
				}
				break;
			}
		}
	} while (running);
	restore_saved_screen(saved_area, 1);
	gfx_show_area(box_x0 - 1, box_y0 - 1, box_x1 + 1, box_y1 + 1);
	spell_dialog_result = (power << 8) + spell + 0x100;
	return spell_dialog_button;
}
