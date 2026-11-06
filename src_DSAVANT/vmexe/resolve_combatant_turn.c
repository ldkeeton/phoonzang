/* Resolves the acting combatant's action and advances its battle state. */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int acting_group, acting_unit;
extern int combat_effect_sound, spell_backfired, spell_cast_failed;
extern int effect_frame_phase, game_state, party_return_state;
extern int member_roster_index, startup_option;
extern int cell_effect_frame[3][3], cell_slot_ref[3][3];
extern char combat_action_suffix_buffer[];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern int random_below();
extern int redraw_glyph_strip();
extern int wait_for_combat_input();
extern int copy_combatant_name();
extern int load_message_string();
extern int draw_centered_text_fragments();
extern int play_sound_effect();
extern int run_combat_screen_animation();
extern int find_active_party_unit();
extern int select_target_group_unit();
extern int test_bit();
extern int aztec_movmem();
extern int resolve_combatant_attack();
extern void subtract_combatant_stamina();
extern int show_equipment_change_message();
extern int cast_combat_spell();
extern int resolve_monster_special_attack();
extern int resolve_combat_item_action();
extern int attempt_combatant_hiding();
extern int attempt_combatant_flee();
extern int move_party_member_in_formation();
extern int sync_member_party_panel();

resolve_combatant_turn()
{
	struct combatant *actor;
	int action_message;
	int turns_on_comrades;
	int disappears;
	int attack_slot;
	int attack_mode;
	int cell_row;
	int cell_column;
	int loop_count;
	int item_index;

	battle_group_ext[0]->flags = 0;
	combat_effect_sound = 6;
	spell_backfired = 0;
	spell_cast_failed = 0;
	actor = &battle_groups[acting_group]->unit[acting_unit];
	if (actor->state >= 2 || actor->status[3] > 0 || actor->status[2] > 0)
		return;
	redraw_glyph_strip(1);
	action_message = 0;
	turns_on_comrades = 0;
	disappears = 0;
	if (action_message == 0 && actor->status[1] > 0 && random_below(100) > 80
		&& actor->action_kind != 6)
		action_message = MSG_COWERS_IN_FEAR;
	if (action_message == 0 && actor->status[7] > 0 && random_below(100) > 40) {
		action_message = MSG_BABBLES_AND_FOAMS + random_below(3);
		if (random_below(100) > 80) {
			action_message = MSG_RUNS_AMOK;
			turns_on_comrades = 1;
		}
	}
	if (action_message == 0 && actor->status[4] > 0 && random_below(100) > 80) {
		action_message = MSG_STUMBLES_BLINDLY;
		turns_on_comrades = 0;
	}
	if (action_message == 0 && actor->status[8] > 0 && random_below(100) > 75) {
		action_message = MSG_GAGS_HELPLESSLY;
		turns_on_comrades = 0;
	}
	if ((battle_group_ext[acting_group]->flags & 4) != 0 &&
		battle_groups[acting_group]->unit[acting_unit].hp <
		battle_groups[acting_group]->unit[acting_unit].hp_max / 4) {
		action_message = MSG_VANISHES_3218;
		disappears = 1;
	}
	if (action_message > 0) {
		wait_for_combat_input(4);
		copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
		load_message_string(action_message, combat_action_message_buffer);
		combat_action_suffix_buffer[0] = 0;
		draw_centered_text_fragments(0, combat_action_name_buffer,
			combat_action_message_buffer, combat_action_suffix_buffer,
			acting_group == 0 ? 1 : 67, 67, 0);
		if (disappears <= 0) {
		} else {
			if (battle_groups[acting_group]->unit[acting_unit].cell != -1) {
				cell_row = battle_groups[acting_group]->unit[acting_unit].cell / 10;
				cell_column = battle_groups[acting_group]->unit[acting_unit].cell % 10;
				cell_effect_frame[cell_row][cell_column] = 0;
				effect_frame_phase = 0;
				run_combat_screen_animation();
				cell_slot_ref[cell_row][cell_column] = 0;
			}
			battle_groups[acting_group]->unit[acting_unit].cell = -1;
			if (disappears == 1) {
				battle_groups[acting_group]->unit[acting_unit].state = 3;
				battle_groups[acting_group]->unit[acting_unit].hp = 0;
			}
			for (cell_row = 0; cell_row < 4; cell_row++)
				battle_groups[acting_group]->unit[acting_unit].action_speed[cell_row] = 0;
			wait_for_combat_input(startup_option);
			return;
		}
		wait_for_combat_input(startup_option);
		if (turns_on_comrades == 0) {
			actor->action_kind = 1;
			actor->primary_action = 3;
			actor->action_speed[0] = 0;
			actor->action_speed[1] = 0;
			actor->attack_cycle = 0;
			return;
		}

		actor->action_kind = 0;
		actor->attack_cycle = 0;
		actor->secondary_action = (unsigned int)-1;
		actor->primary_action = 255;
		if (acting_group == 0) {
			for (action_message = 7; action_message >= 0; action_message--)
				if (test_bit(&party_records[acting_unit].hand_attack[0].attack_flags,
				    action_message) == 1)
					actor->primary_action = action_message;
			item_index = party_records[acting_unit].equipped[0];
			if (item_index != 255 &&
			    party_records[acting_unit].item_slots[0][item_index].item_type == 3)
				actor->primary_action = 8;
		} else {
			for (action_message = 7; action_message >= 0; action_message--)
				if (test_bit(&battle_group_ext[acting_group]->attack[0].action_mask,
				    action_message) == 1)
					actor->primary_action = action_message;
			item_index = actor->primary_attack;
			if (battle_group_ext[acting_group]->attack_mode[item_index] == 3)
				actor->primary_action = 8;
		}
		if (actor->primary_action == 255)
			actor->primary_action = 8;
		actor->primary_attack = 0;
		actor->target_group = acting_group;
		loop_count = 0;
		do {
			actor->target_unit = random_below(battle_groups[acting_group]->unit_count);
			loop_count++;
		} while (loop_count < 10 &&
			(actor->target_unit == acting_unit ||
			 battle_groups[acting_group]->unit[actor->target_unit].state >= 3 ||
			 battle_groups[acting_group]->unit[actor->target_unit].phase != 0));
		redraw_glyph_strip(1);
		wait_for_combat_input(4);
		copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
		load_message_string(MSG_TURNS_ON_COMRADES, combat_action_message_buffer);
		combat_action_suffix_buffer[0] = 0;
		draw_centered_text_fragments(0, combat_action_name_buffer,
			combat_action_message_buffer, combat_action_suffix_buffer,
			acting_group == 0 ? 1 : 67, 67, 0);
		play_sound_effect(0);
		wait_for_combat_input(startup_option);
		redraw_glyph_strip(1);
	}

	if (turns_on_comrades == 0 && acting_group == 0 && actor->target_group == 0) {
	} else {
		if (battle_groups[actor->target_group]->unit[actor->target_unit].state >= 3
			||
		    battle_groups[actor->target_group]->unit[actor->target_unit].phase
		    	!= 0) {
			if (actor->target_group == 0)
				actor->target_unit = find_active_party_unit(actor->target_unit);
			else
				actor->target_unit = select_target_group_unit(actor->target_group,
					actor->target_unit);
		}
	}
	if (turns_on_comrades == 1 && actor->target_unit == acting_unit) {
		actor->action_kind = 1;
		actor->primary_action = 1;
		actor->action_speed[0] = 0;
		actor->action_speed[1] = 0;
		actor->attack_cycle = 0;
		return;
	}

	if (acting_group == 0) {
		battle_group_ext[0]->combat_stats[0] =
			party_records[acting_unit].stat[0];
		battle_group_ext[0]->combat_stats[1] =
			party_records[acting_unit].stat[1];
		battle_group_ext[0]->combat_stats[2] =
			party_records[acting_unit].stat[4];
		battle_group_ext[0]->combat_stats[3] =
			party_records[acting_unit].stat[5];
		aztec_movmem(party_records[acting_unit].resistance_rows.named.resist,
			battle_group_ext[0]->resistance, 14);
		aztec_movmem(party_records[acting_unit].armor_class,
			battle_group_ext[0]->armor_class, 8);
		battle_group_ext[0]->armor_class[0] = battle_group_ext[0]->armor_class[0]
			+ battle_group_ext[0]->armor_class[1] + battle_group_ext[0]->armor_class[2];
		battle_group_ext[0]->speed_bonus =
			party_records[acting_unit].speed_plus_level;
		battle_group_ext[0]->attack_count =
			party_records[acting_unit].attacks_per_round;
		battle_group_ext[0]->max_hits = party_records[acting_unit].adjusted_stat4;
		battle_group_ext[0]->gender = party_records[acting_unit].gender;
		battle_group_ext[0]->creature_class = party_records[acting_unit].profession;
	} else if (actor->target_group == 0) {
		battle_group_ext[0]->combat_stats[0] =
			party_records[actor->target_unit].stat[0];
		battle_group_ext[0]->combat_stats[1] =
			party_records[actor->target_unit].stat[1];
		battle_group_ext[0]->combat_stats[2] =
			party_records[actor->target_unit].stat[4];
		battle_group_ext[0]->combat_stats[3] =
			party_records[actor->target_unit].stat[5];
		aztec_movmem(party_records[actor->target_unit].resistance_rows.named.resist,
			battle_group_ext[0]->resistance, 14);
		aztec_movmem(party_records[actor->target_unit].armor_class,
			battle_group_ext[0]->armor_class, 8);
		for (action_message = 0; action_message < 8; action_message++)
			if (action_message != 1 && action_message != 2)
				battle_group_ext[0]->armor_class[action_message] +=
					battle_group_ext[0]->armor_class[2] + battle_group_ext[0]->armor_class[1];
		battle_group_ext[0]->speed_bonus =
			party_records[actor->target_unit].speed_plus_level;
		battle_group_ext[0]->attack_count =
			party_records[actor->target_unit].attacks_per_round;
		battle_group_ext[0]->max_hits =
			party_records[actor->target_unit].adjusted_stat4;
		battle_group_ext[0]->gender = party_records[actor->target_unit].gender;
		battle_group_ext[0]->creature_class =
			party_records[actor->target_unit].profession;
	}
	switch (actor->action_kind) {
case 0:
		if (battle_groups[actor->target_group]->unit[actor->target_unit].state < 3 &&
			battle_groups[actor->target_group]->unit[actor->target_unit].phase == 0) {
			attack_slot = *(&actor->primary_attack + actor->attack_cycle % 2);
			if (acting_group == 0
				&& party_records[acting_unit].equipped[attack_slot] == 255)
				attack_slot = 0;
			attack_mode = *(&actor->primary_action + actor->attack_cycle % 2);
			wait_for_combat_input(4);
			resolve_combatant_attack(actor, attack_slot, attack_mode);
			if (attack_mode == 3)
				subtract_combatant_stamina(actor, random_below(8) + 5);
			else if (attack_mode == 6)
				subtract_combatant_stamina(actor, random_below(4) + 3);
			else
				subtract_combatant_stamina(actor, random_below(3) + 2);
		}
		break;

case 3:
		wait_for_combat_input(4);
		subtract_combatant_stamina(actor, cast_combat_spell(actor));
		break;

case 5:
		wait_for_combat_input(4);
		subtract_combatant_stamina(actor, resolve_monster_special_attack(actor));
		break;

case 1:
		if (actor->primary_action == 3) {
			action_message = ((long)actor->stamina_max * 5L) / 100L;
			actor->stamina += random_below(action_message) + 1;
			if (actor->stamina > actor->stamina_max)
				actor->stamina = actor->stamina_max;
		}
		break;

case 8:
		wait_for_combat_input(4);
		show_equipment_change_message();
		subtract_combatant_stamina(actor, random_below(4) + 3);
		run_combat_screen_animation();
		redraw_glyph_strip(0);
		game_state = 17;
		party_return_state = 13;
		member_roster_index = acting_unit;
		return;

case 4:
		wait_for_combat_input(4);
		resolve_combat_item_action(actor);
		subtract_combatant_stamina(actor, random_below(3) + 1);
		break;

case 7:
		wait_for_combat_input(4);
		move_party_member_in_formation(acting_unit, actor->primary_action);
		subtract_combatant_stamina(actor, random_below(4) + 3);
		break;

case 2:
		wait_for_combat_input(4);
		attempt_combatant_hiding(actor);
		subtract_combatant_stamina(actor, random_below(3) + 1);
		break;

case 6:
		wait_for_combat_input(4);
		attempt_combatant_flee(actor);
		subtract_combatant_stamina(actor, random_below(5) + 5);
		break;

	}

	if (acting_group == 0)
		sync_member_party_panel(acting_unit, 0);
}
