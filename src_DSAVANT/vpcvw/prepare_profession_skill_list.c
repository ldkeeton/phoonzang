/* Prepare one party member’s profession skill list for display. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int skill_group_ranges[4][2];
extern int skill_availability_flags[];
extern int both_high_stats_flag;
extern char list_entry_text[][20];
extern char skill_points_label[];
extern int load_message_string();
extern int set_character_skill_flags();
extern char fighter_weaponry_skills[], fighter_physical_skills[],
	fighter_personal_skills[], fighter_academia_skills[];
extern char mage_weaponry_skills[], mage_physical_skills[],
	mage_personal_skills[], mage_academia_skills[];
extern char priest_weaponry_skills[], priest_physical_skills[],
	priest_personal_skills[], priest_academia_skills[];
extern char thief_weaponry_skills[], thief_physical_skills[],
	thief_personal_skills[], thief_academia_skills[];
extern char ranger_weaponry_skills[], ranger_physical_skills[],
	ranger_personal_skills[], ranger_academia_skills[];
extern char alchemist_weaponry_skills[], alchemist_physical_skills[],
	alchemist_personal_skills[], alchemist_academia_skills[];
extern char bard_weaponry_skills[], bard_physical_skills[],
	bard_personal_skills[], bard_academia_skills[];
extern char psionic_weaponry_skills[], psionic_physical_skills[],
	psionic_personal_skills[], psionic_academia_skills[];
extern char valkyrie_weaponry_skills[], valkyrie_physical_skills[],
	valkyrie_personal_skills[], valkyrie_academia_skills[];
extern char bishop_weaponry_skills[], bishop_physical_skills[],
	bishop_personal_skills[], bishop_academia_skills[];
extern char lord_weaponry_skills[], lord_physical_skills[],
	lord_personal_skills[], lord_academia_skills[];
extern char samurai_weaponry_skills[], samurai_physical_skills[],
	samurai_personal_skills[], samurai_academia_skills[];
extern char monk_weaponry_skills[], monk_physical_skills[],
	monk_personal_skills[], monk_academia_skills[];
extern char ninja_weaponry_skills[], ninja_physical_skills[],
	ninja_personal_skills[], ninja_academia_skills[];

/* Select the profession flags, then return the available skills in one
   group. */
int
prepare_profession_skill_list(member_index, group_index, selected_skills)
int member_index;
int group_index;
int *selected_skills;
{
	int skill_index;
	int known_skill_count;

	switch (party_records[member_index].profession) {
	case 0: set_character_skill_flags(member_index, fighter_weaponry_skills,
		fighter_physical_skills, fighter_personal_skills,
		fighter_academia_skills); break;
	case 1: set_character_skill_flags(member_index, mage_weaponry_skills,
		mage_physical_skills, mage_personal_skills, mage_academia_skills); break;
	case 2: set_character_skill_flags(member_index, priest_weaponry_skills,
		priest_physical_skills, priest_personal_skills,
		priest_academia_skills); break;
	case 3: set_character_skill_flags(member_index, thief_weaponry_skills,
		thief_physical_skills, thief_personal_skills, thief_academia_skills); break;
	case 4: set_character_skill_flags(member_index, ranger_weaponry_skills,
		ranger_physical_skills, ranger_personal_skills,
		ranger_academia_skills); break;
	case 5: set_character_skill_flags(member_index, alchemist_weaponry_skills,
		alchemist_physical_skills, alchemist_personal_skills,
		alchemist_academia_skills); break;
	case 6: set_character_skill_flags(member_index, bard_weaponry_skills,
		bard_physical_skills, bard_personal_skills, bard_academia_skills); break;
	case 7: set_character_skill_flags(member_index, psionic_weaponry_skills,
		psionic_physical_skills, psionic_personal_skills,
		psionic_academia_skills); break;
	case 8: set_character_skill_flags(member_index, valkyrie_weaponry_skills,
		valkyrie_physical_skills, valkyrie_personal_skills,
		valkyrie_academia_skills); break;
	case 9: set_character_skill_flags(member_index, bishop_weaponry_skills,
		bishop_physical_skills, bishop_personal_skills,
		bishop_academia_skills); break;
	case 10: set_character_skill_flags(member_index, lord_weaponry_skills,
		lord_physical_skills, lord_personal_skills, lord_academia_skills); break;
	case 11: set_character_skill_flags(member_index, samurai_weaponry_skills,
		samurai_physical_skills, samurai_personal_skills,
		samurai_academia_skills); break;
	case 12: set_character_skill_flags(member_index, monk_weaponry_skills,
		monk_physical_skills, monk_personal_skills, monk_academia_skills); break;
	case 13: set_character_skill_flags(member_index, ninja_weaponry_skills,
		ninja_physical_skills, ninja_personal_skills, ninja_academia_skills); break;
	}

	if (party_records[member_index].stat[1] > 13 &&
	    party_records[member_index].stat[6] > 13)
		both_high_stats_flag = 1;

	known_skill_count = 0;
	for (skill_index = skill_group_ranges[group_index][0];
	    skill_group_ranges[group_index][1] >= skill_index; ++skill_index) {
		if (skill_availability_flags[skill_index] == 1) {
			load_message_string(MSG_WAND_DAGGER + skill_index,
				list_entry_text[known_skill_count]);
			selected_skills[known_skill_count] = skill_index;
			++known_skill_count;
		}
	}
	load_message_string(MSG_SKILL_POINTS, skill_points_label);
	return known_skill_count;
}
