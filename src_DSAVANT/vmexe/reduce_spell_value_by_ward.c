/* Randomly lower a spell value (dice count, die sides, ...) when the target
   group's ward for the realm passes a roll; never below 1. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int random_below();

int reduce_spell_value_by_ward(group, realm, value, roll_limit)
int group, realm, value, roll_limit;
{
	int ward_points, reduction_count;

	ward_points = battle_groups[group]->ward[realm];
	if (random_below(roll_limit) < ward_points) {
		reduction_count = ((long)ward_points * value) / 100L;
		while (reduction_count > 0) {
			value -= random_below(2);
			reduction_count--;
		}
	}
	if (value < 1)
		value = 1;
	return value;
}
