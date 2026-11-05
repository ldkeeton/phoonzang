/* Spend the level-adjusted share of a selected slot value. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int skill_group_points[];

/* Spend the level-adjusted share of a selected slot value. */
spend_level_scaled_skill_points(member_index, slot_index, divisor)
int member_index, slot_index, divisor;
{
	int amount;

	amount = skill_group_points[slot_index] / divisor
		- (party_records[member_index].level - 1) / 2;
	if (amount < 0)
		amount = 0;
	if (skill_group_points[slot_index] < amount)
		amount = skill_group_points[slot_index];
	skill_group_points[slot_index] -= amount;
}
