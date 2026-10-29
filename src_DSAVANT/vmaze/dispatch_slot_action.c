/* Run one turn of a roaming NPC's current activity. */

#include "structs/slotstat.h"

extern struct slot_record slot_records[];
extern int choose_slot_goal();
extern int heal_slot_health();
extern int linger_at_location();
extern int advance_slot_along_path();
extern int search_quest_map_site();
extern int wait_at_location();

dispatch_slot_action(slot_index)
int slot_index;
{
	/* Dead NPCs do nothing. */
	if (slot_records[slot_index].health <= 0)
		return;

	/* Run the handler for the NPC's current activity. */
	switch (slot_records[slot_index].activity) {
	case 0:		/* deciding */
		choose_slot_goal(slot_index);
		break;
	case 1:		/* resting: fast healing, never killed */
		heal_slot_health(slot_index, 5, 5);
		break;
	case 2:		/* lingering at the destination */
		linger_at_location(slot_index);
		break;
	case 3:		/* travelling */
		advance_slot_along_path(slot_index, -1);
		break;
	case 4:		/* searching a quest map site */
		search_quest_map_site(slot_index);
		break;
	case 5:		/* chasing target */
		advance_slot_along_path(slot_index, slot_records[slot_index].target);
		break;
	case 6:		/* waiting */
		wait_at_location(slot_index);
		break;
	case 7:		/* fleeing at double speed */
		advance_slot_along_path(slot_index, -1);
		/* The first step may change the activity; step again only if not. */
		if (slot_records[slot_index].activity == 7)
			advance_slot_along_path(slot_index, -1);
		break;
	}
}
