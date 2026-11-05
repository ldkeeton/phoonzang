/* Initialize a party member's profession resistances, stat bonuses, attacks,
   and armor class. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern char fighter_base_resist[];
extern char fighter_resist_mod[];
extern char mage_base_resist[];
extern char mage_resist_mod[];
extern char priest_base_resist[];
extern char priest_resist_mod[];
extern char thief_base_resist[];
extern char thief_resist_mod[];
extern char ranger_base_resist[];
extern char ranger_resist_mod[];
extern char psionic_base_resist[];
extern char psionic_resist_mod[];
extern char lord_base_resist[];
extern char lord_resist_mod[];
extern char samurai_base_resist[];
extern char samurai_resist_mod[];
extern char monk_base_resist[];
extern char monk_resist_mod[];
extern char ninja_base_resist[];
extern char ninja_resist_mod[];
extern int set_profession_resistances();
extern int adjust_member_resistance();
extern int update_party_stat_adjustments();
extern int reset_hand_attack();

initialize_member_profession(member_index)
int member_index;
{
	int counter;
	int resistance_index;

	switch (party_records[member_index].profession) {
	case 0: set_profession_resistances(member_index, fighter_base_resist,
		fighter_resist_mod); break;
	case 4: case 8: set_profession_resistances(member_index, ranger_base_resist,
		ranger_resist_mod); break;
	case 10: set_profession_resistances(member_index, lord_base_resist,
		lord_resist_mod); break;
	case 11: set_profession_resistances(member_index, samurai_base_resist,
		samurai_resist_mod); break;
	case 13: set_profession_resistances(member_index, ninja_base_resist,
		ninja_resist_mod); break;
	case 1: case 5: set_profession_resistances(member_index, mage_base_resist,
		mage_resist_mod); break;
	case 7: set_profession_resistances(member_index, psionic_base_resist,
		psionic_resist_mod); break;
	case 2: case 9: set_profession_resistances(member_index, priest_base_resist,
		priest_resist_mod); break;
	case 12: set_profession_resistances(member_index, monk_base_resist,
		monk_resist_mod); break;
	case 3: case 6: set_profession_resistances(member_index, thief_base_resist,
		thief_resist_mod); break;
	}

	switch (party_records[member_index].race) {
	case 0:
		adjust_member_resistance(member_index, 0, 11, 20);
		break;
	case 2: case 4:
		adjust_member_resistance(member_index, 0, 6,
			party_records[member_index].stat[3] / 5 * 5);
	case 3:
		adjust_member_resistance(member_index, 0, 12,
			party_records[member_index].stat[3] / 5 * 5);
		break;
	case 1:
		adjust_member_resistance(member_index, 0, 9, 20);
		break;
	case 5:
		adjust_member_resistance(member_index, 0, 12, 25);
		adjust_member_resistance(member_index, 0, 4, 25);
		adjust_member_resistance(member_index, 0, 7, 25);
		adjust_member_resistance(member_index, 0, 10, 25);
		adjust_member_resistance(member_index, 0, 11, 25);
		break;
	case 6: case 7:
		adjust_member_resistance(member_index, 0, 10, 25);
		adjust_member_resistance(member_index, 0, 8, 10);
		adjust_member_resistance(member_index, 0, 3, -20);
		break;
	case 8:
		adjust_member_resistance(member_index, 0, 7, 15);
		adjust_member_resistance(member_index, 0, 4, 20);
	case 9:
		adjust_member_resistance(member_index, 0, 3, 20);
		break;
	case 10:
		adjust_member_resistance(member_index, 0, 12, 25);
		adjust_member_resistance(member_index, 0, 3, 15);
		break;
	}

	if (party_records[member_index].stat[3] > 15) {
		adjust_member_resistance(member_index, 0, 6, 5);
		adjust_member_resistance(member_index, 0, 11, 5);
	}
	if (party_records[member_index].stat[1] > 15)
		adjust_member_resistance(member_index, 0, 9, 5);
	if (party_records[member_index].stat[5] > 15) {
		adjust_member_resistance(member_index, 0, 7, 5);
		adjust_member_resistance(member_index, 0, 4, 5);
	}

	for (resistance_index = 0; resistance_index < 14; resistance_index++)
		party_records[member_index].resistance_rows.named.resist[resistance_index] =
			party_records[member_index].resistance_rows.named.base_resist[
				resistance_index];

	switch (party_records[member_index].profession) {
	case 0: case 4: case 8: case 10: case 11: case 12: case 13:
		update_party_stat_adjustments(member_index, 4, 7, 5, 6, 3); break;
	case 1: case 5: case 7: case 9:
		update_party_stat_adjustments(member_index, 2, 12, 12, 7, 7); break;
	case 2: case 3: case 6:
		update_party_stat_adjustments(member_index, 3, 10, 8, 7, 5); break;
	}

	for (counter = 0; counter < 2; counter++)
		reset_hand_attack(member_index, counter);

	party_records[member_index].armor_class[0] = 10;
	party_records[member_index].armor_class[0] -=
		party_records[member_index].stat[5] > 15;
	party_records[member_index].armor_class[0] -=
		party_records[member_index].stat[5] > 17;
	party_records[member_index].armor_class[0] -=
		party_records[member_index].race == 5 ? 2 : 0;
	if (party_records[member_index].profession == 13
		|| party_records[member_index].profession == 12) {
		counter = party_records[member_index].level <= 20 ?
			party_records[member_index].level / 2 : 10;
		counter += party_records[member_index].skills[17] / 10;
		party_records[member_index].armor_class[0] -= counter;
	}
	party_records[member_index].armor_class[1] = 0;
	party_records[member_index].armor_class[2] = 0;
	for (counter = 3; counter < 8; counter++)
		party_records[member_index].armor_class[counter] =
			party_records[member_index].armor_class[0];
}
