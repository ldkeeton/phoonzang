/* Draw a compact overview of one party member. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern unsigned char member_icon[];
extern int call_set_text_pos(), draw_font_glyph(), call_fill_area();
extern int strlen(), call_set_text_color(), draw_text_glyphs();
extern int draw_power_bar(), call_show_area();

/* Render the overview for one party member. */
draw_party_member_overview(member_index, show_area, clear_name)
int member_index;
int show_area;
int clear_name;
{
	int index;
	int panel_selection;
	int column;
	int row;
	int realm_current;
	int realm_max;

	column = 4 + 50 * (member_index % 3);
	row = 112 + 39 * (member_index / 3);
	call_set_text_pos(column, row);
	draw_font_glyph(member_icon[member_index * 2], 5);
	if (clear_name) {
		call_fill_area(column + 4, row + 32,
			column + 6 * strlen(party_records[member_index].name) + 2,
			row + 36, 24);
	}
	call_set_text_color(1, 0);
	call_set_text_pos(column + 4, row + 32);
	draw_text_glyphs(party_records[member_index].name, 0);
	draw_power_bar(column + 34, row + 7, 3, 22,
		party_records[member_index].hp[0],
		party_records[member_index].hp[1], 27);
	draw_power_bar(column + 38, row + 7, 3, 22,
		party_records[member_index].stamina[0],
		party_records[member_index].stamina[1], 86);
	realm_current = 0;
	realm_max = 0;
	for (index = 0; index < 6; index++) {
		realm_current += party_records[member_index].realm_points[index][0];
		realm_max += party_records[member_index].realm_points[index][1];
	}
	draw_power_bar(column + 42, row + 7, 3, 22,
		realm_current, realm_max, 152);
	if (show_area)
		call_show_area(column, row, column + 46, row + 38);
}
