/* on entering the party's cell: optionally show a message unless the cell
   is already tagged for party_tag, then act on the first matching object */

#include "structs/maze.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern int party_map_piece, party_cell_y, party_cell_x, party_tag,
	message_delay;
extern int found_object_owner, party_region, game_state;

check_cell_objects(announce)
int announce;
{
	int cell, obj, kind, tag, shown;

	cell = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
		/* 8x8 cells per piece */
	read_cell_kind_direction(cell, &kind, &tag);
	shown = 0;
	/* kinds 5, 10, 11 already tagged with party_tag: defer the message */
	if ((kind == 5 || kind == 10 || kind == 11) && tag == party_tag) {
		if (announce)
			shown = 2;
	} else if (announce) {
		shown = 1;
		show_message(MSG_SEARCHING);
		wait_ticks_or_key(message_delay);
	}
	gfx_show_area(0, 146, 319, 152);	/* message strip */
	obj = maze_tables->map_first[party_map_piece];
	for (;;) {	/* each object at the party's x, y, map piece */
		obj = find_object_at(party_cell_x, party_cell_y, party_map_piece, obj);
		if (obj == -1)
			break;
		/* type 7: 2-bit field at bit 8 + 2 * party_tag */
		if (maze_tables->type[obj] == 7 &&
		    get_bits(maze_tables->flags[obj], party_tag * 2 + 8, 2) == 2) {
			claim_cell(obj);
			return;
		}
		if (maze_tables->type[obj] == 8 && check_type8_object(obj) == 1)
			return;
		if (maze_tables->type[obj] == 25 &&
		    (found_object_owner = maze_tables->sound[obj]) == party_tag) {
			game_state = 27;
			party_region = obj;
			return;
		}
		obj++;
	}
	if (shown == 2) {
		show_message(MSG_SEARCHING);
		wait_ticks_or_key(message_delay);
		gfx_show_area(0, 146, 319, 152);
	}
	if (shown) {
		show_message(MSG_NOTHING_2045);
		play_sound_effect(0);
		wait_ticks_or_key(message_delay / 2);	/* half the usual delay */
	}
	gfx_show_area(0, 146, 319, 152);
}
