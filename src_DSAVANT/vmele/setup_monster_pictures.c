/* gives each monster group's picture one of the monster picture slots,
   clearing the slots and releasing any left unused */

extern unsigned char picture_slot_number[], picture_slot_used[];
extern unsigned char *battle_group_ext[], *battle_groups[];
extern int monster_group_count;
extern unsigned char *battle_group_ext_1;
extern find_picture_slot(), free_picture_slot(), ensure_sound_loaded();

setup_monster_pictures()
{
	int group, slot;

	for (slot = 15; slot < 18; slot++)	/* the 3 monster picture slots */
		picture_slot_used[slot] = 0;
	for (group = 1; group <= monster_group_count; group++)
		/* 215: the group's monster picture number, 415: its picture slot */
		battle_groups[group][415] = find_picture_slot(battle_group_ext[group][215]);
	for (slot = 15; slot < 18; slot++)
		if (picture_slot_number[slot] != 255		/* 0xff: slot empty */
		    && picture_slot_used[slot] == 0)
			free_picture_slot(slot);
	if (battle_group_ext_1[216] > 0)		/* 216: pending picture count */
		ensure_sound_loaded(battle_group_ext_1[216]);
}
