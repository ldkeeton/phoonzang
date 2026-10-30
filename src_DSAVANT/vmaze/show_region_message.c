/* Show a region message and move the party through its marked steps. */

#include "structs/maze.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern int party_region, party_tag, party_map_piece;
extern int party_cell_x, party_cell_y, party_world_x, party_world_y;
extern int region_step_flag, message_delay;
extern int show_message(), wait_ticks_or_key(), call_show_area();
extern int get_bits(), redraw_maze_view(), random_below();
extern int adjust_party_world_position(), find_map_piece();
extern int pick_region_marker_party_tag(), save_previous_party_position(),
	show_rock_entry_message();

show_region_message()
{
	int region_index;
	int step_index;
	int region_bits[4];
	int region_flags;
	int message_count;
	int region_marker;
	int step_count;
	int selected_tag;
	int rotate_to_tag;
	int tag_direction;
	int random_distance;
	int delay_ticks;

	/* Show the region's message before processing its step markers. */
	if (maze_tables->key[party_region] > 0) {
		show_message(maze_tables->key[party_region]);
		wait_ticks_or_key(message_delay);
		/* Restore the default maze view after the message delay. */
		call_show_area(0, 146, 319, 152);
	}

	delay_ticks = maze_tables->party_mask[party_region];
	region_flags = maze_tables->flags[party_region];
	/* Cache four one-bit markers beginning at flag bit 8. */
	region_index = 0;
	cache_region_bit:
		region_bits[region_index] = get_bits(region_flags, region_index + 8, 1);
		region_index++;
	if (region_index < 4)
		goto cache_region_bit;
	message_count = get_bits(region_flags, 0, 8);
	region_marker = maze_tables->arg[party_region];
	/* Bits 12-14 select tag rotation, rotation direction, and random distance. */
	rotate_to_tag = get_bits(region_flags, 12, 1);
	tag_direction = get_bits(region_flags, 13, 1) == 1 ? 1 : -1;
	random_distance = get_bits(region_flags, 14, 1);

	/* Process each marked region step and update the party position. */
	for (region_index = 0; region_index < message_count; region_index++) {
		selected_tag = pick_region_marker_party_tag(region_bits);
		if (rotate_to_tag == 1 && selected_tag != party_tag) {
			/* Tags wrap across the four party positions. */
			if (tag_direction == 1)
				step_count = (selected_tag - party_tag + 4) % 4;
			else
				step_count = (party_tag - selected_tag + 4) % 4;
			/* The region marker adjusts the number of intermediate turns. */
			if (region_marker == 0)
				step_count--;
			for (step_index = 0; step_index < step_count; step_index++) {
				wait_ticks_or_key(delay_ticks);
				party_tag = (party_tag + tag_direction + 4) % 4;
				redraw_maze_view();
			}
		}

		wait_ticks_or_key(delay_ticks);
		party_tag = selected_tag;
		if (region_marker > 0) {
			save_previous_party_position();
			if (random_distance == 1) {
				/* Choose a distance from one through the region marker value. */
				adjust_party_world_position(party_tag,
					random_below(region_marker) + 1);
			} else {
				adjust_party_world_position(party_tag, region_marker);
			}
			if (find_map_piece(&party_cell_x, &party_cell_y,
				&party_map_piece, party_world_x, party_world_y) == 1) {
				show_rock_entry_message(MSG_YOU_ARE_IN_ROCK, 4);
				return;
			}
			party_region = maze_tables->map_first[party_map_piece];
			region_step_flag = 0;
		}
		redraw_maze_view();
	}
	wait_ticks_or_key(delay_ticks);
}
