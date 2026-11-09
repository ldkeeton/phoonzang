/* on entering the party's cell: optionally show a message unless the cell
   is already tagged for party_facing, then act on the first matching object */

#include "structs/maze.h"
#include "msg.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;

extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_facing,
	message_delay;
extern int trigger_facing, game_state;

check_cell_objects(announce)
int announce;
{
	int cell, obj, kind, direction, shown;

	cell = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
		/* 8x8 cells per piece */
	read_cell_kind_direction(cell, &kind, &direction);
	shown = 0;
	/* kinds 5, 10, 11 facing the party's heading: defer the message */
	if ((kind == 5 || kind == 10 || kind == 11) && direction == party_facing) {
		if (announce)
			shown = 2;
	} else if (announce) {
		shown = 1;
		show_message(MSG_SEARCHING);
		wait_ticks_or_key(message_delay);
	}
	call_show_area(0, 146, 319, 152);	/* message strip */
	obj = maze_tables->map_first[party_map_piece];
	for (;;) {	/* each object at the party's x, y, map piece */
		obj = find_object_at(party_cell_x, party_cell_y, party_map_piece, obj);
		if (obj == -1)
			break;
		/* type 7: 2-bit field at bit 8 + 2 * party_facing */
		if (maze_tables->type[obj] == 7 &&
		    get_bits(maze_tables->flags[obj], party_facing * 2 + 8, 2) == 2) {
			press_wall_button(obj);
			return;
		}
		if (maze_tables->type[obj] == 8 && check_type8_object(obj) == 1)
			return;
		if (maze_tables->type[obj] == 25 &&
		    (trigger_facing = maze_tables->arg[obj]) == party_facing) {
			game_state = 27;
			party_region.region = obj;
			return;
		}
		obj++;
	}
	if (shown == 2) {
		show_message(MSG_SEARCHING);
		wait_ticks_or_key(message_delay);
		call_show_area(0, 146, 319, 152);
	}
	if (shown) {
		show_message(MSG_NOTHING_2045);
		play_sound_effect(0);
		wait_ticks_or_key(message_delay / 2);	/* half the usual delay */
	}
	call_show_area(0, 146, 319, 152);
}
