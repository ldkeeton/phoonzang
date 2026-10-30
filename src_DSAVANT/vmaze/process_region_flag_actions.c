/* Match party cells against the region key and update region flag bitmaps. */
#include "structs/maze.h"
#include "structs/pcrec.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct pc_rec party_records[];
extern struct saved_region_blocks party_region;
extern int party_char_count;
extern int get_bits();
extern int update_region_flag_bitmaps();
extern int mark_region_bits();

process_region_flag_actions()
{
	int member_index;
	int cell_index;
	int side_index;
	int region_flags;
	int region_key;
	int cell_match_mode;
	int all_cells_matched;

	/* Start optimistic and look for any cell that should clear the result. */
	all_cells_matched = 1;
	region_key = maze_tables->key[party_region.region];
	region_flags = maze_tables->flags[party_region.region];
	cell_match_mode = get_bits(region_flags, 2, 1);

	/* Scan both ten-cell sides of every party record. */
	for (member_index = 0; member_index < party_char_count; member_index++) {
		for (side_index = 0; side_index < 2; side_index++) {
			for (cell_index = 0; cell_index < 10; cell_index++) {
				if (party_records[member_index].cell[side_index][cell_index].key
					== region_key) {
					/* A set key bit or zero match mode invalidates the match. */
					if ((
						party_records[member_index].cell[side_index][cell_index].flags & 1) != 0
						|| cell_match_mode != 0)
						all_cells_matched = 0;
				}
			}
		}
	}

	/* Apply the region key and per-region mode to both flag bitmaps. */
	update_region_flag_bitmaps(maze_tables->party_mask[party_region.region],
		maze_tables->arg[party_region.region], all_cells_matched);

	/* Keep existing mark bits when the matching condition and region bit are
	   set. */
	if (all_cells_matched != 0) {
		if (get_bits(region_flags, 3, 1) == 0)
			goto process_done;
	}

	/* Otherwise forward the two low marker bits. */
	mark_region_bits(get_bits(region_flags, 0, 2));

process_done:
	return;
}
