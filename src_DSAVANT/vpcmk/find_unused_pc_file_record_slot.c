/* Find the first unused PC file record slot. */
#include "structs/filehdr.h"
extern struct pc_file_header pc_file_header;


/* Return the first unused PC file record slot, or -1 when all are occupied. */
find_unused_pc_file_record_slot()
{
	int record_index;

	for (record_index = 0; record_index < pc_file_header.record_count;
			 record_index++) {
		if (pc_file_header.availability[record_index] == 0)
			return record_index;
	}
	return -1;
}
