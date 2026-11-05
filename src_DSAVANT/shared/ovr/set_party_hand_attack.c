/* Set the selected hand's attack fields from its weapon's item record. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

set_party_hand_attack(member_index, hand_index, weapon)
int member_index;
int hand_index;
struct item_record *weapon;
{
	int skill_work[2];

	party_records[member_index].hand_attack[hand_index].range =
		weapon->range;
	/* Copy the eight hand values over +0x04..+0x0b; the seventh is the base
	   critical chance. */
	skill_work[0] = 0;
	do {
		party_records[member_index].hand_attack[hand_index]
			.hand_values[skill_work[0]] = weapon->hand_values[skill_work[0]];
	} while (++skill_work[0] < 8);

	/* Skills add a fifth of skill 33 to critical chance. */
	skill_work[0] = party_records[member_index].skills[33] / 5;
	/* These two professions receive a fixed critical chance increase. */
	if (party_records[member_index].profession == 12 ||
	    party_records[member_index].profession == 13) {
		party_records[member_index].hand_attack[hand_index].critical_chance +=
			skill_work[0] + 5;
	} else if (skill_work[0] > 0) {
		party_records[member_index].hand_attack[hand_index].critical_chance +=
			skill_work[0];
	}

	party_records[member_index].hand_attack[hand_index].hand_field0c =
		weapon->hand_field0c;
	/* Item type 4 has its own hit penalty and class adjustment. */
	if (weapon->item_type == 4) {
		/* This weapon stores a scaled negative hit adjustment. */
		party_records[member_index].hand_attack[hand_index].hit_penalty =
			0 - (weapon->hit_adjustment * 5);
		/* Profession 4 applies an extra hit reduction and doubles critical
		   chance. */
		if (party_records[member_index].profession == 4) {
			party_records[member_index].hand_attack[hand_index].hit_penalty -= 15;
			party_records[member_index].hand_attack[hand_index].critical_chance *= 2;
		}
	} else {
		party_records[member_index].hand_attack[hand_index].hit_penalty = 0;
		if (hand_index == 0) {
			/* Stats above 15 and 17 each reduce the first hand's penalty by five. */
			party_records[member_index].hand_attack[0].hit_penalty -=
				(party_records[member_index].stat[4] > 15 ? 5 : 0);
			party_records[member_index].hand_attack[0].hit_penalty -=
				(party_records[member_index].stat[4] > 17 ? 5 : 0);
		} else {
			/* The second hand uses the higher stat threshold only. */
			party_records[member_index].hand_attack[1].hit_penalty -=
				(party_records[member_index].stat[4] > 17 ? 5 : 0);
		}
		party_records[member_index].hand_attack[hand_index].hit_penalty -=
			weapon->hit_adjustment * 5;
	}

	/* Copy the four-byte base damage tuple. */
	party_records[member_index].hand_attack[hand_index].base =
		weapon->u.damage;
	if (hand_index == 0) {
		/* Stats above 15 and 17 add one point each to base damage. */
		party_records[member_index].hand_attack[0].base.damage_bonus +=
			(party_records[member_index].stat[0] > 15 ? 1 : 0);
		party_records[member_index].hand_attack[0].base.damage_bonus +=
			(party_records[member_index].stat[0] > 17 ? 1 : 0);
	}

	party_records[member_index].hand_attack[hand_index].attack_flags =
		weapon->attack_flags;
	party_records[member_index].hand_attack[hand_index].hand_field10 =
		weapon->hand_field10;
	party_records[member_index].hand_attack[hand_index].slay_family =
		weapon->slay_family;
}
