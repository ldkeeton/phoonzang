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

/* This module's own bss: set when both tested stats exceed 13. */
static int both_high_stats_flag;

/* Each profession's four skill-group strings ("1" = may learn), string
   literals in the original; named because an overlay C cannot carry its
   own DS data yet. */
extern char
	profession_0_skill_group_0[], profession_0_skill_group_1[],
	profession_0_skill_group_2[], profession_0_skill_group_3[],
	profession_1_skill_group_0[], profession_1_skill_group_1[],
	profession_1_skill_group_2[], profession_1_skill_group_3[],
	profession_2_skill_group_0[], profession_2_skill_group_1[],
	profession_2_skill_group_2[], profession_2_skill_group_3[],
	profession_3_skill_group_0[], profession_3_skill_group_1[],
	profession_3_skill_group_2[], profession_3_skill_group_3[],
	profession_4_skill_group_0[], profession_4_skill_group_1[],
	profession_4_skill_group_2[], profession_4_skill_group_3[],
	profession_5_skill_group_0[], profession_5_skill_group_1[],
	profession_5_skill_group_2[], profession_5_skill_group_3[],
	profession_6_skill_group_0[], profession_6_skill_group_1[],
	profession_6_skill_group_2[], profession_6_skill_group_3[],
	profession_7_skill_group_0[], profession_7_skill_group_1[],
	profession_7_skill_group_2[], profession_7_skill_group_3[],
	profession_8_skill_group_0[], profession_8_skill_group_1[],
	profession_8_skill_group_2[], profession_8_skill_group_3[],
	profession_9_skill_group_0[], profession_9_skill_group_1[],
	profession_9_skill_group_2[], profession_9_skill_group_3[],
	profession_10_skill_group_0[], profession_10_skill_group_1[],
	profession_10_skill_group_2[], profession_10_skill_group_3[],
	profession_11_skill_group_0[], profession_11_skill_group_1[],
	profession_11_skill_group_2[], profession_11_skill_group_3[],
	profession_12_skill_group_0[], profession_12_skill_group_1[],
	profession_12_skill_group_2[], profession_12_skill_group_3[],
	profession_13_skill_group_0[], profession_13_skill_group_1[],
	profession_13_skill_group_2[], profession_13_skill_group_3[];

/* Select the profession's four skill groups, collect available skills, and
   load their names. */
prepare_skill_list(member_index, realm_index, spell_ids)
int member_index, realm_index;
int spell_ids[];
{
	int spell_index;
	int known_spell_count;

	/* Each profession lists, per skill group (0-9, 10-17, 18-23, 24-33),
	   which skills it may learn. */
	switch (party_records[member_index].profession) {
	case 0:	/* "1111111110" "11100000" "000000" "1111000000" */
		set_party_skill_flags(member_index, profession_0_skill_group_0,
			profession_0_skill_group_1, profession_0_skill_group_2,
			profession_0_skill_group_3);
		break;
	case 1:	/* "1000111100" "11101000" "000000" "1111000010" */
		set_party_skill_flags(member_index, profession_1_skill_group_0,
			profession_1_skill_group_1, profession_1_skill_group_2,
			profession_1_skill_group_3);
		break;
	case 2:	/* "0001101010" "11101000" "000000" "1111101000" */
		set_party_skill_flags(member_index, profession_2_skill_group_0,
			profession_2_skill_group_1, profession_2_skill_group_2,
			profession_2_skill_group_3);
		break;
	case 3:	/* "1111111110" "11101111" "000000" "1111000000" */
		set_party_skill_flags(member_index, profession_3_skill_group_0,
			profession_3_skill_group_1, profession_3_skill_group_2,
			profession_3_skill_group_3);
		break;
	case 4:	/* "1111111110" "11100111" "000000" "1111010000" */
		set_party_skill_flags(member_index, profession_4_skill_group_0,
			profession_4_skill_group_1, profession_4_skill_group_2,
			profession_4_skill_group_3);
		break;
	case 5:	/* "1001110000" "11100000" "000000" "1111010000" */
		set_party_skill_flags(member_index, profession_5_skill_group_0,
			profession_5_skill_group_1, profession_5_skill_group_2,
			profession_5_skill_group_3);
		break;
	case 6:	/* "1111111110" "11111111" "000000" "1111000010" */
		set_party_skill_flags(member_index, profession_6_skill_group_0,
			profession_6_skill_group_1, profession_6_skill_group_2,
			profession_6_skill_group_3);
		break;
	case 7:	/* "1001111000" "11101000" "000000" "1111000100" */
		set_party_skill_flags(member_index, profession_7_skill_group_0,
			profession_7_skill_group_1, profession_7_skill_group_2,
			profession_7_skill_group_3);
		break;
	case 8:	/* "1111111110" "11101000" "000000" "1111001000" */
		set_party_skill_flags(member_index, profession_8_skill_group_0,
			profession_8_skill_group_1, profession_8_skill_group_2,
			profession_8_skill_group_3);
		break;
	case 9:	/* "0001101010" "11101000" "000000" "1111101010" */
		set_party_skill_flags(member_index, profession_9_skill_group_0,
			profession_9_skill_group_1, profession_9_skill_group_2,
			profession_9_skill_group_3);
		break;
	case 10:	/* "1111111110" "11101000" "000000" "1111101000" */
		set_party_skill_flags(member_index, profession_10_skill_group_0,
			profession_10_skill_group_1, profession_10_skill_group_2,
			profession_10_skill_group_3);
		break;
	case 11:	/* "1111111110" "11101000" "000000" "1111000011" */
		set_party_skill_flags(member_index, profession_11_skill_group_0,
			profession_11_skill_group_1, profession_11_skill_group_2,
			profession_11_skill_group_3);
		break;
	case 12:	/* "1001111101" "11101001" "000000" "1111000101" */
		set_party_skill_flags(member_index, profession_12_skill_group_0,
			profession_12_skill_group_1, profession_12_skill_group_2,
			profession_12_skill_group_3);
		break;
	case 13:	/* "1111111111" "11100111" "000000" "1111010001" */
		set_party_skill_flags(member_index, profession_13_skill_group_0,
			profession_13_skill_group_1, profession_13_skill_group_2,
			profession_13_skill_group_3);
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
