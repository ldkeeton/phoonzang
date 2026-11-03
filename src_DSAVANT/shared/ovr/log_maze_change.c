/* Append a six-byte record describing a maze change. */
#include "structs/sixbyte.h"

extern struct six_byte_record *runtime_buffer_3k;
extern int runtime_six_byte_count;
extern int find_maze_change();
extern int play_sound_effect();

log_maze_change(first_value, change_kind, third_value, fourth_value,
	last_value, extra_first, extra_second, extra_third, extra_fourth)
int first_value, change_kind, third_value, fourth_value, last_value;
int extra_first, extra_second, extra_third, extra_fourth;
{
	int record_index;
	struct six_byte_record *record;

	/* Reuse an existing record with the same five lookup values. */
	record_index = find_maze_change(first_value, change_kind, third_value,
		fourth_value, last_value);
	if (record_index == -1) {
		/* New records are appended to the runtime table. */
		record_index = runtime_six_byte_count;
		++runtime_six_byte_count;

		/* The original code waits indefinitely once the 512-entry limit is
		   reached. */
		if (runtime_six_byte_count >= 512) {
			for (;;) {
				play_sound_effect(0);
			}
		}
	}

	record = runtime_buffer_3k + record_index;
	record->first_value = first_value;
	record->second_value = change_kind;
	record->stored_value = (third_value << 8) + (fourth_value << 4)
		+ last_value;

	/* The change kind selects how the last word is packed. */
	switch (change_kind) {
	case 0:
		record->unused_value = (((extra_first << 4) + extra_second) << 8)
			+ (extra_third << 4) + extra_fourth;
		break;
	case 1:
	case 2:
	case 3:
	case 4:
		record->unused_value = extra_first;
		break;
	case 5:
		record->unused_value = (extra_first << 8) + extra_second;
		break;
	case 6:
		record->stored_value = third_value;
		record->unused_value = extra_first;
		break;
	}
}
