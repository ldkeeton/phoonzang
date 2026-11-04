/* Move the party to the fallback map start when no member is active. */
#include "structs/mazecell.h"
#include "structs/rgnstate.h"

extern int party_char_count, current_level;
extern struct saved_region_blocks party_region;
extern struct maze_cells *maze_data;
extern int party_map_piece, party_cell_x, party_cell_y, party_facing;
extern int party_world_x, party_world_y, location_changed;
extern int maze_redraw_pending;

extern int member_is_active();
extern int test_bit();
extern int random_below();
extern int find_map_piece();
extern int save_previous_party_position();

relocate_party_if_none_active()
{
	int member_index;
	int any_active;

	/* Accumulate whether any party member is active. */
	any_active = 0;
	member_index = 0;
	goto check_member;
member_loop:
		any_active |= member_is_active(member_index);
		member_index++;
	check_member:
	if (member_index < party_char_count)
		goto member_loop;
	if (any_active == 0) {

	/* Use the fallback coordinates when the saved region bit is clear. */
	if (test_bit(party_region.state[current_level], 3) == 0) {
		party_map_piece = 10;
		party_cell_x = 7;
		party_cell_y = 2;
	}

	party_facing = random_below(4);
	party_world_x = maze_data->origin_x[party_map_piece] + party_cell_x;
	party_world_y = maze_data->origin_y[party_map_piece] + party_cell_y;
	find_map_piece(&party_cell_x, &party_cell_y, &party_map_piece,
		party_world_x, party_world_y);
	maze_redraw_pending = 1;
	location_changed = 1;
	save_previous_party_position();
		return 1;
	}
	return 0;
}
