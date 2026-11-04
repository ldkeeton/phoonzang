/* Cell-kind change event: set a target cell's kind and direction, with an
   optional button/lever response. */
#include "structs/maze.h"
#include "structs/mazecell.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern struct maze_cells *maze_data;
extern int party_region, current_level, loaded_sound_id;
extern int get_bits(), log_maze_change(), set_bitfield();
extern int ensure_sound_loaded(), redraw_maze_view(), show_message();
extern int play_sound_effect(), wait_ticks_or_key(), call_show_area();
extern int wait_and_free_sound(), mark_region_bits();

change_cell_kind()
{
	int cell_index;
	int region_flags;
	int cell_x;
	int cell_y;
	int map_piece;
	int new_kind;
	int new_direction;
	int sound_id;

	region_flags = maze_tables->flags[party_region];
	cell_x = get_bits(region_flags, 0, 3);
	cell_y = get_bits(region_flags, 3, 3);
	map_piece = get_bits(region_flags, 6, 4);
	sound_id = maze_tables->party_mask[party_region];
	/* Target cell index: 64 cells per map piece, 8 per row. */
	cell_index = (map_piece << 6) + (cell_y << 3) + cell_x;
	new_kind = maze_tables->key[party_region];
	new_direction = maze_tables->arg[party_region];

	log_maze_change(current_level, 5, map_piece, cell_x, cell_y,
		new_kind, new_direction, 0, 0);
	set_bitfield(maze_data->cell_kind, cell_index, 6, new_kind);
	set_bitfield(maze_data->cell_direction, cell_index, 2,
		new_direction);

	/* Load a positive region sound before its event is handled. */
	if (sound_id > 0)
		ensure_sound_loaded(sound_id);

	/* Bit 10: redraw and, for kinds 5/6/10/11, show the button or lever
	   response. */
	if (get_bits(region_flags, 10, 1) == 1) {
		redraw_maze_view();
		if (new_kind == 5 || new_kind == 6 || new_kind == 10 ||
		    new_kind == 11) {
			if (new_kind == 6 || new_kind == 10 || new_kind == 11)
				show_message(new_kind == 6 ? MSG_PRESS_BUTTON :
					MSG_PULL_LEVER);
			/* Kinds 5 and 6 play sound 4, kinds 10 and 11 sound 1. */
			play_sound_effect(new_kind == 5 || new_kind == 6 ? 4 : 1);
			wait_ticks_or_key(2);
			call_show_area(0, 146, 319, 152);
		}
	}
finish_region_event:
	/* Release the loaded region sound after the event response. */
	if (sound_id > 0) {
		play_sound_effect(16);
		wait_and_free_sound(16);
		loaded_sound_id = -1;
	}
	mark_region_bits(get_bits(region_flags, 11, 2));
}
