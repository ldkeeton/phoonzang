/* Door event: set one wall of a target cell to open (kind 1) or locked (kind
   6), animating it if seen. */
#include "structs/maze.h"
extern struct maze_tables *maze_tables;
extern int party_region, party_facing;
extern int get_bits();
extern int play_maze_sound_effect(), ensure_sound_loaded();
extern int animate_region_view_transition(), animate_party_status_frame();
extern int set_cell_wall(), redraw_maze_view(), wait_ticks_or_key();
extern int wait_and_free_sound(), mark_region_bits();
extern int loaded_sound_id;

change_door_wall()
{
	int reserved_stack_slot;
	int region_flags;
	int map_piece;
	int cell_x;
	int cell_y;
	int new_wall_kind;
	int animate_front;
	int wall_top;
	int lock_door;
	int has_sound;
	int wall_direction;
	int facing_remainder;
	int map_turn;
	int region_key_remainder;
	int region_key;

	/* Each packed direction and key value uses a high byte and a low byte. */
	wall_direction = maze_tables->party_mask[party_region] / 256;
	facing_remainder = maze_tables->party_mask[party_region] % 256;
	region_key = maze_tables->key[party_region] / 256;
	region_key_remainder = maze_tables->key[party_region] % 256;
	/* How far the party is turned from the wall's direction. */
	map_turn = (party_facing - wall_direction + 4) % 4;

	/* A nonzero region argument enables cue 18 and loaded sound 16. */
	has_sound = maze_tables->arg[party_region];
	if (has_sound != 0) {
		play_maze_sound_effect(18);
		ensure_sound_loaded(16);
	}

	region_flags = maze_tables->flags[party_region];
	cell_x = get_bits(region_flags, 0, 3);
	cell_y = get_bits(region_flags, 3, 3);
	map_piece = get_bits(region_flags, 6, 4);
	wall_top = get_bits(region_flags, 10, 1);
	lock_door = get_bits(region_flags, 11, 1);
	animate_front = get_bits(region_flags, 12, 1);
	/* Bit 11 locks the door (wall kind 6); otherwise it becomes kind 1. */
	new_wall_kind = lock_door != 0 ? 6 : 1;

	/* Direction 0 animates the region face before changing its wall pieces. */
	if (animate_front != 0 && wall_top != 0 && lock_door != 0 &&
	    map_turn == 0) {
		if (party_facing == facing_remainder)
			animate_region_view_transition(0, region_key_remainder,
				region_key, has_sound);
		else
			animate_party_status_frame(7, has_sound);
	}

	set_cell_wall(wall_direction, new_wall_kind, map_piece, cell_x,
		cell_y);

	/* Redraw and animate the wall transition selected by its flags. */
	if (animate_front != 0) {
		if (wall_top != 0) {
			if (lock_door == 0 && map_turn == 0) {
				if (party_facing == facing_remainder)
					animate_region_view_transition(1,
						region_key_remainder, region_key, has_sound);
				else
					animate_party_status_frame(7, has_sound);
			} else if (map_turn >= 1 && map_turn <= 3)
				animate_party_status_frame(7, has_sound);
			redraw_maze_view();
		} else
			redraw_maze_view();
	} else {
		if (wall_top != 0)
			animate_party_status_frame(7, has_sound);
		/* Pause two ticks when the front wall flag is clear. */
		wait_ticks_or_key(2);
	}

	if (has_sound != 0) {
		wait_and_free_sound(16);
		loaded_sound_id = -1;
	}
	/* Mark group 2 when the region table byte is nonzero. */
	if (maze_tables->f960[party_region] > 0)
		mark_region_bits(2);
}
