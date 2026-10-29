/* One time in four, learn where the destination's rumored quest map is. */

#include "structs/location.h"
#include "structs/slotstat.h"

extern int random_below();
extern struct location_record location_records[];
extern struct slot_record slot_records[];

learn_location_rumor(slot_index)
int slot_index;
{
	int location;

	location = slot_records[slot_index].destination;
	if (location_records[location].rumored_map != -1 && random_below(4) == 0)
		set_bitmap_bit(slot_records[slot_index].known_maps,
		    location_records[location].rumored_map, 1);
}
