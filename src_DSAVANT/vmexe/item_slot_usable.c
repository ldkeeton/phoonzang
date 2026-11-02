/* nonzero when party member's item slot is usable; a slot flagged 1 fails
   one roll in three, an empty slot is never usable */

extern char *battle_groups[];
extern int random_below();

int item_slot_usable(member, item)
int member, item;
{
	return battle_groups[member][item * 44 + 43] != 0	/* +0x2b: combatant phase */
		&& (battle_groups[member][item * 44 + 43] != 1
			|| random_below(3) != 0);
}
