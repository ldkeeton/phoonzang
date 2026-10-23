extern char *party_char[];
extern int random_below();

/* nonzero when party member's item slot is usable; a slot flagged 1 fails
   one roll in three, an empty slot is never usable */
int item_slot_usable(member, item)
int member, item;
{
	return party_char[member][item * 0x2c + 0x2b] != 0	/* 0x2c-byte item records */
		&& (party_char[member][item * 0x2c + 0x2b] != 1
			|| random_below(3) != 0);
}
