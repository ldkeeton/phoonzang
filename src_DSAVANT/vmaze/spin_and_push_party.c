/* Spinner/push region: turn the party to random allowed facings and optionally
   push it forward. */

#include "structs/maze.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern int party_region, party_facing, party_map_piece;
extern int party_cell_x, party_cell_y, party_world_x, party_world_y;
extern int region_step_flag, message_delay;
extern int show_message(), wait_ticks_or_key(), call_show_area();
extern int get_bits(), redraw_maze_view(), random_below();
extern int adjust_party_world_position(), find_map_piece();
extern int pick_random_allowed_facing(), save_previous_party_position(),
	kill_party_with_message();

spin_and_push_party()
{
	int region_index;
	int step_index;
	int allowed_facings[4];
	int region_flags;
	int spin_count;
	int push_distance;
	int step_count;
	int new_facing;
	int animate_turn;
	int turn_direction;
	int random_distance;
	int delay_ticks;

	/* Show the region message first, if it has one. */
	if (maze_tables->key[party_region] > 0) {
		show_message(maze_tables->key[party_region]);
		wait_ticks_or_key(message_delay);
		/* Restore the default maze view after the message delay. */
		call_show_area(0, 146, 319, 152);
	}

	delay_ticks = maze_tables->party_mask[party_region];
	region_flags = maze_tables->flags[party_region];
	/* Flag bits 8-11: which of the four facings a spin may land on. */
	for (region_index = 0; region_index < 4; region_index++)
		allowed_facings[region_index] =
			get_bits(region_flags, region_index + 8, 1);
	spin_count = get_bits(region_flags, 0, 8);
	push_distance = maze_tables->arg[party_region];
	/* Bit 12 animates the turn, bit 13 picks its direction, bit 14 randomizes the
	   push distance. */
	animate_turn = get_bits(region_flags, 12, 1);
	turn_direction = get_bits(region_flags, 13, 1) == 1 ? 1 : -1;
	random_distance = get_bits(region_flags, 14, 1);

	/* Each spin: turn to a random allowed facing, then push the party forward. */
	for (region_index = 0; region_index < spin_count; region_index++) {
		new_facing = pick_random_allowed_facing(allowed_facings);
		if (animate_turn == 1 && new_facing != party_facing) {
			/* Count quarter turns to the new facing in the turn direction. */
			if (turn_direction == 1)
				step_count = (new_facing - party_facing + 4) % 4;
			else
				step_count = (party_facing - new_facing + 4) % 4;
			/* With no push, the last quarter turn is not animated. */
			if (push_distance == 0)
				step_count--;
			for (step_index = 0; step_index < step_count; step_index++) {
				wait_ticks_or_key(delay_ticks);
				party_facing = (party_facing + turn_direction + 4) % 4;
				redraw_maze_view();
			}
		}

		wait_ticks_or_key(delay_ticks);
		party_facing = new_facing;
		if (push_distance > 0) {
			save_previous_party_position();
			if (random_distance == 1) {
				/* Push a random 1..push_distance cells. */
				adjust_party_world_position(party_facing,
					random_below(push_distance) + 1);
			} else {
				adjust_party_world_position(party_facing, push_distance);
			}
			if (find_map_piece(&party_cell_x, &party_cell_y,
				&party_map_piece, party_world_x, party_world_y) == 1) {
				kill_party_with_message(MSG_YOU_ARE_IN_ROCK, 4);
				return;
			}
			party_region = maze_tables->map_first[party_map_piece];
			region_step_flag = 0;
		}
		redraw_maze_view();
	}
	wait_ticks_or_key(delay_ticks);
}
