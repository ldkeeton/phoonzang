/* Update region bitmaps and check party members for nausea at the marked
   site. */

#include "structs/maze.h"
#include "structs/rgnstate.h"
#include "structs/pcrec.h"
#include "msg.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int current_level, party_map_piece, party_cell_x, party_cell_y;
extern struct pc_rec party_records[];
extern int party_char_count;
extern int get_bits();
extern int set_bitmap_bit();
extern int show_scene_message_sequence();
extern int redraw_treasure_caption();
extern int random_below();
extern int inflict_member_status();

/* Apply the active region event and its nausea check. */
apply_region_nausea_and_flags()
{
	int member;
	int object_flags;
	int map_bit;

	object_flags = maze_tables->flags[party_region.region];
	if (maze_tables->party_mask[party_region.region] > 0)
		show_scene_message_sequence(maze_tables->party_mask[party_region.region], 0);
	if (current_level == 14 && party_map_piece == 8
	    && party_cell_x == 7 && party_cell_y == 2) {
		redraw_treasure_caption(1);
		for (member = 0; member < party_char_count; member++) {
			if (party_records[member].state < 3
			    && random_below(200)
			    	> party_records[member].resistance_rows.values[1][5])
				inflict_member_status(member, MSG_NAUSEATED,
					5, 8, 10, 10, 50);
		}
	}
	map_bit = get_bits(object_flags, 0, 8);
	set_bitmap_bit(party_region.state[current_level], map_bit, 0);
	if (get_bits(object_flags, 11, 1) == 1)
		set_bitmap_bit(scenario_header.level_flags[current_level], map_bit, 0);
	map_bit = get_bits(object_flags, 9, 2);
	if (map_bit > 0) {
		set_bitmap_bit(party_region.state[current_level],
			maze_tables->f960[party_region.region], 1);
		if (map_bit > 1)
			set_bitmap_bit(scenario_header.level_flags[current_level],
				maze_tables->f960[party_region.region], 1);
	}
}
