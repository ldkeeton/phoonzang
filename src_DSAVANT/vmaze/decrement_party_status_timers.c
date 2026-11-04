/* Decrease each party status timer and clear expired slot data. */
#include "structs/loadrec.h"

extern struct status_pair party_status_timer[];

decrement_party_status_timers(elapsed_ticks)
int elapsed_ticks;
{
	int slot;

	/* Process all six party status slots. */
	for (slot = 0; slot < 6; slot++) {
		party_status_timer[slot].timer -= elapsed_ticks;
		/* Expired timers also clear the slot's saved offset. */
		if (party_status_timer[slot].timer <= 0) {
			party_status_timer[slot].timer = 0;
			party_status_timer[slot].offset = 0;
		}
	}
}
