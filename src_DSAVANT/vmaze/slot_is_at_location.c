/* Check whether a roaming NPC is at the given location. */

#include "structs/slotstat.h"

extern struct slot_record slot_records[];

slot_is_at_location(slot_index, location)
int slot_index;
int location;
{
	/* Compare the record's unsigned location byte with the value. */
	return slot_records[slot_index].location == location ? 1 : 0;
}
