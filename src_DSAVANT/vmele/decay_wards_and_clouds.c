/* decays every group's wards and weakens each delayed cloud by one */

#include "structs/member.h"
#include "structs/loadrec.h"
extern struct status_pair party_effects[];

extern struct member_rec *battle_groups[];

decay_wards_and_clouds()
{
	int group, realm, decay, value;

	for (group = 0; group < 7; group++) {
		for (realm = 0; realm < 6; realm++) {
			value = battle_groups[group]->ward[realm];
			if (value > 0) {
				/* each ward decays at its own rate */
				switch (realm) {
				case 0:
					decay = value / 10;
					break;
				case 1:
					decay = value / 10;
					break;
				case 2:
					decay = value / 12;
					break;
				case 3:
					decay = value / 12;
					break;
				case 4:
					decay = value / 20;
					break;
				case 5:
					decay = 1;
					break;
				}
				if (decay < 1)
					decay = 1;	/* always decay by at least 1 */
				value -= decay;
				if (value < 0)
					value = 0;
				battle_groups[group]->ward[realm] = value;
			}
		}
		for (realm = 0; realm < 6; realm++)
			if (battle_groups[group]->cloud_power[realm] > 0)
				battle_groups[group]->cloud_power[realm]--;
	}
	/* 0x190 is the party's ward[4]: it carries the party buff */
	if (party_effects[PARTY_EFFECT_WARD].timer > 0)
		party_effects[PARTY_EFFECT_WARD].strength = battle_groups[0]->ward[4];
	if (party_effects[PARTY_EFFECT_WARD].strength <= 0) {
		party_effects[PARTY_EFFECT_WARD].timer = 0;
		party_effects[PARTY_EFFECT_WARD].strength = 0;
	}
}
