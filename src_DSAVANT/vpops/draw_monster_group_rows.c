/* Draw one row per monster group: its unit count and name, and in
   parentheses how many units can act (also stored as active_unit_count);
   selected_group's row is highlighted. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int monster_group_count;
extern int redraw_area_set();
extern int call_fill_area(), call_set_text_color(), call_set_text_pos();
extern int draw_number_field(), draw_font_glyph(), draw_text_glyphs();

draw_monster_group_rows(selected_group)
int selected_group;
{
	int group_index, unit_index;
	char row_buffer[80];

	redraw_area_set(1);
	for (group_index = 1; group_index <= monster_group_count; group_index++) {
		/* Count units with state < 2 and status[2], status[3] clear. */
		battle_groups[group_index]->active_unit_count = 0;
		for (unit_index = 0;
		     unit_index < battle_groups[group_index]->unit_count;
		     unit_index++) {
			if (battle_groups[group_index]->unit[unit_index].state < 2 &&
			    battle_groups[group_index]->unit[unit_index].status[3] == 0 &&
			    battle_groups[group_index]->unit[unit_index].status[2] == 0)
				battle_groups[group_index]->active_unit_count++;
		}

		/* Highlight the selected row and set its text color. */
		if (group_index == selected_group) {
			call_fill_area(98, 158 + 6 * group_index,
				221, 162 + 6 * group_index, 95);
			call_set_text_color(1, 95);
		} else
			call_set_text_color(95, 0);

		call_set_text_pos(99, 158 + 6 * group_index);
		draw_number_field(battle_groups[group_index]->unit_count, 1, 0);
		draw_font_glyph(32, 0);
		draw_text_glyphs(battle_group_ext[group_index]->name[
			battle_groups[group_index]->unidentified]
			[battle_groups[group_index]->unit_count == 1 ? 0 : 1], 0);

		call_set_text_pos(206, 158 + 6 * group_index);
		draw_font_glyph(40, 0);
		draw_number_field(
			battle_groups[group_index]->active_unit_count, 1, 0);
		draw_font_glyph(41, 0);
	}
}
