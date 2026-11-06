/* Animate the party cells during an NPC encounter. */
extern int cell_slot_ref[3][3];
#include "msg.h"
extern int npc_cell_effect_frame[3][3];
extern int npc_cell_overlay_y_offset[3][3];
extern int action_overlay_steps[2][4];
extern int npc_record_index;
extern unsigned char npc_monster_picture_id;
extern int npc_encounter_sound;
extern int screen_cache_index, party_status_frame;
extern int party_screen_animation_state;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int call_show_area(), load_message_string();
extern int show_centered_npc_message();
extern int random_below(), play_sound_effect();
extern int step_npc_screen_animation(), run_npc_screen_animation();
extern int check_party_redraw_interval();
extern int queue_npc_cell_overlay(), queue_marker_overlay();
extern int draw_party_status_glyphs();


animate_npc_encounter_cells(action_overlay_index, wait_for_response)
int action_overlay_index;
int wait_for_response;
{
	int animation_counter;
	int cell_row;
	int cell_column;
	int overlay_frame;
	int animation_phase;
	int redraw_due;
	int has_occupied_cell;
	char encounter_message[80];

	has_occupied_cell = 0;
	for (cell_row = 0; cell_row < 3; ++cell_row) {
		for (cell_column = 0; cell_column < 3; ++cell_column) {
			if (cell_slot_ref[cell_row][cell_column] != 0)
				has_occupied_cell = 1;
		}
	}
	if (!has_occupied_cell) {
		if (wait_for_response)
			call_show_area(55, 146, 265, 198);
		run_npc_screen_animation();
		return;
	}
	if (wait_for_response) {
		load_message_string(MSG_AN_ENCOUNTER, encounter_message);
		show_centered_npc_message(encounter_message, 0);
	}
	animation_phase = npc_record_index == 0 ? 1 :
		(npc_monster_picture_id == 24 ? 0 : random_below(2));
	party_redraw_last_tick = *tick_counter_ptr;
	redraw_due = 0;
	animation_counter = 0;
	for (;;) {
		if (wait_for_response && animation_counter == 1 && npc_encounter_sound > 0)
			play_sound_effect(npc_encounter_sound);
		do {
		party_screen_animation_state = -2;
		step_npc_screen_animation();
		for (cell_row = 0; cell_row < 3; ++cell_row) {
			for (cell_column = 0; cell_column < 3; ++cell_column) {
				overlay_frame = (cell_column % 2 == 1 || cell_column == 0) ?
					0 - action_overlay_steps[action_overlay_index][animation_counter] :
					action_overlay_steps[action_overlay_index][animation_counter];
				if (cell_row == 0 && cell_column == 0)
					overlay_frame = animation_phase == 0 ?
						0 - action_overlay_steps[action_overlay_index][animation_counter] :
						action_overlay_steps[action_overlay_index][animation_counter];
				queue_npc_cell_overlay(cell_row, cell_column,
					npc_cell_effect_frame[cell_row][cell_column] == 1 ? overlay_frame : 0,
					100 - npc_cell_overlay_y_offset[cell_row][cell_column], 72, 248,
					redraw_due);
			}
		}
		queue_marker_overlay();
		draw_party_status_glyphs();
		party_screen_animation_state = 0;
		do {
			step_npc_screen_animation();
		} while (party_screen_animation_state != -2);
		redraw_due = check_party_redraw_interval();
		if (redraw_due) {
			screen_cache_index = (screen_cache_index + 1) % 2;
			party_status_frame = (party_status_frame + 1) % 2;
		}
		} while (redraw_due == 0);
		++animation_counter;
		if (animation_counter >= 4)
			break;
	}
	for (cell_row = 0; cell_row < 3; ++cell_row) {
		for (cell_column = 0; cell_column < 3; ++cell_column)
			npc_cell_effect_frame[cell_row][cell_column] = 0;
	}
	if (wait_for_response)
		call_show_area(55, 146, 265, 198);
}
