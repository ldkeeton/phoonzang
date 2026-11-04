/* Record a maze change in maze_change_log, replacing an earlier entry for
   the same level, kind and location. */
#include "structs/mazechng.h"

extern struct maze_change *maze_change_log;
extern int maze_change_count;
extern int find_maze_change();
extern int play_sound_effect();

log_maze_change(level, kind, map_piece, cell_x, cell_y, value_a, value_b,
	value_c, value_d)
int level, kind, map_piece, cell_x, cell_y;
int value_a, value_b, value_c, value_d;
{
	int record_index;
	struct maze_change *record;

	/* Reuse an existing record for the same change. */
	record_index = find_maze_change(level, kind, map_piece, cell_x, cell_y);
	if (record_index == -1) {
		/* New records are appended to the runtime table. */
		record_index = maze_change_count;
		++maze_change_count;

		/* The original code waits indefinitely once the 512-entry limit is
		   reached. */
		if (maze_change_count >= 512) {
			for (;;) {
				play_sound_effect(0);
			}
		}
	}

	record = maze_change_log + record_index;
	record->level = level;
	record->kind = kind;
	record->location = (map_piece << 8) + (cell_x << 4) + cell_y;

	/* The kind selects how the value is packed. */
	switch (kind) {
	case 0:
		record->value = (((value_a << 4) + value_b) << 8)
			+ (value_c << 4) + value_d;
		break;
	case 1:
	case 2:
	case 3:
	case 4:
		record->value = value_a;
		break;
	case 5:
		record->value = (value_a << 8) + value_b;
		break;
	case 6:
		record->location = map_piece;
		record->value = value_a;
		break;
	}
}
