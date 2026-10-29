/* Send an NPC below half health back to its home location. */

#include "structs/slotstat.h"

extern int random_below();
extern int refresh_slot_state();
extern struct slot_record slot_records[];

retreat_slot_if_wounded(slot_index)
int slot_index;
{
	/* Two times in three, a badly wounded NPC heads home. */
	if (random_below(3) != 0) {
		if (slot_records[slot_index].health <
		    slot_records[slot_index].max_health / 2) {
			slot_records[slot_index].destination =
			    slot_records[slot_index].home_location;
			refresh_slot_state(slot_index);
			return 1;
		}
	}
	return 0;
}
