/* Spend a slot value to raise one party member skill. */
#include "structs/pcrec.h"

extern int skill_group_points[];
extern struct pc_rec party_records[];

/* Limit the gain by level, the skill cap, and remaining slot value. */
raise_member_skill_from_pool(member_index, slot_index, divisor, skill_index)
int member_index, slot_index, divisor, skill_index;
{
	int gain;

	gain = skill_group_points[slot_index] / divisor -
		(party_records[member_index].level - 1) / 2;
	if (party_records[member_index].skills[skill_index] >
		party_records[member_index].level * 8)
		gain = 0;
	if (party_records[member_index].skills[skill_index] + gain > 100)
		gain = 0;
	if (gain < 0)
		gain = 0;
	if (skill_group_points[slot_index] < gain)
		gain = skill_group_points[slot_index];
	skill_group_points[slot_index] -= gain;
	party_records[member_index].skills[skill_index] += (unsigned char)gain;
}
