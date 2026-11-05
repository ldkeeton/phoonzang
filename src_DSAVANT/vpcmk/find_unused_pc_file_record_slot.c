/* Find the first unused PC file record slot. */
#include "structs/roster.h"

extern int pc_file_record_count;
extern struct roster_state_view pc_file_record_base_hi;

/* Return the first unused PC file record slot, or -1 when all are occupied. */
find_unused_pc_file_record_slot()
{
	int record_index;

	for (record_index = 0; record_index < pc_file_record_count;
			 record_index++) {
		if (pc_file_record_base_hi.availability[record_index] == 0)
			return record_index;
	}
	return -1;
}
