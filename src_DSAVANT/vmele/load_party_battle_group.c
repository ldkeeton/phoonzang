/* Copy party records into battle group 0 and seed combat modifiers. */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];
extern struct pc_rec party_records[];
extern int party_char_count;
extern int party_buff_turns, party_buff_charge;
extern aztec_movmem();

load_party_battle_group()
{
	int member_index, group_index;

	group_index = 0;
	battle_groups[group_index]->unit_count = party_char_count;
	for (member_index = 0; member_index < 6; member_index++)
		battle_groups[group_index]->charge[member_index] = 0;
	if (party_buff_turns > 0)
		battle_groups[group_index]->charge[4] = party_buff_charge;
	for (member_index = 0; member_index < 6; member_index++)
		battle_groups[group_index]->delay[member_index] = 0;

	/* Copy each party member's current combat values into the battle record. */
	for (member_index = 0; member_index < party_char_count; member_index++) {
		battle_groups[group_index]->unit[member_index].level =
			party_records[member_index].level;
		battle_groups[group_index]->unit[member_index].hp_max =
			party_records[member_index].hp[1];
		battle_groups[group_index]->unit[member_index].hp =
			party_records[member_index].hp[0];
		battle_groups[group_index]->unit[member_index].stamina_max =
			party_records[member_index].stamina[1];
		battle_groups[group_index]->unit[member_index].stamina =
			party_records[member_index].stamina[0];
		battle_groups[group_index]->unit[member_index].state =
			party_records[member_index].state;
		aztec_movmem(party_records[member_index].status,
			battle_groups[group_index]->unit[member_index].status, 10);
		battle_groups[group_index]->unit[member_index].poison_strength =
			party_records[member_index].poison_strength;
		battle_groups[group_index]->unit[member_index].cell = -1;
		battle_groups[group_index]->unit[member_index].target_group = 1;

		/* Positive personal skills adjust the member's initial modifiers. */
		if (party_records[member_index].skills[22] > 0)
			battle_groups[group_index]->unit[member_index].strike_mod +=
				party_records[member_index].skills[22] / 10 + 2;
		if (party_records[member_index].skills[19] > 0)
			battle_groups[group_index]->unit[member_index].reflex_mod -=
				party_records[member_index].skills[19] / 15 + 2;
		if (party_records[member_index].skills[21] > 0)
			battle_groups[group_index]->unit[member_index].aim_mod -=
				party_records[member_index].skills[21] / 15 + 2;
		if (party_records[member_index].skills[20] > 0)
			battle_groups[group_index]->unit[member_index].speed_mod +=
				party_records[member_index].skills[20] / 10 + 2;
	}
}
