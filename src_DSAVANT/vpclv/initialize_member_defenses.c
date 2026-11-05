/* Initialize a party member's resistances, attacks, and armor class. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
extern struct pc_rec party_records[];
extern char fighter_resist_base[], fighter_resist_growth[],
	ranger_valkyrie_resist_base[], ranger_valkyrie_resist_growth[];
extern char lord_resist_base[], lord_resist_growth[],
	samurai_resist_base[], samurai_resist_growth[];
extern char ninja_resist_base[], ninja_resist_growth[],
	mage_alchemist_resist_base[], mage_alchemist_resist_growth[];
extern char psionic_resist_base[], psionic_resist_growth[],
	priest_bishop_resist_base[], priest_bishop_resist_growth[];
extern char monk_resist_base[], monk_resist_growth[],
	thief_bard_resist_base[], thief_bard_resist_growth[];
extern int set_profession_resistances(), adjust_member_resistance();
extern int clamp_between(), update_party_stat_adjustments();
extern int reset_hand_attack(), data_record_io(), set_party_hand_attack();

/* Apply profession, race, ability, skill, and equipment defense bonuses. */
initialize_member_defenses(member_index)
int member_index;
{
	int hand, i, bonus, nibble, slot;
	struct item_record item;
	switch (party_records[member_index].profession) {
	case 0: set_profession_resistances(member_index, fighter_resist_base,
	fighter_resist_growth); break;
	case 4: case 8: set_profession_resistances(member_index,
	ranger_valkyrie_resist_base, ranger_valkyrie_resist_growth); break;
	case 10: set_profession_resistances(member_index, lord_resist_base,
	lord_resist_growth); break;
	case 11: set_profession_resistances(member_index, samurai_resist_base,
	samurai_resist_growth); break;
	case 13: set_profession_resistances(member_index, ninja_resist_base,
	ninja_resist_growth); break;
	case 1: case 5: set_profession_resistances(member_index,
	mage_alchemist_resist_base, mage_alchemist_resist_growth); break;
	case 7: set_profession_resistances(member_index, psionic_resist_base,
	psionic_resist_growth); break;
	case 2: case 9: set_profession_resistances(member_index,
	priest_bishop_resist_base, priest_bishop_resist_growth); break;
	case 12: set_profession_resistances(member_index, monk_resist_base,
	monk_resist_growth); break;
	case 3: case 6: set_profession_resistances(member_index,
		thief_bard_resist_base,
	thief_bard_resist_growth); break;
	}
	switch (party_records[member_index].race) {
	case 0: adjust_member_resistance(member_index, 0, 11, 20); break;
	case 2: case 4: adjust_member_resistance(member_index, 0, 6,
	party_records[member_index].stat[3]/5*5);
	case 3: adjust_member_resistance(member_index, 0, 12,
	party_records[member_index].stat[3]/5*5); break;
	case 1: adjust_member_resistance(member_index, 0, 9, 20); break;
	case 5:
	adjust_member_resistance(member_index, 0, 12, 25);
	adjust_member_resistance(member_index, 0, 4, 25);
	adjust_member_resistance(member_index, 0, 7, 25);
	adjust_member_resistance(member_index, 0, 10, 25);
	adjust_member_resistance(member_index, 0, 11, 25); break;
	case 6: case 7:
	adjust_member_resistance(member_index, 0, 10, 25);
	adjust_member_resistance(member_index, 0, 8, 10);
	adjust_member_resistance(member_index, 0, 3, -20); break;
	case 8:
	adjust_member_resistance(member_index, 0, 7, 15);
	adjust_member_resistance(member_index, 0, 4, 20);
	case 9: adjust_member_resistance(member_index, 0, 3, 20); break;
	case 10:
	adjust_member_resistance(member_index, 0, 12, 25);
	adjust_member_resistance(member_index, 0, 3, 15); break;
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
	if (party_records[member_index].skills[23] > 0) {
	adjust_member_resistance(member_index, 0, 9,
	party_records[member_index].skills[23]/2);
	adjust_member_resistance(member_index, 0, 10,
	party_records[member_index].skills[23]/3);
	}
	i=0;
	do {
	party_records[member_index].resistance_rows.named.resist[i] =
	party_records[member_index].resistance_rows.named.base_resist[i];
} while (++i < 14);
	i=0;
	do {
	if (party_records[member_index].equipped[i] != 255) {
	slot=0;
	do {
	bonus=party_records[member_index].item_slots[0]
	[party_records[member_index].equipped[i]].resist_bonus[slot]/16;
	nibble=(party_records[member_index].item_slots[0]
	[party_records[member_index].equipped[i]].resist_bonus[slot]%16)*10;
	party_records[member_index].resistance_rows.named.resist[bonus] =
	clamp_between(party_records[member_index].resistance_rows.named
	.resist[bonus]+nibble, 0, 125);
	} while (++slot < 2);
	}
	} while (++i < 8);
	switch (party_records[member_index].profession) {
	case 0: case 4: case 8: case 10: case 11: case 12: case 13:
	update_party_stat_adjustments(member_index, 4, 7, 5, 6, 3); break;
	case 1: case 5: case 7: case 9:
	update_party_stat_adjustments(member_index, 2, 12, 12, 7, 7); break;
	case 2: case 3: case 6:
	update_party_stat_adjustments(member_index, 3, 10, 8, 7, 5); break;
	}
	hand=0;
	do {
	reset_hand_attack(member_index, hand);
	if (party_records[member_index].equipped[hand] != 255) {
	data_record_io(1, &item, party_records[member_index].item_slots[0]
	[party_records[member_index].equipped[hand]].item_id, 0);
	set_party_hand_attack(member_index, hand, &item);
	}
	} while (++hand < 2);
	party_records[member_index].armor_class[0]=10;
	party_records[member_index].armor_class[0]-=
	party_records[member_index].stat[5]>15 ? 1:0;
	party_records[member_index].armor_class[0]-=
	party_records[member_index].stat[5]>17 ? 1:0;
	party_records[member_index].armor_class[0]-=
	party_records[member_index].race==5 ? 2:0;
	if (party_records[member_index].profession==13
	|| party_records[member_index].profession==12) {
	hand=party_records[member_index].level>20 ? 10
	:party_records[member_index].level/2;
	hand+=party_records[member_index].skills[17]/10;
	party_records[member_index].armor_class[0]-=hand;
	}
	hand=3;
	do {
	party_records[member_index].armor_class[hand]=
	party_records[member_index].armor_class[0];
	if (party_records[member_index].equipped[hand]!=255)
	party_records[member_index].armor_class[hand]-=
	party_records[member_index].item_slots[0]
	[party_records[member_index].equipped[hand]].armor_class;
	} while (++hand<8);
}
