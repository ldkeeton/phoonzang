/* Queues party action overlays while the melee screen animation advances. */

#include "structs/member.h"
#include "msg.h"

extern int load_message_string(), flash_message_line();
extern int play_sound_effect(), step_party_screen_animation();
extern int queue_cell_action_overlay(), queue_marker_overlay();
extern int draw_party_status_glyphs(), check_party_redraw_interval();
extern int call_show_area();

extern int show_melee_result, npc_melee;
extern int party_screen_animation_state;
extern int screen_cache_index, party_status_frame;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern int cell_overlay_y_offset[][3];
extern int cell_action_marks[][3];
extern int action_overlay_steps[2][4];
extern struct member_ext *battle_group_ext_1;
play_action_overlays(wait_for_result)
int wait_for_result;
{
	int animation_round, row, column, overlay_code;
	int redraw_result;
	char message[80];

	/* Show the encounter message before drawing action overlays. */
	if (show_melee_result != 0) {
		load_message_string(MSG_AN_ENCOUNTER, message);
		flash_message_line(message, 0);
	}
	redraw_result = 0;
	party_redraw_last_tick = *tick_counter_ptr;
	animation_round = 0;
	/* Retry this animation round until the redraw interval elapses. */
	for (;;) {
		if (wait_for_result == 0 && animation_round == 1
		    && battle_group_ext_1->sound_id > 0)
			play_sound_effect(16);
		for (;;) {
			/* Queue each cell in the three-by-three action grid. */
		party_screen_animation_state = -2;
		step_party_screen_animation();
		row = 0;
		for (;;) {
			column = 0;
			for (;;) {
				/* Negate the sort code for columns zero and one. */
				overlay_code = (column % 2 == 1 || column == 0)
					? 0 - action_overlay_steps[wait_for_result][animation_round]
					: action_overlay_steps[wait_for_result][animation_round];
				if (row == 0 && column == 0 && npc_melee == 1)
					overlay_code = 0;
				/* 72 and 248 bound the horizontal overlay area. */
				queue_cell_action_overlay(row, column,
					cell_action_marks[row][column] == 1 ? overlay_code : 0,
					100 - cell_overlay_y_offset[row][column],
					72, 248, redraw_result);
				column++;
				if (column >= 3)
					break;
			}
			row++;
			if (row >= 3)
				break;
		}
		queue_marker_overlay();
		draw_party_status_glyphs();
		party_screen_animation_state = 0;
		do {
			step_party_screen_animation();
		} while (party_screen_animation_state != -2);
		redraw_result = check_party_redraw_interval();
		if (redraw_result != 0) {
			screen_cache_index = (screen_cache_index + 1) % 2;
			party_status_frame = (party_status_frame + 1) % 2;
		}
		if (redraw_result != 0)
			break;
		}
		animation_round++;
		/* Four animation rounds form the complete overlay cycle. */
		if (animation_round >= 4)
			break;
	}
	/* Clear the marks once all four animation rounds have completed. */
	row = 0;
/* Clear the nine marks after the animation finishes. */
clear_action_mark_row:
	column = 0;
clear_action_mark_column:
	cell_action_marks[row][column] = 0;
	column++;
	if (column < 3)
		goto clear_action_mark_column;
	row++;
	if (row < 3)
		goto clear_action_mark_row;
	npc_melee = 0;
	if (show_melee_result != 0) {
		call_show_area(55, 146, 265, 198);
		show_melee_result = 0;
	}
}
