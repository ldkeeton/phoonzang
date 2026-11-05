/* Dispatch profession stat requirements, applying the Valkyrie gender rule. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int profession_eligible[];
extern int evaluate_profession_stat_mins();
extern char fighter_stat_requirements[];
extern char mage_stat_requirements[];
extern char priest_stat_requirements[];
extern char thief_stat_requirements[];
extern char ranger_stat_requirements[];
extern char alchemist_stat_requirements[];
extern char bard_stat_requirements[];
extern char psionic_stat_requirements[];
extern char valkyrie_stat_requirements[];
extern char bishop_stat_requirements[];
extern char lord_stat_requirements[];
extern char samurai_stat_requirements[];
extern char monk_stat_requirements[];
extern char ninja_stat_requirements[];

evaluate_character_profession(character, profession, adjust_stats)
int character, profession, adjust_stats;
{
	switch (profession) {
	case 0:
		evaluate_profession_stat_mins(character, profession,
			fighter_stat_requirements, adjust_stats);
		break;
	case 1:
		evaluate_profession_stat_mins(character, profession,
			mage_stat_requirements, adjust_stats);
		break;
	case 2:
		evaluate_profession_stat_mins(character, profession,
			priest_stat_requirements, adjust_stats);
		break;
	case 3:
		evaluate_profession_stat_mins(character, profession,
			thief_stat_requirements, adjust_stats);
		break;
	case 4:
		evaluate_profession_stat_mins(character, profession,
			ranger_stat_requirements, adjust_stats);
		break;
	case 5:
		evaluate_profession_stat_mins(character, profession,
			alchemist_stat_requirements, adjust_stats);
		break;
	case 6:
		evaluate_profession_stat_mins(character, profession,
			bard_stat_requirements, adjust_stats);
		break;
	case 7:
		evaluate_profession_stat_mins(character, profession,
			psionic_stat_requirements, adjust_stats);
		break;
	case 8:
		if (party_records[character].gender == 1)
			evaluate_profession_stat_mins(character, profession,
				valkyrie_stat_requirements, adjust_stats);
		else
			profession_eligible[profession] = 0;
		break;
	case 9:
		evaluate_profession_stat_mins(character, profession,
			bishop_stat_requirements, adjust_stats);
		break;
	case 10:
		evaluate_profession_stat_mins(character, profession,
			lord_stat_requirements, adjust_stats);
		break;
	case 11:
		evaluate_profession_stat_mins(character, profession,
			samurai_stat_requirements, adjust_stats);
		break;
	case 12:
		evaluate_profession_stat_mins(character, profession,
			monk_stat_requirements, adjust_stats);
		break;
	case 13:
		evaluate_profession_stat_mins(character, profession,
			ninja_stat_requirements, adjust_stats);
		break;
	}
}
