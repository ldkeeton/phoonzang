/* Load a maze level and rebuild its region and floor-item bitmaps. */
#include "structs/maze.h"
#include "structs/flooritm.h"
#include "structs/rgnstate.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern long far *tick_counter_ptr;
extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern struct floor_item *floor_items;
extern int floor_item_cell_bits[];
extern int maze_object_cell_bitmap[];
extern long maze_refresh_deadline;
extern int current_level, party_map_piece, game_state, party_return_state;
extern int trigger_facing;
extern int stop_and_clear_maze_sounds(), clear_marker_string_frames();
extern int ensure_game_disk(), load_current_maze_level();
extern int aztec_movmem(), aztec_setmem(), set_bitmap_bit();

enter_level(level)
int level;
{
	int piece_index;
	int map_index;
	int item_piece;
	int item_x;
	int item_y;
	struct floor_item *item;

	stop_and_clear_maze_sounds();
	maze_refresh_deadline = *tick_counter_ptr + 36;
	clear_marker_string_frames();
	current_level = level;
	ensure_game_disk(2, current_level);
	/* Negative levels stop after disk setup. */
	if (current_level < 0) {
		game_state = 7;
		return;
	}
	load_current_maze_level();
	/* Each saved region state block and scenario header entry is 16 bytes. */
	aztec_movmem(scenario_header.level_flags[current_level],
		party_region.state[current_level], 16);
	party_return_state = 5;
	trigger_facing = -1;
	/* Clear the 128-byte cell bitmap before marking object cells. */
	aztec_setmem(maze_object_cell_bitmap, 128, 0);
	party_region.region = maze_tables->map_first[party_map_piece];
	/* Scan each piece's contiguous object range and mark nonempty cells. */
	for (piece_index = 0; piece_index < 16; piece_index++) {
		map_index = maze_tables->map_first[piece_index];
		while (map_index < 240 &&
		       maze_tables->map[map_index] == piece_index) {
			if (maze_tables->type[map_index] > 0) {
				set_bitmap_bit(maze_object_cell_bitmap,
					(piece_index << 6) +
					(maze_tables->y[map_index] << 3) +
					maze_tables->x[map_index], 1);
			}
			map_index++;
		}
	}
	/* Reset and rebuild the floor item cell bitmap for this level. */
	aztec_setmem(floor_item_cell_bits, 128, 0);
	item = floor_items;
	/* position: piece in the high byte, x and y in the low byte's nibbles. */
	for (piece_index = 0; piece_index < scenario_header.floor_item_count;
		piece_index++) {
		if (item->map == current_level) {
			item_piece = item->position / 256;
			item_x = (item->position % 256) / 16;
			item_y = (item->position % 256) % 16;
			set_bitmap_bit(floor_item_cell_bits,
				(item_piece << 6) + (item_y << 3) + item_x, 1);
		}
		item++;
	}
	game_state = 5;
}
