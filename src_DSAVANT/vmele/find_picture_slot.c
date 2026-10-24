/* finds the picture slot holding a monster picture number, or a free slot to
   load it into, loading the picture when it is not already in a slot */

extern unsigned char picture_slot_number[], picture_slot_used[];
extern free_picture_slot(), load_monster_picture();

find_picture_slot(picture_number)
int picture_number;
{
	int slot, free_slot;

	free_slot = -1;
	for (slot = 15; slot < 18; slot++) {		/* the 3 monster picture slots */
		if (picture_slot_number[slot] == picture_number) {
			picture_slot_used[slot] = 1;
			return slot;
		}
		if (picture_slot_used[slot] == 0)
			free_slot = slot;
	}
	if (free_slot != -1) {				/* -1: none of the slots free */
		if (picture_slot_number[free_slot] != 255)	/* 0xff: slot empty */
			free_picture_slot(free_slot);
		load_monster_picture(picture_number, free_slot);
	}
	return free_slot;
}
