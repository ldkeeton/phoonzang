/* Aim actor at the unit of group group_index with the largest HP deficit
   (hp_max - hp), keeping each larger candidate on a two-way roll; returns
   that deficit, 0 when no unit was chosen. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
int random_below();

target_most_wounded_unit(actor, group_index)
struct combatant *actor;
int group_index;
{
	int unit_index, greatest_deficit;

	greatest_deficit = 0;
	for (unit_index = 0; battle_groups[group_index]->unit_count > unit_index;
	    unit_index++) {
		/* A larger deficit replaces the target only on a zero roll. */
		if (battle_groups[group_index]->unit[unit_index].hp_max -
		    battle_groups[group_index]->unit[unit_index].hp > greatest_deficit) {
			if (random_below(2) == 0) {
				actor->target_group = group_index;
				actor->target_unit = unit_index;
				greatest_deficit =
					battle_groups[group_index]->unit[unit_index].hp_max -
					battle_groups[group_index]->unit[unit_index].hp;
			}
		}
	}
	return greatest_deficit;
}
