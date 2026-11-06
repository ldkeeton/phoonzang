/* Advance one state of the NPC screen animation. */

#include "structs/ovlitem.h"

extern int party_screen_animation_state;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern int screen_cache_index;
extern int screen_cache[2][2];
extern struct {
	int count;
	struct overlay_item *items[12];
} overlay_list;
extern int npc_area_bottom;
extern int npc_cell_overlay_y_offset[3][3];
extern int party_status_frame;

extern int call_show_area();
extern int call_restore_screen();
extern int check_party_redraw_interval();
extern int queue_npc_cell_overlay();
extern int queue_marker_overlay();
extern int draw_party_status_glyphs();
extern int draw_overlay_list_item_text();

step_npc_screen_animation()
{
	int row;
	int column;
	int redraw_due;

	switch (party_screen_animation_state) {
	case -3:
		call_show_area(72, 32, 247, npc_area_bottom);
		break;
	case -2:
		if (*tick_counter_ptr - party_redraw_last_tick >=
			party_redraw_interval)
			screen_cache_index = (screen_cache_index + 1) % 2;
		call_restore_screen(screen_cache[screen_cache_index][0],
			screen_cache[screen_cache_index][1], 0, 0);
		for (row = 0; row < 12; ++row)
			overlay_list.items[row]->code = 255;
		overlay_list.count = 0;
		break;
	case -1:
		redraw_due = check_party_redraw_interval();
		for (row = 0; row < 3; ++row) {
			for (column = 0; column < 3; ++column)
				queue_npc_cell_overlay(row, column, 0,
					100 - npc_cell_overlay_y_offset[row][column],
					72, 248, redraw_due);
		}
		queue_marker_overlay();
		if (redraw_due != 0)
			party_status_frame = (party_status_frame + 1) % 2;
		draw_party_status_glyphs();
		break;
	default:
		draw_overlay_list_item_text(party_screen_animation_state);
	}

	++party_screen_animation_state;
	if (party_screen_animation_state == 12)
		party_screen_animation_state = -3;
}
