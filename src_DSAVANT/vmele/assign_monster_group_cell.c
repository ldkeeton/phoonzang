/* reserves a battle cell for the next available unit in a monster group */

#include "structs/member.h"

extern int monster_group_count;
extern struct member_rec *battle_groups[];
extern int cell_action_marks[3][3];
extern int cell_slot_ref[3][3];
extern fill_action_slot_table();

assign_monster_group_cell(group, row, col)
int group, row, col;
{
	int unit;

	if (group > monster_group_count)
		return -1;
	/* Find the first living unit that does not already hold a cell. */
	for (unit = 0; unit < battle_groups[group]->unit_count; unit++) {
		if (battle_groups[group]->unit[unit].cell == -1) {
			cell_action_marks[row][col] = 1;
			cell_slot_ref[row][col] = group * 10 + unit;
			battle_groups[group]->unit[unit].cell = row * 10 + col;
			fill_action_slot_table(group, row, col, -1);
			return 0;
		}
	}
	return -1;
}
