/* Prepare the selected skills and known spell names for a party member. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int skill_group_ranges[][2];
extern int skill_availability_flags[];
extern char known_spell_names[][20];
extern char slot_prompt_text[];
extern int load_message_string();
extern int set_party_skill_flags();

/* Set when both tested stats exceed 13: a common in each overlay's
   globals, not a static (ln puts a module's statics before the commons). */
extern int both_high_stats_flag;

/* Each profession's Weaponry, Physical, Personal and Academia skill
   strings ("1" = may learn), string literals in the original; named
   because an overlay C cannot carry its own DS data yet. */
extern char
	fighter_weaponry_skills[], fighter_physical_skills[],
	fighter_personal_skills[], fighter_academia_skills[],
	mage_weaponry_skills[], mage_physical_skills[],
	mage_personal_skills[], mage_academia_skills[],
	priest_weaponry_skills[], priest_physical_skills[],
	priest_personal_skills[], priest_academia_skills[],
	thief_weaponry_skills[], thief_physical_skills[],
	thief_personal_skills[], thief_academia_skills[],
	ranger_weaponry_skills[], ranger_physical_skills[],
	ranger_personal_skills[], ranger_academia_skills[],
	alchemist_weaponry_skills[], alchemist_physical_skills[],
	alchemist_personal_skills[], alchemist_academia_skills[],
	bard_weaponry_skills[], bard_physical_skills[],
	bard_personal_skills[], bard_academia_skills[],
	psionic_weaponry_skills[], psionic_physical_skills[],
	psionic_personal_skills[], psionic_academia_skills[],
	valkyrie_weaponry_skills[], valkyrie_physical_skills[],
	valkyrie_personal_skills[], valkyrie_academia_skills[],
	bishop_weaponry_skills[], bishop_physical_skills[],
	bishop_personal_skills[], bishop_academia_skills[],
	lord_weaponry_skills[], lord_physical_skills[],
	lord_personal_skills[], lord_academia_skills[],
	samurai_weaponry_skills[], samurai_physical_skills[],
	samurai_personal_skills[], samurai_academia_skills[],
	monk_weaponry_skills[], monk_physical_skills[],
	monk_personal_skills[], monk_academia_skills[],
	ninja_weaponry_skills[], ninja_physical_skills[],
	ninja_personal_skills[], ninja_academia_skills[];

/* Select the profession's four skill groups, collect available skills, and
   load their names. */
prepare_skill_list(member_index, realm_index, spell_ids)
int member_index, realm_index;
int spell_ids[];
{
	int spell_index;
	int known_spell_count;

	/* Each profession lists, per skill group (Weaponry 0-9, Physical
	   10-17, Personal 18-23, Academia 24-33), which skills it may learn. */
	switch (party_records[member_index].profession) {
	case 0:	/* "1111111110" "11100000" "000000" "1111000000" */
		set_party_skill_flags(member_index, fighter_weaponry_skills,
			fighter_physical_skills, fighter_personal_skills,
			fighter_academia_skills);
		break;
	case 1:	/* "1000111100" "11101000" "000000" "1111000010" */
		set_party_skill_flags(member_index, mage_weaponry_skills,
			mage_physical_skills, mage_personal_skills,
			mage_academia_skills);
		break;
	case 2:	/* "0001101010" "11101000" "000000" "1111101000" */
		set_party_skill_flags(member_index, priest_weaponry_skills,
			priest_physical_skills, priest_personal_skills,
			priest_academia_skills);
		break;
	case 3:	/* "1111111110" "11101111" "000000" "1111000000" */
		set_party_skill_flags(member_index, thief_weaponry_skills,
			thief_physical_skills, thief_personal_skills,
			thief_academia_skills);
		break;
	case 4:	/* "1111111110" "11100111" "000000" "1111010000" */
		set_party_skill_flags(member_index, ranger_weaponry_skills,
			ranger_physical_skills, ranger_personal_skills,
			ranger_academia_skills);
		break;
	case 5:	/* "1001110000" "11100000" "000000" "1111010000" */
		set_party_skill_flags(member_index, alchemist_weaponry_skills,
			alchemist_physical_skills, alchemist_personal_skills,
			alchemist_academia_skills);
		break;
	case 6:	/* "1111111110" "11111111" "000000" "1111000010" */
		set_party_skill_flags(member_index, bard_weaponry_skills,
			bard_physical_skills, bard_personal_skills,
			bard_academia_skills);
		break;
	case 7:	/* "1001111000" "11101000" "000000" "1111000100" */
		set_party_skill_flags(member_index, psionic_weaponry_skills,
			psionic_physical_skills, psionic_personal_skills,
			psionic_academia_skills);
		break;
	case 8:	/* "1111111110" "11101000" "000000" "1111001000" */
		set_party_skill_flags(member_index, valkyrie_weaponry_skills,
			valkyrie_physical_skills, valkyrie_personal_skills,
			valkyrie_academia_skills);
		break;
	case 9:	/* "0001101010" "11101000" "000000" "1111101010" */
		set_party_skill_flags(member_index, bishop_weaponry_skills,
			bishop_physical_skills, bishop_personal_skills,
			bishop_academia_skills);
		break;
	case 10:	/* "1111111110" "11101000" "000000" "1111101000" */
		set_party_skill_flags(member_index, lord_weaponry_skills,
			lord_physical_skills, lord_personal_skills,
			lord_academia_skills);
		break;
	case 11:	/* "1111111110" "11101000" "000000" "1111000011" */
		set_party_skill_flags(member_index, samurai_weaponry_skills,
			samurai_physical_skills, samurai_personal_skills,
			samurai_academia_skills);
		break;
	case 12:	/* "1001111101" "11101001" "000000" "1111000101" */
		set_party_skill_flags(member_index, monk_weaponry_skills,
			monk_physical_skills, monk_personal_skills,
			monk_academia_skills);
		break;
	case 13:	/* "1111111111" "11100111" "000000" "1111010001" */
		set_party_skill_flags(member_index, ninja_weaponry_skills,
			ninja_physical_skills, ninja_personal_skills,
			ninja_academia_skills);
		break;
	}

	/* Both tested attributes above 13 set the shared flag. */
	if (party_records[member_index].stat[1] > 13
		&& party_records[member_index].stat[6] > 13)
		both_high_stats_flag = 1;

	known_spell_count = 0;
	/* List the available skills in the group's inclusive range. */
	for (spell_index = skill_group_ranges[realm_index][0];
	    skill_group_ranges[realm_index][1] >= spell_index; spell_index++) {
		if (skill_availability_flags[spell_index] == 1) {
			load_message_string(spell_index + MSG_WAND_DAGGER,
				known_spell_names[known_spell_count]);
			spell_ids[known_spell_count] = spell_index;
			known_spell_count++;
		}
	}
	load_message_string(MSG_SKILL_POINTS, slot_prompt_text);
	return known_spell_count;
}
