/* Run one step of the combat screen animation cycle (-3..11): show, restore,
   queue cell overlays, then draw each overlay item. */

#include "structs/ovlitem.h"

extern int party_screen_animation_state;
extern int pending_effect_sound;
extern int effect_frame_phase;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern int screen_cache_index;
extern long screen_cache[];
extern int party_status_frame;
extern int cell_overlay_y_offset[][3];
extern struct overlay_list overlay_list;

extern int call_show_area();
extern int call_restore_screen();
extern int play_sound_effect();
extern int call_wait_sound();
extern int check_party_redraw_interval();
extern int draw_overlay_list_item_text();
extern int queue_cell_action_overlay();
extern int queue_cell_effect_overlay();
extern int queue_marker_overlay();
extern int draw_party_status_glyphs();

step_combat_screen_animation()
{
	int row;
	int column;
	int redraw_result;

	switch (party_screen_animation_state) {
	case -3:
		call_show_area(72, 32, 247, 143);
		if (pending_effect_sound != 0) {
			play_sound_effect(5);
			if (pending_effect_sound == 2)
				call_wait_sound(1);
		}
		pending_effect_sound = 0;
		effect_frame_phase = (effect_frame_phase + 1) % 2;
		break;
	case -2:
		if (*tick_counter_ptr - party_redraw_last_tick >=
			party_redraw_interval)
			screen_cache_index = (screen_cache_index + 1) % 2;
		call_restore_screen(screen_cache[screen_cache_index], 0, 0);
		for (row = 0; row < 12; row++)
			overlay_list.items[row]->code = 255;
		overlay_list.count = 0;
		break;
	case -1:
		redraw_result = check_party_redraw_interval();
		for (row = 0; row < 3; row++) {
			for (column = 0; column < 3; column++) {
				queue_cell_action_overlay(row, column, 0,
					100 - cell_overlay_y_offset[row][column],
					72, 248, redraw_result);
				queue_cell_effect_overlay(row, column);
			}
		}
		queue_marker_overlay();
		if (redraw_result != 0)
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
