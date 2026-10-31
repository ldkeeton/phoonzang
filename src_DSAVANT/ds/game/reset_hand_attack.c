/* reset one hand's attack to bare-handed and apply the member's stat
   bonuses */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern aztec_setmem();

reset_hand_attack(pc, hand)
int pc, hand;
{
	int hands_tier, kirijutsu_tier, frame_pad[9];

	/* Clear the 18-byte attack before putting in its defaults. */
	aztec_setmem(23844 + pc * 584 + hand * 18, 18, 0);
	party_records[pc].hand_attack[hand].damage_dice = 2;
	party_records[pc].hand_attack[hand].damage_sides = 2;
	party_records[pc].hand_attack[hand].attack_flags = 32;
	hands_tier = party_records[pc].skills[9] / 5;
	kirijutsu_tier = party_records[pc].skills[33] / 5;

	/* Monks (12) and ninjas (13) use a smaller divisor and an additional flag. */
	if (party_records[pc].profession == 13 ||
	    party_records[pc].profession == 12) {
		party_records[pc].hand_attack[hand].damage_sides = hands_tier / 3 + 2;
		party_records[pc].hand_attack[hand].attack_flags |= 64;
		party_records[pc].hand_attack[hand].critical_chance = kirijutsu_tier + 5;
	} else {
		if (hands_tier > 0) {
			party_records[pc].hand_attack[hand].damage_sides = hands_tier / 4 + 1;
			party_records[pc].hand_attack[hand].attack_flags |= 64;
		}
		if (kirijutsu_tier > 0)
			party_records[pc].hand_attack[hand].critical_chance = kirijutsu_tier;
	}

	/* The primary hand gains damage and accuracy; the secondary only accuracy. */
	switch (hand) {
	case 0:
		party_records[pc].hand_attack[hand].damage_bonus +=
			party_records[pc].stat[0] > 15 ? 1 : 0;
		party_records[pc].hand_attack[hand].damage_bonus +=
			party_records[pc].stat[0] > 17 ? 1 : 0;
		party_records[pc].hand_attack[hand].hit_penalty -=
			party_records[pc].stat[4] > 15 ? 5 : 0;
		party_records[pc].hand_attack[hand].hit_penalty -=
			party_records[pc].stat[4] > 17 ? 5 : 0;
		break;
	case 1:
		party_records[pc].hand_attack[1].hit_penalty -=
			party_records[pc].stat[4] > 17 ? 5 : 0;
		break;
	}
}
