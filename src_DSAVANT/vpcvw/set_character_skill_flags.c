/* Rebuild the available skill flags from the selected group strings and the
   character's existing skill values. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int skill_group_ranges[4][2];
extern int skill_availability_flags[];
extern int aztec_strlen();

set_character_skill_flags(member_index, weapon_skills, physical_skills,
			 personal_skills, academic_skills)
int member_index;
char *weapon_skills;
char *physical_skills;
char *personal_skills;
char *academic_skills;
{
	int skill_index;
	int skill_group_start;

	skill_group_start = skill_group_ranges[0][0];
	for (skill_index = 0; aztec_strlen(weapon_skills) > skill_index;
		 skill_index++)
		skill_availability_flags[skill_group_start + skill_index] =
			(weapon_skills[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;

	skill_group_start = skill_group_ranges[1][0];
	for (skill_index = 0; aztec_strlen(physical_skills) > skill_index;
		 skill_index++)
		skill_availability_flags[skill_group_start + skill_index] =
			(physical_skills[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;

	skill_group_start = skill_group_ranges[2][0];
	for (skill_index = 0; aztec_strlen(personal_skills) > skill_index;
		 skill_index++)
		skill_availability_flags[skill_group_start + skill_index] =
			(personal_skills[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;

	skill_group_start = skill_group_ranges[3][0];
	for (skill_index = 0; aztec_strlen(academic_skills) > skill_index;
		 skill_index++)
		skill_availability_flags[skill_group_start + skill_index] =
			(academic_skills[skill_index] == '1' ||
			 party_records[member_index].skills[skill_index + skill_group_start] > 0)
			? 1 : 0;
}
