/* Dispatch profession stat requirements, applying the Valkyrie
   gender restriction. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int profession_eligible[];
extern int check_profession_stat_budget();
extern char profession_0_stat_requirements[];
extern char profession_1_stat_requirements[];
extern char profession_2_stat_requirements[];
extern char profession_3_stat_requirements[];
extern char profession_4_stat_requirements[];
extern char profession_5_stat_requirements[];
extern char profession_6_stat_requirements[];
extern char profession_7_stat_requirements[];
extern char profession_8_stat_requirements[];
extern char profession_9_stat_requirements[];
extern char profession_10_stat_requirements[];
extern char profession_11_stat_requirements[];
extern char profession_12_stat_requirements[];
extern char profession_13_stat_requirements[];

/* Check one profession, optionally spending points to meet its stat
   requirements. */
check_profession_requirements(character, profession, allocate_points)
int character, profession, allocate_points;
{
	switch (profession) { /* Fourteen profession requirement sets. */
	case 0:
		check_profession_stat_budget(character, profession,
			profession_0_stat_requirements, allocate_points);
		break;
	case 1:
		check_profession_stat_budget(character, profession,
			profession_1_stat_requirements, allocate_points);
		break;
	case 2:
		check_profession_stat_budget(character, profession,
			profession_2_stat_requirements, allocate_points);
		break;
	case 3:
		check_profession_stat_budget(character, profession,
			profession_3_stat_requirements, allocate_points);
		break;
	case 4:
		check_profession_stat_budget(character, profession,
			profession_4_stat_requirements, allocate_points);
		break;
	case 5:
		check_profession_stat_budget(character, profession,
			profession_5_stat_requirements, allocate_points);
		break;
	case 6:
		check_profession_stat_budget(character, profession,
			profession_6_stat_requirements, allocate_points);
		break;
	case 7:
		check_profession_stat_budget(character, profession,
			profession_7_stat_requirements, allocate_points);
		break;
	case 8:	/* Valkyrie: only female characters qualify, unless points
		   are being spent on a profession already chosen. */
		if (allocate_points != 0 || party_records[character].gender == 1)
			check_profession_stat_budget(character, profession,
				profession_8_stat_requirements, allocate_points);
		else
			profession_eligible[profession] = 0;
		break;
	case 9:
		check_profession_stat_budget(character, profession,
			profession_9_stat_requirements, allocate_points);
		break;
	case 10:
		check_profession_stat_budget(character, profession,
			profession_10_stat_requirements, allocate_points);
		break;
	case 11:
		check_profession_stat_budget(character, profession,
			profession_11_stat_requirements, allocate_points);
		break;
	case 12:
		check_profession_stat_budget(character, profession,
			profession_12_stat_requirements, allocate_points);
		break;
	case 13:
		check_profession_stat_budget(character, profession,
			profession_13_stat_requirements, allocate_points);
		break;
	}
}
