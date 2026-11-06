/* unit_or_count >= 0 selects that unit; -n selects a random run of n units. */

#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int random_below();

select_battle_unit_range(group, unit_or_count, selected_unit, selected_count)
int group, unit_or_count;
int *selected_unit, *selected_count;
{
	int unit_count;
	int count;
	int unit_index;

	if (unit_or_count >= 0) {
		*selected_unit = unit_or_count;
		*selected_count = 1;
	} else {
		unit_count = battle_groups[group]->unit_count;
		count = unit_or_count < 0 ? -unit_or_count : unit_or_count;
		if (count > unit_count)
			count = unit_count;
		unit_index = random_below(unit_count - count);
		while (unit_index > 0 &&
		       battle_groups[group]->unit[unit_index].state == 3)
			unit_index--;
		*selected_unit = unit_index;
		*selected_count = count;
	}
}
