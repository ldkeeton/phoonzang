/* gives each party member's monster picture one of the monster picture slots,
   clearing the slots and releasing any left unused */

extern unsigned char picture_slot_number[], picture_slot_used[];
extern unsigned char *party_char_ext[], *party_char[];
extern int party_member_count;
extern unsigned char *party_member_ext_1;
extern find_picture_slot(), free_picture_slot(), ds_app_QTIV();

setup_party_pictures()
{
	int member, slot;

	for (slot = 15; slot < 18; slot++)	/* the 3 monster picture slots */
		picture_slot_used[slot] = 0;
	for (member = 1; member <= party_member_count; member++)
		/* 215: member's monster picture number, 415: its slot record */
		party_char[member][415] = find_picture_slot(party_char_ext[member][215]);
	for (slot = 15; slot < 18; slot++)
		if (picture_slot_number[slot] != 255		/* 0xff: slot empty */
		    && picture_slot_used[slot] == 0)
			free_picture_slot(slot);
	if (party_member_ext_1[216] > 0)		/* 216: pending picture count */
		ds_app_QTIV(party_member_ext_1[216]);
}
