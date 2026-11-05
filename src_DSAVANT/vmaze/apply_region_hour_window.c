/* Hour-window region event: set or clear level flags by whether the game hour
   is in the window. */
#include "structs/maze.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern long game_time;
extern int current_level;
extern unsigned char scenario_header_data[][16];

extern int get_bits();
extern int update_region_flags();
extern int set_bitmap_bit();
extern int mark_region_bits();

apply_region_hour_window()
{
	int region_flags;
	int start_hour;
	int end_hour;
	int adjusted_end_hour;
	int current_hour;
	int flag_to_clear;
	int outside_window;
	int mark_bits;
	int clear_level_flag;

	region_flags = maze_tables->flags[party_region.region];
	start_hour = get_bits(region_flags, 0, 5);
	end_hour = get_bits(region_flags, 5, 5);
	mark_bits = get_bits(region_flags, 10, 2);
	clear_level_flag = get_bits(region_flags, 12, 1);
	current_hour = (game_time % 1440) / 60;

	adjusted_end_hour = end_hour < start_hour ? 24 : end_hour;

	outside_window =
		current_hour < start_hour || current_hour >= adjusted_end_hour;
	/* A wrapping interval also includes its early morning portion. */
	if (end_hour < start_hour)
		outside_window = current_hour >= 0 && current_hour < end_hour ?
			0 : outside_window;

	/* Bit 12 clear: the region flag becomes "outside the window". */
	if (clear_level_flag == 0)
		update_region_flags(outside_window, mark_bits);
	else {
		/* Otherwise clear the level state bit key (inside) or party_mask
		   (outside). */
		flag_to_clear = outside_window == 0 ?
			maze_tables->key[party_region.region] :
			maze_tables->party_mask[party_region.region];
		if (flag_to_clear > 0) {
			set_bitmap_bit(party_region.state[current_level],
				flag_to_clear, 0);
			set_bitmap_bit(scenario_header_data[current_level],
				flag_to_clear, 0);
		}
		mark_region_bits(mark_bits);
	}
}
