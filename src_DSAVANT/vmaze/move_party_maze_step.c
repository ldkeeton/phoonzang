/* Move one maze step, resolve terrain effects, then mark the destination
   cell. */
#include "structs/pcrec.h"
#include "structs/maze.h"
#include "msg.h"
#include "structs/rgnstate.h"
extern struct saved_region_blocks party_region;

extern int party_map_piece, party_cell_x, party_cell_y;
extern int party_world_x, party_world_y, party_char_count;
extern struct maze_tables *maze_tables;
extern int save_location_flag, explored_cell_bitmap[];
extern int maze_redraw_pending;
extern int check_at_saved_location(), save_previous_party_position();
extern int read_cell_kind_direction(), adjust_party_world_position();
extern int find_map_piece(), kill_party_with_message(), get_cell_terrain();
extern int process_party_swimming(), random_below(), clamp_between();
extern int draw_party_member_panel(), set_bitmap_bit();
extern struct pc_rec party_records[];

move_party_maze_step(direction)
int direction;
{
	int cell_index;
	/* These unused locals preserve three words in the original frame. */
	int frame_slot_2, frame_slot_3, frame_slot_4;
	int cell_kind, cell_direction;
	int member_index;

	check_at_saved_location();
	save_previous_party_position();
	cell_index = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
	maze_redraw_pending = 1;
	read_cell_kind_direction(cell_index, &cell_kind, &cell_direction);
	/* Keep the redraw suppressed when the matching directional tile remains. */
	if ((cell_kind == 1 || cell_kind == 2) && cell_direction == direction)
		maze_redraw_pending = 0;
	adjust_party_world_position(direction, 1);
	if (find_map_piece(&party_cell_x, &party_cell_y, &party_map_piece,
		party_world_x, party_world_y)) {
		kill_party_with_message(MSG_YOU_ARE_IN_ROCK, 4);
		return 1;
	}
	if (!save_location_flag)
		check_at_saved_location();
	/* Apply the effect for the destination terrain. */
	switch (get_cell_terrain()) {
	case 1:
		process_party_swimming();
		break;
	case 2:
		kill_party_with_message(MSG_YOU_FELL_TO_YOUR_DEATH, 4);
		return 1;
		break;
	case 3:
		/* Terrain 3: members in state 0 without skill 23 who fail a resist[9] roll
		   gain 5-9 points of status[2]. */
		for (member_index = 0; member_index < party_char_count; member_index++) {
			if (party_records[member_index].state == 0 &&
			    party_records[member_index].skills[23] == 0) {
				if (random_below(100) >
				    party_records[member_index].resistance_rows.named.resist[9]) {
					party_records[member_index].status[2] =
						clamp_between(random_below(5) +
							party_records[member_index].status[2] + 5,
							0, 250);
					draw_party_member_panel(member_index, 1);
				}
			}
		}
		break;
	case 4:
		kill_party_with_message(MSG_YOU_ARE_IN_ROCK, 4);
		return 1;
	}
	cell_index = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
	set_bitmap_bit(explored_cell_bitmap, cell_index, 1);
	party_region.region = maze_tables->map_first[party_map_piece];
	return 0;
}
