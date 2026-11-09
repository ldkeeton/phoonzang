/* gives each monster group's picture one of the monster picture slots,
   clearing the slots and releasing any left unused */

#include "structs/member.h"

extern unsigned char picture_slot_number[], picture_slot_used[];
extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int monster_group_count;
extern find_picture_slot(), free_picture_slot(), ensure_sound_loaded();

setup_monster_pictures()
{
	int group, slot;

	for (slot = 15; slot < 18; slot++)	/* the 3 monster picture slots */
		picture_slot_used[slot] = 0;
	for (group = 1; group <= monster_group_count; group++)
		/* kind: the group's monster picture number; slot: its picture slot */
		battle_groups[group]->slot =
			find_picture_slot(battle_group_ext[group]->kind);
	for (slot = 15; slot < 18; slot++)
		if (picture_slot_number[slot] != 255		/* 0xff: slot empty */
		    && picture_slot_used[slot] == 0)
			free_picture_slot(slot);
	if (battle_group_ext[1]->sound_id > 0)		/* +0xd8: encounter sound */
		ensure_sound_loaded(battle_group_ext[1]->sound_id);
}
