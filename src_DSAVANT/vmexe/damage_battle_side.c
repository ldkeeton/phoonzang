/* Deal resisted damage to every unit on the side group belongs to: all
   monster groups, or the party and its ally group. */
#include "structs/member.h"

extern int monster_group_count;
extern struct member_rec *ally_battle_group;

extern void damage_unit_range();

void damage_battle_side(group, dice_count, die_sides, repeat_count,
	resistance_index, resistance_floor)
int group;
int dice_count;
int die_sides;
int repeat_count;
int resistance_index;
int resistance_floor;
{
	int monster_group;

	if (group > 0 && group < 6) {
		for (monster_group = 1; monster_group <= monster_group_count;
			monster_group++)
			damage_unit_range(monster_group, -10, dice_count, die_sides, repeat_count,
				resistance_index, resistance_floor);
	} else {
		damage_unit_range(0, -10, dice_count, die_sides, repeat_count,
			resistance_index,
			resistance_floor);
		if (ally_battle_group->unit_count > 0)
			damage_unit_range(6, -10, dice_count, die_sides, repeat_count,
				resistance_index,
				resistance_floor);
	}
}
