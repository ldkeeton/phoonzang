/* Pick the group's unit in the nearest cell for the acting unit's column
   order, else its first living unit, else fallback_unit. */
#include "structs/member.h"

extern int acting_unit;
extern int column_orders[6][3];
extern int cell_slot_ref[3][3];
extern struct member_rec *battle_groups[];

int select_target_group_unit(group, fallback_unit)
int group;
int fallback_unit;
{
	int row;
	int column;
	int unit_index;
	int cell_group;

	for (row = 0; row < 3; row++) {
		for (column = 0; column < 3; column++) {
			cell_group = cell_slot_ref[row]
				[column_orders[acting_unit % 6][column]] / 10;
			unit_index = cell_slot_ref[row]
				[column_orders[acting_unit % 6][column]] % 10;
			if (cell_group == group)
				return unit_index;
		}
	}
	for (unit_index = 0; unit_index < battle_groups[group]->unit_count;
		unit_index++) {
		if (battle_groups[group]->unit[unit_index].state < 3)
			return unit_index;
	}
	return fallback_unit;
}
