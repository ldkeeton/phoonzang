/* nonzero when a combatant cannot be reached: fled or blinked out always,
   hidden (phase 1) two rolls in three */

#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int random_below();

int combatant_evades_targeting(group, unit)
int group, unit;
{
	return battle_groups[group]->unit[unit].phase != 0
		&& (battle_groups[group]->unit[unit].phase != 1
			|| random_below(3) != 0);
}
