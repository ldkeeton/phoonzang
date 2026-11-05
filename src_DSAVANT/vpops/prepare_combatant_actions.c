/* Prepare each combatant's attack and target data for the selected group. */
#include "structs/member.h"
#include "structs/spell.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct member_rec *ally_battle_group;
extern struct spell_info spell_table[];
extern int monster_group_count;
extern int member_is_active();
extern int random_below();
extern int pick_monster_attack_slot();
extern int pick_random_set_bit();
extern int target_most_wounded_unit();

prepare_combatant_actions(group_index, target_group)
int group_index, target_group;
{
	int unit_index, scan_index, roll;
	struct combatant *unit;
	int attack_speed, speed_step, action_index, valid_targets;
	/* Reused locals: roll is also the unit index in the HP sums;
	   target_limit is the spell roll, then the spell power, then the target
	   ceiling; retry is the spell threshold, then the target scan index;
	   valid_targets is also the special-spell list index. */
	int target_limit, attack_slot, retry, chosen_kind, spell_id,
		flee_threshold;
	long ally_hp, monster_hp;

	/* Compare the allies' total HP (party plus group 6) with the monsters'. */
	ally_hp = 0;
	monster_hp = 0;
	scan_index = 0;
	goto party_test;
party_body:
	if (member_is_active(scan_index) != 0)
		ally_hp += battle_groups[0]->unit[scan_index].hp;
	scan_index++;
party_test:
	if (battle_groups[0]->unit_count > scan_index)
		goto party_body;
	scan_index = 0;
	goto special_group_test;
special_group_body:
	ally_hp += ally_battle_group->unit[scan_index].hp;
	scan_index++;
special_group_test:
	if (ally_battle_group->unit_count > scan_index)
		goto special_group_body;
	for (scan_index = 1; scan_index <= monster_group_count; scan_index++) {
		for (roll = 0; roll < battle_groups[scan_index]->unit_count; roll++)
			monster_hp += battle_groups[scan_index]->unit[roll].hp;
	}
	if (group_index == 6)
		flee_threshold = (int)((((monster_hp * 100L) / ally_hp) / 25L) * 5L - 20L);
	else
		flee_threshold = (int)((((ally_hp * 100L) / monster_hp) / 25L) * 5L - 20L);
	if ((battle_group_ext[group_index]->flags & 1) != 0) {
		if (flee_threshold < 0)
			flee_threshold = 0;
		flee_threshold += (battle_groups[group_index]->unit[0].hp_max * 2) /
			(battle_groups[group_index]->unit[0].hp + 1);
		flee_threshold = flee_threshold * 2 + 10;
	}

	/* Process each combatant in the selected group. */
	unit_index = 0;
	goto action_test;
action_body:
		unit = &battle_groups[group_index]->unit[unit_index];
		attack_speed = random_below(10) +
			battle_groups[group_index]->unit[unit_index].speed_mod +
			battle_group_ext[group_index]->speed_bonus;
		if (attack_speed < 1)
			attack_speed = 1;
		if (attack_speed > 100)
			attack_speed = 100;
		speed_step = attack_speed / battle_group_ext[group_index]->attack_count;
		if ((battle_group_ext[group_index]->flags & 2) != 0)
			unit->countdown = 1;
		if (unit->countdown > 0)
			unit->countdown_roll = random_below(attack_speed / 2) +
				random_below(20) + attack_speed / 2;
		unit->attack_cycle = 0;
		unit->primary_attack = pick_monster_attack_slot(group_index);
		retry = 0;
		do {
			unit->secondary_attack = pick_monster_attack_slot(group_index);
			retry++;
		} while (unit->secondary_attack == unit->primary_attack && retry < 3);
		/* Give each attack this round a falling speed. */
		action_index = 0;
action_speed_body:
		if (battle_group_ext[group_index]->attack_count <= action_index)
			goto action_speed_clear;
		if (unit->state >= 2)
			goto action_speed_clear;
		if (unit->status[3] > 0)
			goto action_speed_clear;
		if (unit->status[2] <= 0)
			goto action_speed_assign;
action_speed_clear:
		unit->action_speed[action_index] = 0;
		goto action_speed_next;
action_speed_assign:
		unit->action_speed[action_index] = attack_speed;
		attack_speed -= speed_step;
action_speed_next:
		action_index++;
		if (action_index < 4)
			goto action_speed_body;
		chosen_kind = -1;
		unit->target_group = target_group;
		/* Pick a living target in the requested group. */
		do {
			unit->target_unit = random_below(battle_groups[target_group]->unit_count);
		} while (battle_groups[unit->target_group]->unit[unit->target_unit].state
			>= 3);

		/* A successful special-spell roll chooses one of the configured spells. */
		if (random_below(100)
			< battle_group_ext[group_index]->special_spell_chance) {
			chosen_kind = 3;
			unit->action_kind = 3;
			target_limit = random_below(100);
			retry = 5;
			valid_targets = 0;
			spell_id = -1;
			/* Increase the spell-list threshold until this roll selects an id. */
special_spell_body:
			if (target_limit < retry)
				spell_id =
					battle_group_ext[group_index]->special_spell_ids[valid_targets];
			valid_targets++;
			if (retry < 15)
				retry += 5;
			else if (retry < 55)
				retry += 10;
			else
				retry += 15;
			if (spell_id == -1)
				goto special_spell_body;
			if (spell_table[spell_id].targeted == 1 || spell_id == 88 ||
			    spell_id == 19 || spell_id == 66) {
				if (group_index == 6) {
					if (target_most_wounded_unit(unit, 0) == 0 &&
					    target_most_wounded_unit(unit, 6) == 0)
						chosen_kind = -1;
				} else if (target_most_wounded_unit(unit, group_index) == 0) {
					if (target_most_wounded_unit(unit,
					    random_below(monster_group_count) + 1) == 0)
						chosen_kind = -1;
				}
			}
			target_limit = unit->level - spell_table[spell_id].level + 1;
			target_limit = target_limit < 1 ? 1 : (target_limit > 6 ? 6 : target_limit);
			while (random_below(unit->level) + 1 < target_limit)
				target_limit--;
			unit->primary_action = (target_limit << 8) + spell_id;
		}

		if (chosen_kind == -1 && random_below(100) <
		    battle_group_ext[group_index]->special_action_chance) {
			chosen_kind = 5;
			unit->action_kind = 5;
			unit->primary_action =
				battle_group_ext[group_index]->special_action_code;
		}
		if (chosen_kind == -1) {
			target_limit = 0;
			if (unit->state < 2)
				goto check_action_status_3;
			goto action_target_limit;
check_action_status_3:
			if (unit->status[3] == 0)
				goto check_action_status_2;
			goto action_target_limit;
check_action_status_2:
			if (unit->status[2] != 0)
				goto action_target_limit;
			attack_slot = unit->primary_attack;
			if (group_index == 6) {
				target_limit = 9;
				goto action_target_limit;
			}
			if (group_index < 3)
				goto attack_target_base;
			if (battle_group_ext[group_index]->attack[attack_slot].target_count <= 1)
				goto action_target_limit;
attack_target_base:
			target_limit = 3;
			if (battle_group_ext[group_index]->attack[attack_slot].target_count >
			    (group_index < 3 ? 0 : 2))
				target_limit = 6;
action_target_limit:
			if (target_limit > battle_groups[target_group]->unit_count)
				target_limit = battle_groups[target_group]->unit_count;
			/* Count living targets within the action's target limit. */
			valid_targets = 0;
			retry = 0;
			goto target_scan_test;
	target_scan_body:
			if (battle_groups[target_group]->unit[retry].state < 3)
				valid_targets++;
			retry++;
	target_scan_test:
			if (retry < target_limit)
				goto target_scan_body;
			if (valid_targets > 0) {
				unit->action_kind = 0;
				unit->target_group = target_group;
				unit->target_unit = random_below(valid_targets);
				attack_slot = unit->primary_attack;
				if (battle_group_ext[group_index]->attack_mode[attack_slot] == 2)
					unit->primary_action = 4;
				else if (battle_group_ext[group_index]->attack_mode[attack_slot] == 3)
					unit->primary_action = 8;
				else
					unit->primary_action = pick_random_set_bit(
						&battle_group_ext[group_index]->attack[attack_slot].action_mask);
			} else
				unit->action_speed[0] = 0;
		}

		/* The weaker side may flee (action_kind 6); fear adds 10 to the roll
		   limit. */
		roll = random_below(100);
		if ((unit->status[1] > 0 ? flee_threshold + 10 : flee_threshold) > roll &&
		    battle_group_ext[group_index]->flee_chance > roll) {
			chosen_kind = 6;
			unit->action_kind = 6;
		}

		unit->secondary_action = -1;
		if (unit->action_kind == 0)
			goto select_secondary_action;
		goto clear_action_speeds;
select_secondary_action:
		attack_slot = unit->secondary_attack;
		if (group_index < 3 ||
		    battle_group_ext[group_index]->attack[attack_slot].target_count > 1) {
			if (battle_group_ext[group_index]->attack_mode[attack_slot] == 2)
				unit->secondary_action = 4;
			else if (battle_group_ext[group_index]->attack_mode[attack_slot] == 3)
				unit->secondary_action = 8;
			else
				unit->secondary_action = pick_random_set_bit(
					&battle_group_ext[group_index]->attack[attack_slot].action_mask);
		} else {
			unit->action_speed[1] = 0;
			unit->action_speed[3] = 0;
		}
		goto action_speeds_done;
clear_action_speeds:
		scan_index = 1;
clear_action_loop:
		unit->action_speed[scan_index] = 0;
		scan_index++;
		if (scan_index < 4)
			goto clear_action_loop;
action_speeds_done:
		unit_index++;
action_test:
	if (battle_groups[group_index]->unit_count > unit_index)
		goto action_body;
	return;
}
