/* Adjust one faction's attitude toward another, bounded to -100..100. */
#include "structs/slotstat.h"

extern struct slot_record slot_records[];
extern char faction_attitudes[12][12];
extern int clamp_between();

adjust_faction_attitude(source_slot, target_slot, change)
int source_slot, target_slot, change;
{
	/* Keep the attitude within its stored range. */
	faction_attitudes[slot_records[source_slot].faction]
		[slot_records[target_slot].faction] = clamp_between(
			faction_attitudes[slot_records[source_slot].faction]
				[slot_records[target_slot].faction] + change,
			-100, 100);
}
