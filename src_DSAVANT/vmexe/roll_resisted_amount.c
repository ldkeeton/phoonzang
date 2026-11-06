/* Lower an amount by a random part of (resistance - resistance_floor)%. */
#include "structs/member.h"

extern struct member_ext *battle_group_ext[];
extern int random_below();

int roll_resisted_amount(group, amount, resistance_index, resistance_floor)
int group, amount, resistance_index, resistance_floor;
{
	int reduction;

	reduction =
		(long)amount * (battle_group_ext[group]->resistance[resistance_index] -
		resistance_floor) / 100;
	if (reduction < 0)
		reduction = 0;
	if (reduction > amount)
		reduction = amount;
	return amount - random_below(reduction + 1);
}
