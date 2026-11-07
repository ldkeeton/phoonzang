/* Clear the battle cell map and all seven battle group records before a
   melee. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int cell_slot_ref[][3];
extern int monster_group_count;
extern int party_screen_done, party_screen_animation_state;
extern int setmem();

reset_battle_groups()
{
	int group;
	struct member_rec unused_record; /* reserves the original frame space */

	setmem(cell_slot_ref, 18, 0); /* clear nine two-byte cells */
	/* Clear all seven battle group records. */
	for (group = 0; group < 7; group++)
		setmem(battle_groups[group], sizeof(struct member_rec), 0);
	/* Reset the unit count in each of the seven groups. */
	for (group = 0; group < 7; group++)
		battle_groups[group]->unit_count = 0;
	monster_group_count = 0;
	party_screen_done = 0;
	party_screen_animation_state = -2;
}
