/* Apply the selected special power from a charged party item. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int select_grid_text_option();
extern int random_below();
extern int improve_party_skill_randomly();
extern int consume_item_charge();

/* Apply the selected charged item's effect, then spend one charge. */
use_item_special_power(member_index, item_page, item_slot, power_index)
int member_index;
int item_page;
int item_slot;
int power_index;
{
	int stop;
	int index;
	int selected_option;
	int option_flags[5];

	option_flags[0] = 1;
	option_flags[1] = 1;
	option_flags[2] = -1;
	selected_option = select_grid_text_option(354,
		MSG_INVOKE_ITS_SPECIAL_POWER, 74, 112, 11, 106, 12, 1, 2,
		1, -1, 1, option_flags);
	if (selected_option == 0) {
		if (power_index < 9) {
			index = power_index - 1;
			if (party_records[member_index].stat[index] < 20)
				party_records[member_index].stat[index]++;
		} else {
			switch (power_index) {
			case 9:
				if (party_records[member_index].adjusted_stat4 < 4)
					party_records[member_index].adjusted_stat4 = 4;
				break;
			case 10:
				if (party_records[member_index].attacks_per_round < 4)
					party_records[member_index].attacks_per_round = 4;
				break;
			case 11:
			case 17:
				party_records[member_index].state = 0;
				for (index = 0; index < 10; ++index)
					party_records[member_index].status[index] = 0;
				party_records[member_index].hp[0] =
					party_records[member_index].hp[1];
				party_records[member_index].stamina[0] =
					party_records[member_index].stamina[1];
				/* Fall through to the shared age and vitality adjustment. */
			case 12:
				if (power_index != 11) {
					if (party_records[member_index].age_days / 365L > 18L)
						party_records[member_index].age_days -= 366L;
					if (party_records[member_index].stat[3] < 18)
						party_records[member_index].stat[3]++;
				}
				break;
			case 13:
				index = random_below(5) + 2;
				party_records[member_index].hp[1] += index;
				party_records[member_index].hp[0] += index;
				break;
			case 14:
				for (index = 0; index < 6; ++index)
					party_records[member_index].realm_points[index][0] =
						party_records[member_index].realm_points[index][1];
				break;
			case 15:
				if (party_records[member_index].stat[4] < 18)
					party_records[member_index].stat[4] = 18;
				if (party_records[member_index].stat[5] < 18)
					party_records[member_index].stat[5] = 18;
				improve_party_skill_randomly(member_index, 33, 10, 5);
				break;
			case 16:
				stop = 0;
				while (party_records[member_index].stat[7] > 0 && stop == 0) {
					party_records[member_index].stat[7]--;
					stop = random_below(3);
				}
				break;
			case 40:
				improve_party_skill_randomly(member_index, 22, 3, 4);
				break;
			case 41:
				improve_party_skill_randomly(member_index, 10, 4, 5);
				break;
			case 42:
				improve_party_skill_randomly(member_index, 19, 3, 4);
				break;
			case 43:
				improve_party_skill_randomly(member_index, 24, 2, 3);
				break;
			case 44:
				improve_party_skill_randomly(member_index, 15, 3, 4);
				break;
			case 45:
				improve_party_skill_randomly(member_index, 16, 3, 4);
				break;
			case 46:
				improve_party_skill_randomly(member_index, 12, 4, 5);
				break;
			case 47:
				improve_party_skill_randomly(member_index, 11, 4, 5);
				break;
			case 48:
				improve_party_skill_randomly(member_index, 21, 3, 4);
				break;
			}
		}
		consume_item_charge(member_index, item_page, item_slot);
	}
}
