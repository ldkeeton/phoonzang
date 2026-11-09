/* Find the maze_change_log entry for a level, kind and location; -1 when
   there is none. */
#include "structs/mazechng.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern struct maze_change *maze_change_log;

find_maze_change(level, kind, map_piece, cell_x, cell_y)
int level, kind, map_piece, cell_x, cell_y;
{
	int record_index;
	int location;
	struct maze_change *record;

	location = (map_piece << 8) + (cell_x << 4) + cell_y;
	record = maze_change_log;
	for (record_index = 0; record_index < scenario_header.maze_change_count;
		record_index++, record++) {
		if (record->level != level || record->kind != kind)
			continue;

		/* Kind 6 is keyed by the region index alone. */
		if (kind == 6) {
			if (record->location == map_piece)
				return record_index;
		} else if (record->location == location) {
			return record_index;
		}
	}
	return -1;
}
