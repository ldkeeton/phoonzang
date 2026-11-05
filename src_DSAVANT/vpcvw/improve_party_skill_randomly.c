/* Increase a party member's skill by a bounded random amount. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int random_below();
extern int clamp_between();

improve_party_skill_randomly(member_index, skill_index, bonus, random_range)
int member_index;
int skill_index;
int bonus;
int random_range;
{
	int skill_value;

	skill_value = random_below(random_range) + bonus;
	party_records[member_index].skills[skill_index] =
		clamp_between(skill_value +
			party_records[member_index].skills[skill_index], 0, 100);
}
