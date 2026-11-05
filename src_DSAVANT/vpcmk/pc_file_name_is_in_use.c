/* Check whether a PC file already contains a character with this name. */
#include "structs/pcrec.h"
#include "structs/roster.h"

extern int pc_file_record_count;
extern struct roster_state_view pc_file_record_base_hi;
extern int transfer_pc_file_record();
extern int aztec_strcmp();

/* Return -1 when the name is already present, or 0 when it is available. */
pc_file_name_is_in_use(character_name)
char *character_name;
{
	int record_index;
	struct pc_rec record;

	for (record_index = 0; record_index < pc_file_record_count;
	     record_index++) {
		if (pc_file_record_base_hi.availability[record_index] > 0) {
			transfer_pc_file_record(&record, record_index, 0);
			if (aztec_strcmp(character_name, record.name) == 0)
				return -1;
		}
	}
	return 0;
}
