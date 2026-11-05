/* Roll the initial skill pools and spend profession-specific skill points. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int roll_slot_values();
extern int spend_level_scaled_slot_value();

initialize_profession_skills(member_index)
int member_index;
{
	switch (party_records[member_index].profession) {
	case 0:
		roll_slot_values(member_index, 10, 6, 3);
		break;
	case 1:
		roll_slot_values(member_index, 3, 4, 12);
		party_records[member_index].skills[32] =
			spend_level_scaled_slot_value(member_index, 3, 2);
		break;
	case 2:
		roll_slot_values(member_index, 3, 4, 12);
		party_records[member_index].skills[30] =
			spend_level_scaled_slot_value(member_index, 3, 2);
		break;
	case 3:
		roll_slot_values(member_index, 5, 10, 4);
		party_records[member_index].skills[16] =
			spend_level_scaled_slot_value(member_index, 1, 2);
		break;
	case 4:
		roll_slot_values(member_index, 7, 7, 5);
		party_records[member_index].skills[7] =
			spend_level_scaled_slot_value(member_index, 0, 3);
		party_records[member_index].skills[12] =
			spend_level_scaled_slot_value(member_index, 1, 3);
		break;
	case 6:
		roll_slot_values(member_index, 6, 7, 6);
		party_records[member_index].skills[13] =
			spend_level_scaled_slot_value(member_index, 1, 2);
		break;
	case 5:
		roll_slot_values(member_index, 3, 4, 12);
		party_records[member_index].skills[29] =
			spend_level_scaled_slot_value(member_index, 3, 2);
		break;
	case 7:
		roll_slot_values(member_index, 3, 4, 12);
		party_records[member_index].skills[31] =
			spend_level_scaled_slot_value(member_index, 3, 2);
		break;
	case 9:
		roll_slot_values(member_index, 3, 3, 13);
		party_records[member_index].skills[32] =
			spend_level_scaled_slot_value(member_index, 3, 3);
		party_records[member_index].skills[30] =
			spend_level_scaled_slot_value(member_index, 3, 2);
		break;
	case 8:
		roll_slot_values(member_index, 9, 5, 5);
		party_records[member_index].skills[4] =
			spend_level_scaled_slot_value(member_index, 0, 3);
		break;
	case 10:
		roll_slot_values(member_index, 9, 5, 5);
		party_records[member_index].skills[28] =
			spend_level_scaled_slot_value(member_index, 3, 3);
		break;
	case 11:
		roll_slot_values(member_index, 9, 5, 5);
		party_records[member_index].skills[1] =
			spend_level_scaled_slot_value(member_index, 0, 2);
		break;
	case 12:
		roll_slot_values(member_index, 7, 6, 6);
		party_records[member_index].skills[9] =
			spend_level_scaled_slot_value(member_index, 0, 3);
		party_records[member_index].skills[31] =
			spend_level_scaled_slot_value(member_index, 3, 3);
		break;
	case 13:
		roll_slot_values(member_index, 8, 7, 4);
		party_records[member_index].skills[9] =
			spend_level_scaled_slot_value(member_index, 0, 2);
		party_records[member_index].skills[17] =
			spend_level_scaled_slot_value(member_index, 1, 2);
		break;
	}
}
