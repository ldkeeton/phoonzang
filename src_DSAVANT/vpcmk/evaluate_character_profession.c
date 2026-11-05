/* Dispatch profession stat requirements, applying the Valkyrie
   gender restriction. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int profession_eligible[];
extern int check_profession_stat_budget();
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

/* Check one profession, optionally spending points to meet its stat
   requirements. */
evaluate_character_profession(character, profession, allocate_points)
int character, profession, allocate_points;
{
	switch (profession) { /* Fourteen profession requirement sets. */
	case 0:
		check_profession_stat_budget(character, profession,
			fighter_stat_requirements, allocate_points);
		break;
	case 1:
		check_profession_stat_budget(character, profession,
			mage_stat_requirements, allocate_points);
		break;
	case 2:
		check_profession_stat_budget(character, profession,
			priest_stat_requirements, allocate_points);
		break;
	case 3:
		check_profession_stat_budget(character, profession,
			thief_stat_requirements, allocate_points);
		break;
	case 4:
		check_profession_stat_budget(character, profession,
			ranger_stat_requirements, allocate_points);
		break;
	case 5:
		check_profession_stat_budget(character, profession,
			alchemist_stat_requirements, allocate_points);
		break;
	case 6:
		check_profession_stat_budget(character, profession,
			bard_stat_requirements, allocate_points);
		break;
	case 7:
		check_profession_stat_budget(character, profession,
			psionic_stat_requirements, allocate_points);
		break;
	case 8:	/* Valkyrie: only female characters qualify, unless points
		   are being spent on a profession already chosen. */
		if (allocate_points != 0 || party_records[character].gender == 1)
			check_profession_stat_budget(character, profession,
				valkyrie_stat_requirements, allocate_points);
		else
			profession_eligible[profession] = 0;
		break;
	case 9:
		check_profession_stat_budget(character, profession,
			bishop_stat_requirements, allocate_points);
		break;
	case 10:
		check_profession_stat_budget(character, profession,
			lord_stat_requirements, allocate_points);
		break;
	case 11:
		check_profession_stat_budget(character, profession,
			samurai_stat_requirements, allocate_points);
		break;
	case 12:
		check_profession_stat_budget(character, profession,
			monk_stat_requirements, allocate_points);
		break;
	case 13:
		check_profession_stat_budget(character, profession,
			ninja_stat_requirements, allocate_points);
		break;
	}
}
