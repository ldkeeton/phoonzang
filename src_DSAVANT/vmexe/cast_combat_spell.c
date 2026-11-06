/* Cast a combat spell, resolve failure, and charge its realm points. */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern int realm_point_text_colors[6][2];
extern int acting_group, acting_unit, party_char_count;
extern int spell_backfired, startup_option;
extern char difficulty_option;
extern int spell_cast_failed;
extern char combat_action_suffix_buffer[];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern int copy_combatant_name();
extern int load_message_string();
extern int draw_centered_text_fragments();
extern int random_below();
extern int try_raise_member_skill();
extern int wait_for_combat_input();
extern int display_combat_message();
extern int apply_combat_spell_effect();

cast_combat_spell(caster)
struct combatant *caster;
{
	int unused;
	int spell_power;
	int spell_id;
	int action_target_group;
	int action_target_unit;
	int can_be_silenced;
	int success_chance;
	battle_groups[0]->unit_count = party_char_count;
	action_target_group = caster->target_group;
	action_target_unit = caster->target_unit;
	spell_power = (int)caster->primary_action / 256;
	spell_id = (int)caster->primary_action % 256;

	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	load_message_string(MSG_CASTS_3308, combat_action_message_buffer);
	load_message_string(MSG_SPELL_NAME_BASE + spell_id,
		combat_action_suffix_buffer);
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		acting_group == 0 ? 1 : 67, 67,
		realm_point_text_colors[
			spell_table->spell[spell_id].realm_level.bytes.realm][0]);
	spell_backfired = 0;
	spell_cast_failed = 0;
	if (random_below(battle_groups[acting_group]->ward[5] + caster->level + 1) <
		battle_groups[acting_group]->ward[5])
		spell_cast_failed = 1;

	if (acting_group == 0) {
		if (party_records[acting_unit].profession == 5 ||
			party_records[acting_unit].profession == 4 ||
			party_records[acting_unit].profession == 13) {
		success_chance = 90 +
				party_records[acting_unit].skills[29] / 3 -
				spell_table->spell[spell_id].realm_level.bytes.level * spell_power;
		} else {
			success_chance = 90 +
				party_records[acting_unit].skills[14] / 3 -
				spell_table->spell[spell_id].realm_level.bytes.level * spell_power;
			try_raise_member_skill(acting_unit, 14, 2);
		}
		if (random_below(100) > success_chance) {
			if (difficulty_option != 1 &&
				random_below(36) >
					party_records[acting_unit].stat[7] + 18) {
				spell_cast_failed = 0;
				spell_backfired = 1;
			} else
				spell_cast_failed = 1;
		}
	} else {
		success_chance = 88 +
			battle_groups[acting_group]->unit[acting_unit].level * 3 -
			spell_table->spell[spell_id].realm_level.bytes.level * spell_power;
		if (random_below(100) > success_chance) {
			if (difficulty_option != 2 && random_below(7) == 0) {
				spell_cast_failed = 0;
				spell_backfired = 1;
			} else
				spell_cast_failed = 1;
		}
	}

	can_be_silenced = 1;
	if (acting_group == 0) {
		if (party_records[acting_unit].profession == 5 ||
			party_records[acting_unit].profession == 4 ||
			party_records[acting_unit].profession == 13)
			can_be_silenced = 0;
	} else if (battle_group_ext[acting_group]->creature_class == 5 ||
		battle_group_ext[acting_group]->creature_class == 4 ||
		battle_group_ext[acting_group]->creature_class == 13)
		can_be_silenced = 0;

	if (spell_backfired == 1 &&
		!(spell_table->spell[spell_id].cost_effect.bytes.f3 & 2)) {
		spell_backfired = 0;
		spell_cast_failed = 1;
	}
	if (spell_cast_failed == 1 &&
		!(spell_table->spell[spell_id].cost_effect.bytes.f3 & 1))
		spell_cast_failed = 0;

	if (can_be_silenced == 1 && caster->status[0] > 0) {
		wait_for_combat_input(4);
		display_combat_message(MSG_SILENCED_3200, 65, 2);
		wait_for_combat_input(startup_option);
	} else if (spell_cast_failed == 1) {
		wait_for_combat_input(4);
		display_combat_message(MSG_FIZZLE_3201, 65, 2);
		wait_for_combat_input(startup_option);
	} else {
		if (spell_backfired == 1) {
			wait_for_combat_input(4);
			display_combat_message(MSG_BACKFIRE, 22, 2);
			wait_for_combat_input(startup_option);
			caster->target_group = acting_group;
			caster->target_unit = acting_unit;
		}
		apply_combat_spell_effect(caster, spell_id, spell_power);
	}

	if (acting_group == 0)
	party_records[acting_unit].realm_points[
		spell_table->spell[spell_id].realm_level.bytes.realm][0] -=
			spell_table->spell[spell_id].cost_effect.bytes.cost * spell_power;
	return random_below(spell_power) +
		spell_table->spell[spell_id].realm_level.bytes.level + spell_power;
}
