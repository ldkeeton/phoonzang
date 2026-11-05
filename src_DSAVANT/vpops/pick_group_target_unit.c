/* Select and mark a unit in a group, following the supplied target order. */
#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern char unit_targeted[][9];
/* unit_targeted covers monster groups 1..5; index it by the 1-based group. */
#define group_unit_targeted ((char (*)[9])(unit_targeted[0] - 9))
extern int column_orders[6][3];
extern int cell_slot_ref[3][3];

pick_group_target_unit(order_index, group)
int order_index, group;	/* order_index: the picking party member */
{
	int row, column, unit, cell_group, skipped_count, cells_unset;
	/* cells_unset is reused as the grid-scan pass counter. */

	cells_unset = 1;
	unit = 0;
	/* Check whether any unit already has a cell. */
	for (; unit < battle_groups[group]->unit_count; unit++) {
		if (battle_groups[group]->unit[unit].cell != -1)
			cells_unset = 0;
	}
	if (cells_unset == 1) {
		skipped_count = 0;
		/* Repeat unit passes until the requested unmarked unit is found. */
		for (;;) {
			for (unit = 0; unit < battle_groups[group]->unit_count; unit++) {
				if (group_unit_targeted[group][unit] == 0 ||
				    skipped_count == order_index) {
					group_unit_targeted[group][unit] = 1;
					return unit;
				}
				skipped_count++;
			}
		}
	}
	skipped_count = 0;
	cells_unset = 0;
	/* Retry the ordered grid scan up to ten times. */
	while (cells_unset < 10) {
		cells_unset++;
		/* Visit each row and its columns in the supplied order. */
		for (row = 0; row < 3; row++) {
			for (column = 0; column < 3; column++) {
				/* A cell stores group * 10 + unit. */
				cell_group = cell_slot_ref[row][column_orders[order_index][column]] / 10;
				unit = cell_slot_ref[row][column_orders[order_index][column]] % 10;
				if (cell_group == group) {
					if (group_unit_targeted[group][unit] == 0 ||
					    skipped_count == order_index) {
						group_unit_targeted[group][unit] = 1;
						return unit;
					}
					skipped_count++;
				}
			}
		}
	}
	return 0;
}
