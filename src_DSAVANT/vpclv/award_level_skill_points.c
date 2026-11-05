/* Roll and award the skill values defined for a profession. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Initialize profession skills for one party member. */
award_level_skill_points(member_index)
int member_index;
{
	switch (party_records[member_index].profession) {
	case 0:
		roll_skill_points(member_index, 8, 6, 3);
		break;
	case 1:
		roll_skill_points(member_index, 3, 3, 9);
		raise_member_skill_from_pool(member_index, 3, 2, 32);
		break;
	case 2:
		roll_skill_points(member_index, 3, 3, 9);
		raise_member_skill_from_pool(member_index, 3, 2, 30);
		break;
	case 3:
		roll_skill_points(member_index, 4, 9, 4);
		raise_member_skill_from_pool(member_index, 1, 2, 16);
		break;
	case 4:
		roll_skill_points(member_index, 6, 5, 5);
		raise_member_skill_from_pool(member_index, 0, 3, 7);
		raise_member_skill_from_pool(member_index, 1, 3, 12);
		break;
	case 6:
		roll_skill_points(member_index, 4, 6, 5);
		raise_member_skill_from_pool(member_index, 1, 2, 13);
		break;
	case 5:
		roll_skill_points(member_index, 3, 3, 9);
		raise_member_skill_from_pool(member_index, 3, 2, 29);
		break;
	case 7:
		roll_skill_points(member_index, 3, 3, 9);
		raise_member_skill_from_pool(member_index, 3, 2, 31);
		break;
	case 9:
		roll_skill_points(member_index, 2, 2, 12);
		raise_member_skill_from_pool(member_index, 3, 3, 32);
		raise_member_skill_from_pool(member_index, 3, 2, 30);
		break;
	case 8:
		roll_skill_points(member_index, 6, 5, 5);
		raise_member_skill_from_pool(member_index, 0, 3, 4);
		break;
	case 10:
		roll_skill_points(member_index, 7, 4, 5);
		raise_member_skill_from_pool(member_index, 3, 3, 28);
		break;
	case 11:
		roll_skill_points(member_index, 7, 4, 5);
		raise_member_skill_from_pool(member_index, 0, 2, 1);
		break;
	case 12:
		roll_skill_points(member_index, 5, 5, 6);
		raise_member_skill_from_pool(member_index, 0, 3, 9);
		raise_member_skill_from_pool(member_index, 3, 3, 31);
		break;
	case 13:
		roll_skill_points(member_index, 6, 6, 4);
		raise_member_skill_from_pool(member_index, 0, 2, 9);
		raise_member_skill_from_pool(member_index, 1, 2, 17);
		break;
	}
}
