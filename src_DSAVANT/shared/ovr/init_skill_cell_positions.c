/* Set the prior-frame positions for the fourteen party skill cells. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int loc_NJOH();

init_skill_cell_positions(member_index, slot_offset_values,
			     slot_level_codes)
int member_index;
char *slot_offset_values;
char *slot_level_codes;
{
	int cell_index;
	int cell_offset;
	int power_limit;

	/* One pass per cell: clear its previous position, then place it from the
	   template pair.  The floor can raise the cap; at most sixteen levels. */
	for (cell_index = 0; cell_index < 14; cell_index++) {
		party_records[member_index].prev[cell_index] = 0;
		power_limit = party_records[member_index].power_cap
			< party_records[member_index].power_floor
			? party_records[member_index].power_floor
			: party_records[member_index].power_cap;
		power_limit = power_limit > 16 ? 16 : power_limit - 1;
		cell_offset = slot_offset_values[cell_index] * 4
			+ (slot_level_codes[cell_index] - '0') * power_limit
			- 260;
		loc_NJOH(member_index, 0, cell_index, cell_offset);
	}
}
