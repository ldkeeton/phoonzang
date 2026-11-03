/* Try to raise a skill when a random roll is within the member's level. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int random_below();

try_raise_member_skill(member_index, skill_index, level_factor)
int member_index;
int skill_index;
int level_factor;
{
	/* Only skills below the cap are eligible for a raise. */
	if (party_records[member_index].skills[skill_index] < 100) {
		/* The roll must not exceed the member's scaled level. */
		if (random_below(party_records[member_index].skills[skill_index]) -
		    party_records[member_index].level * level_factor <= 0)
			party_records[member_index].skills[skill_index]++;
	}
}
