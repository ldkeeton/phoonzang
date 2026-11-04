/* Press the wall button the party faces: animate it, change the wall, clear
   the button. */
#include "structs/maze.h"
#include "structs/mazecell.h"
#include "msg.h"

extern struct maze_cells *maze_data;
extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_facing;
extern int current_level;
extern int set_bitfield(), redraw_maze_view(), show_message();
extern int play_sound_effect(), wait_ticks_or_key(), call_show_area();
extern int set_cell_wall(), play_maze_sound_effect();
extern int log_maze_change();
extern int clear_bit_pair();

press_wall_button(object_index)
int object_index;
{
	int cell_index;

	cell_index = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
	/* Show the pressed button: cell kind 6 facing the party. */
	set_bitfield(maze_data->cell_kind, cell_index, 6, 6);
	set_bitfield(maze_data->cell_direction, cell_index, 2, party_facing);
	redraw_maze_view();
	show_message(MSG_PRESS_BUTTON);
	play_sound_effect(4);
	wait_ticks_or_key(2);
	call_show_area(0, 146, 319, 152);
	set_cell_wall(party_facing, 1, party_map_piece, party_cell_x, party_cell_y);
	log_maze_change(current_level, 5, party_map_piece, party_cell_x,
		party_cell_y, 0, 0, 0, 0);
	/* Restore the cell, then clear this facing's button bits in the object
	   flags. */
	set_bitfield(maze_data->cell_kind, cell_index, 6, 0);
	set_bitfield(maze_data->cell_direction, cell_index, 2, 0);
	play_maze_sound_effect(18);
	redraw_maze_view();
	clear_bit_pair(&maze_tables->flags[object_index],
		party_facing * 2 + 8);
	log_maze_change(current_level, 6, object_index, 0, 0,
		maze_tables->flags[object_index], 0, 0, 0);
}
