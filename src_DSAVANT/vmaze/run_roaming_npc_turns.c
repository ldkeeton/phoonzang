/* Run one turn for every roaming NPC, in random order. */

#include "structs/location.h"
#include "structs/slotstat.h"

extern int random_below();
extern int dispatch_slot_action();
extern int game_state_arg;
extern char slot_pair_processed[];
extern struct location_record location_records[];
extern struct slot_record slot_records[];

run_roaming_npc_turns()
{
	int slot, location, count, done[22];

	aztec_setmem(slot_pair_processed, 22 * 22, 0);
	aztec_setmem(done, sizeof(done), 0);
	/* Slot 21 is the party: put it at the current map's location. */
	for (location = 0; location < 26; location++) {
		if (location_records[location].game_state == game_state_arg)
			slot_records[21].location = slot_records[21].destination =
			    location;
	}
	count = 0;
	do {
		/* Draw slots until one has not moved yet this turn. */
		do
			slot = random_below(22);
		while (done[slot] != 0);
		done[slot] = 1;
		dispatch_slot_action(slot);
		count++;
	} while (count < 22);
}
