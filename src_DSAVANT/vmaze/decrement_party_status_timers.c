/* Decrease each party status timer and clear expired slot data. */
#include "structs/loadrec.h"

extern struct status_pair party_effects[];

decrement_party_status_timers(elapsed_ticks)
int elapsed_ticks;
{
	int slot;

	/* Process all six party status slots. */
	for (slot = 0; slot < 6; slot++) {
		party_effects[slot].timer -= elapsed_ticks;
		/* An expired timer also clears the slot's y offset. */
		if (party_effects[slot].timer <= 0) {
			party_effects[slot].timer = 0;
			party_effects[slot].strength = 0;
		}
	}
}
