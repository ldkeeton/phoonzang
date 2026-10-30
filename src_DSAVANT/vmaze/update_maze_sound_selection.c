/* Choose the maze sound pair from saved-location, cell, and time state. */

#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int party_map_piece, party_cell_x, party_cell_y;
extern int save_location_flag, maze_sound_slot_e, maze_sound_pair_state;
extern long game_time;
extern int check_at_saved_location();
extern int test_bit();
extern int load_maze_sound_pair();

update_maze_sound_selection(idle_slot, idle_sound, active_slot,
			    active_sound, reload_same_slot, pair_state)
int idle_slot, idle_sound;
int active_slot, active_sound;
int reload_same_slot, pair_state;
{
	int cell_number, elapsed_offset, time_bucket, should_update;

	should_update = 0;
	check_at_saved_location();
	if (save_location_flag) {
		/* Saved locations use the fixed pair in slot 13. */
		if (maze_sound_slot_e != 13)
			load_maze_sound_pair(13, 0);
		maze_sound_pair_state = pair_state;
		return pair_state;
	}

	/* State 2 selects the map-cell test; other states use the timer. */
	switch (pair_state) {
	case 2:
		cell_number = (party_map_piece << 6) + (party_cell_y << 3)
			+ party_cell_x;
		should_update =
			(test_bit(maze_data->cell_flags, cell_number)
			 && test_bit(maze_data->cell_flags_secondary, cell_number))
			? 1 : 0;
		break;
	default:
		/* The timer window wraps every 1,440 ticks after the 330-tick offset. */
		elapsed_offset = 330;
		time_bucket = (game_time - elapsed_offset) % 1440;
		/* Values outside the 876-tick window request a pair update. */
		should_update = (time_bucket < 0 || time_bucket >= 876) ? 1 : 0;
	}

	if (should_update) {
		/* The active cell state selects the corresponding requested pair. */
		if (maze_sound_slot_e != active_slot || reload_same_slot)
			load_maze_sound_pair(active_slot, active_sound);
	} else {
		if (maze_sound_slot_e != idle_slot || reload_same_slot)
			load_maze_sound_pair(idle_slot, idle_sound);
	}

	maze_sound_pair_state = pair_state;
	return pair_state;
}
