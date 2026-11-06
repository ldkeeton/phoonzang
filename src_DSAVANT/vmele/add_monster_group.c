/* Add monster record member_id as battle group group_index, then maybe a
   companion group. */

#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int monster_group_count, party_char_count, party_entry_mode;
extern unsigned char difficulty_option;
extern int data_record_io(), check_monster_picture_space();
extern int find_picture_slot(), ensure_sound_loaded(), add_random_steps();
extern int clamp_between(), random_below(), pick_target_slot();

add_monster_group(member_id, group_index)
int member_id, group_index;
{
	int unit;
	int random_limit, party_level_sum, group_to_add;

	/* Load the extended monster record selected by member_id. */
	data_record_io(4, battle_group_ext[group_index], member_id, 0); /* type 4 */
	/* Later monster groups require a free picture slot. */
	if (group_index > 1
	    && check_monster_picture_space(battle_group_ext[group_index]->kind)
			== -1)
		return;

	monster_group_count++; /* count the added group */
	battle_groups[group_index]->kind = member_id;
	battle_groups[group_index]->slot = find_picture_slot(
		battle_group_ext[group_index]->kind);
	if (group_index == 1 && battle_group_ext[group_index]->sound_id > 0)
		ensure_sound_loaded(battle_group_ext[group_index]->sound_id);

	/* Unless flag bit 0 is set, the difficulty option adjusts the unit count. */
	if ((battle_group_ext[group_index]->flags & 1) == 0)
		/* Option 1 reduces the base; option 2 raises it. */
		switch (difficulty_option) {
		case 1:
			if (battle_group_ext[group_index]->member_count_spec.base > 0)
				battle_group_ext[group_index]->member_count_spec.base--;
			break;
		case 2:
			battle_group_ext[group_index]->member_count_spec.base++;
		}
	battle_groups[group_index]->unit_count = add_random_steps(
		battle_group_ext[group_index]->member_count_spec);
	if (battle_groups[group_index]->unit_count < 1)
		battle_groups[group_index]->unit_count = 1;
	if (battle_groups[group_index]->unit_count > 9)
		battle_groups[group_index]->unit_count = 9;
	battle_groups[group_index]->unidentified = 1;
	/* Clear the six wards and six cloud powers. */
	for (unit = 0; unit < 6; unit++)
		battle_groups[group_index]->ward[unit] = 0;
	for (unit = 0; unit < 6; unit++)
		battle_groups[group_index]->cloud_power[unit] = 0;
	if (difficulty_option == 2)
		battle_group_ext[group_index]->hp_spec.count++;

	/* Build each monster's battle copy from its random-stat specifications. */
	for (unit = 0; unit < battle_groups[group_index]->unit_count; unit++) {
		battle_groups[group_index]->unit[unit].level =
			battle_group_ext[group_index]->hp_spec.count;
		battle_groups[group_index]->unit[unit].hp_max = add_random_steps(
			battle_group_ext[group_index]->hp_spec);
		battle_groups[group_index]->unit[unit].hp =
			battle_groups[group_index]->unit[unit].hp_max;
		battle_groups[group_index]->unit[unit].stamina_max = add_random_steps(
			battle_group_ext[group_index]->stamina_spec);
		battle_groups[group_index]->unit[unit].stamina =
			battle_groups[group_index]->unit[unit].stamina_max;
		battle_groups[group_index]->unit[unit].cell = -1;
		/* The difficulty option sets three battle modifiers. */
		switch (difficulty_option) {
		case 1:
			battle_groups[group_index]->unit[unit].reflex_mod = 2;
			battle_groups[group_index]->unit[unit].aim_mod = 2;
			battle_groups[group_index]->unit[unit].speed_mod = -5;
			break;
		case 2:
			battle_groups[group_index]->unit[unit].reflex_mod = -2;
			battle_groups[group_index]->unit[unit].aim_mod = -2;
			battle_groups[group_index]->unit[unit].speed_mod = 5;
		}
	}

	/* Scale the chance of adding another group from the party's average level. */
	party_level_sum = 0;
	/* Average party level, then scale it into the 1..5 group limit. */
	for (unit = 0; unit < party_char_count; unit++)
		party_level_sum += party_records[unit].level;
	party_level_sum = (party_level_sum / party_char_count + 1) / 3;
	if (party_entry_mode > 0)
		party_level_sum++;
	party_level_sum = clamp_between(party_level_sum, 1, 5);
	/* The difficulty option sets the companion-group roll range to 150, 100 or
	   75. */
	random_limit = difficulty_option == 1 ? 150 :
		difficulty_option == 2 ? 75 : 100;
	group_to_add = 1;
	if (group_index < party_level_sum) {
		/* Rolls above 25 try the selected target group. */
		if (random_below(100) > 25) {
			member_id = pick_target_slot(group_to_add, member_id);
			if (random_below(random_limit)
				> battle_group_ext[group_index]->companion_chance[0])
				member_id = -1;
		} else
			member_id = -1;
		unit = 0;
		/* Check the two target entries before giving up on another group. */
		do {
			if (member_id == -1
			    && battle_group_ext[group_to_add]->companion_chance[unit] > 0
			    && battle_group_ext[group_index]->companion_chance[unit] > 0
			    && random_below(random_limit)
					< battle_group_ext[group_index]->companion_chance[unit])
				member_id = battle_group_ext[group_to_add]->companion_id[unit];
			unit++;
		} while (unit < 2);
		if (member_id != -1)
			add_monster_group(member_id, group_index + 1);
	}
}
