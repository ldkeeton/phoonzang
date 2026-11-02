/* Build the active skill flags from four skill group strings and party
   data. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int skill_group_ranges[4][2];
extern int skill_availability_flags[];

set_party_skill_flags(member_index, skill_group_0, skill_group_1,
		  skill_group_2, skill_group_3)
int member_index;
char *skill_group_0;
char *skill_group_1;
char *skill_group_2;
char *skill_group_3;
{
	int skill_index;
	int skill_group_start;

	skill_group_start = skill_group_ranges[0][0];
	skill_index = 0;
	/* The first group has ten entries. */
	do {
		/* A selected '1' or a nonzero party skill activates this index. */
		skill_availability_flags[skill_group_start + skill_index] =
			(skill_group_0[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;
	} while (++skill_index < 10);

	skill_group_start = skill_group_ranges[1][0];
	skill_index = 0;
	/* The second group has eight entries. */
	do {
		/* A selected '1' or a nonzero party skill activates this index. */
		skill_availability_flags[skill_group_start + skill_index] =
			(skill_group_1[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;
	} while (++skill_index < 8);

	skill_group_start = skill_group_ranges[2][0];
	skill_index = 0;
	/* The third group has six entries. */
	do {
		/* A selected '1' or a nonzero party skill activates this index. */
		skill_availability_flags[skill_group_start + skill_index] =
			(skill_group_2[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;
	} while (++skill_index < 6);

	skill_group_start = skill_group_ranges[3][0];
	skill_index = 0;
	/* The fourth group has ten entries. */
	do {
		/* A selected '1' or a nonzero party skill activates this index. */
		skill_availability_flags[skill_group_start + skill_index] =
			(skill_group_3[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;
	} while (++skill_index < 10);
}
