/* Add an event to a roaming NPC's five-entry log unless it is already
   there. */

#include "structs/slotevt.h"
#include "structs/slotstat.h"

extern struct slot_event slot_event_logs[][5];
extern struct slot_record slot_records[];

log_slot_event(slot_index, subject, kind, detail)
int slot_index, subject, kind, detail;
{
	int i;

	for (i = 0; i < 5; i++) {
		if (slot_event_logs[slot_index][i].subject == subject
		    && slot_event_logs[slot_index][i].kind == kind
		    && slot_event_logs[slot_index][i].detail == detail)
			return;
	}
	/* Overwrite the oldest event. */
	slot_event_logs[slot_index][slot_records[slot_index].event_ring_next].subject
	    = subject;
	slot_event_logs[slot_index][slot_records[slot_index].event_ring_next].kind
	    = kind;
	slot_event_logs[slot_index][slot_records[slot_index].event_ring_next].detail
	    = detail;
	slot_records[slot_index].event_ring_next =
	    (slot_records[slot_index].event_ring_next + 1) % 5;
}
