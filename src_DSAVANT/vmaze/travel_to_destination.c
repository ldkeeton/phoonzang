/* Set a roaming NPC travelling toward its destination. */

#include "structs/slotstat.h"

extern int plan_slot_path();
extern struct slot_record slot_records[];

travel_to_destination(slot_index)
int slot_index;
{
	slot_records[slot_index].activity = 3;
	/* With no path there, the NPC picks a new goal next turn. */
	if (plan_slot_path(slot_index, slot_records[slot_index].location,
	    slot_records[slot_index].destination) == 0)
		slot_records[slot_index].activity = 0;
}
