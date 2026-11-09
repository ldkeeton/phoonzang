/* Apply one combat spell effect to its target. */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "msg.h"
#include "structs/loadrec.h"
extern struct status_pair party_effects[];

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int acting_group, acting_unit;
extern int dest_alt_arg;
extern int combat_wait_occurred;
extern int startup_option;
extern int monster_group_count, current_level;
extern int spell_resistance_penetration();
extern void wait_for_combat_input();
extern int adjust_spell_value();
extern void animate_spell_at_target();
extern void apply_random_condition();
extern void damage_battle_side();
extern void damage_unit_range();
extern void apply_status_to_unit_range();
extern void damage_range_with_status();
extern int deal_resisted_damage();
extern void show_spell_effect_message();
extern void summon_monster_group();
extern int random_below();
extern int roll_resisted_amount();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int clamp_between();
extern void sync_member_party_panel();
extern void refresh_combat_glyph_strip();
extern void display_combat_message();
extern void apply_status_to_group_units();
extern void apply_status_to_battle_side();

apply_combat_spell_effect(caster, spell_id, spell_power)
struct combatant *caster;
int spell_id, spell_power;
{
	int unit_index;
	int adjusted_value;
	int span;
	int base;
	int target_group;
	int target_unit;
	int penetration;

	target_group = caster->target_group;
	target_unit = caster->target_unit;
	combat_wait_occurred = 0;
	penetration = spell_resistance_penetration(spell_id, spell_power) +
		(caster->level -
		 battle_groups[target_group]->unit[target_unit].level);
	switch (spell_id) {
	case 0:
		animate_spell_at_target(target_group, target_unit, 15, 1, 12);
		damage_unit_range(target_group, target_unit, 1, 7,
			spell_power, 1, penetration);
		break;
	case 1:
		animate_spell_at_target(target_group, target_unit, 22, 0, 10);
		apply_status_to_unit_range(target_group, 0 - (spell_power + 1),
			MSG_BLINDED_3476, 2, 4, penetration, 0, spell_power, 2, 0);
		break;
	case 2:
		animate_spell_at_target(target_group, 0, 8, 1, 11);
		damage_unit_range(target_group, 0 - (spell_power + 2),
			1, 8, spell_power, 1, penetration);
		break;
	case 3:
		animate_spell_at_target(target_group, 0, 8, 1, 11);
		damage_unit_range(target_group, 0 - (spell_power + 3),
			2, 5, spell_power, 1, penetration);
		break;
	case 4:
		battle_groups[acting_group]->ward[0] = adjust_spell_value(
			15 * spell_power,
			battle_groups[acting_group]->ward[0], 0);
		break;
	case 5:
		animate_spell_at_target(target_group, 0, 12, 1, 12);
		apply_random_condition(target_group, 0 - (spell_power + 1),
			spell_power, penetration);
		break;
	case 6:
		animate_spell_at_target(target_group, 0, 8, 1, 11);
		damage_unit_range(target_group, 0 - (spell_power + 4),
			3, 3, spell_power, 1, penetration);
		break;
	case 7:
		animate_spell_at_target(target_group, 0, 12, 1, 12);
		damage_unit_range(target_group, 0 - (spell_power + 3),
			1, 10, spell_power, 1, penetration);
		break;
	case 8:
		animate_spell_at_target(target_group, 0, 12, 1, 12);
		apply_random_condition(target_group, 0 - (spell_power + 3),
			spell_power, penetration);
		break;
	case 9:
		animate_spell_at_target(target_group, 0, 8, 1, 11);
		damage_unit_range(target_group, -10, 2, 4,
			spell_power, 1, penetration);
		unit_index = battle_groups[target_group]->cloud_power[0];
		if (unit_index < spell_power)
			unit_index = spell_power;
		battle_groups[target_group]->cloud_power[0] = unit_index + 1;
		battle_groups[target_group]->cloud_tick[0] = dest_alt_arg + 1;
		break;
	case 10:
		animate_spell_at_target(acting_group == 0 ? 1 : 0,
			0, 8, 1, 11);
		damage_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			5, 4, spell_power, 1, penetration);
		break;
	case 11:
		animate_spell_at_target(target_group, target_unit, 12, 1, 12);
		damage_unit_range(target_group, target_unit, 1, 6,
			spell_power, 3, penetration);
		break;
	case 13:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_status_to_unit_range(target_group, -10,
			MSG_FRIGHTENED_3473, 10, 1, penetration, 0,
			spell_power, 3, spell_power);
		break;
	case 14:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_battle_weakening_slowing(target_group,
			0 - (spell_power + 3), penetration, spell_power, 1);
		break;
	case 15:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_battle_weakening_slowing(target_group,
			0 - (spell_power + 3), penetration, spell_power, 0);
		break;
	case 16:
		for (unit_index = 0;
			unit_index < battle_groups[acting_group]->unit_count;
			unit_index++) {
			if (battle_groups[acting_group]->unit[unit_index].state < 3)
				battle_groups[acting_group]->unit[unit_index].speed_mod =
					adjust_spell_value(spell_power * 2,
					battle_groups[acting_group]->unit[unit_index].speed_mod,
					0);
		}
		break;
	case 18:
		battle_groups[acting_group]->ward[1] = adjust_spell_value(
			15 * spell_power, battle_groups[acting_group]->ward[1], 0);
		break;
	case 20:
		animate_spell_at_target(target_group, 0, 10, 1, 11);
		damage_unit_range(target_group, 0 - (spell_power + 4),
			3, 4, spell_power, 3, penetration);
		break;
	case 21:
		animate_spell_at_target(target_group, target_unit, 22, 0, 10);
		apply_status_to_unit_range(target_group, target_unit,
			MSG_PARALYZED_3475, 4, 3, penetration, 0,
			spell_power * 2, 1, spell_power);
		break;
	case 22:
		adjusted_value = (spell_power - 1) / 2 + 1;
		battle_groups[acting_group]->unit[target_unit].strike_mod =
			adjust_spell_value(spell_power,
			battle_groups[acting_group]->unit[target_unit].strike_mod, 0);
		battle_groups[acting_group]->unit[target_unit].reflex_mod =
			adjust_spell_value(adjusted_value,
			battle_groups[acting_group]->unit[target_unit].reflex_mod, 1);
		battle_groups[acting_group]->unit[target_unit].aim_mod =
			adjust_spell_value(adjusted_value,
			battle_groups[acting_group]->unit[target_unit].aim_mod, 1);
		battle_groups[acting_group]->unit[target_unit].speed_mod =
			adjust_spell_value(spell_power * 2,
			battle_groups[acting_group]->unit[target_unit].speed_mod, 0);
		break;
	case 23:
		animate_spell_at_target(target_group, target_unit, 10, 1, 11);
		damage_unit_range(target_group, target_unit, 3, 10,
			spell_power, 3, penetration);
		break;
	case 24:
		animate_spell_at_target(target_group, 0, 22, 1, 10);
		drain_combatant_stamina(target_group, -10, 2, 5,
			spell_power, 11, penetration);
		unit_index = battle_groups[target_group]->cloud_power[4];
		if (unit_index < spell_power)
			unit_index = spell_power;
		battle_groups[target_group]->cloud_power[4] = unit_index + 1;
		battle_groups[target_group]->cloud_tick[4] = dest_alt_arg + 1;
		break;
	case 26:
		animate_spell_at_target(target_group, target_unit, 23, 0, 6);
		damage_range_with_status(target_group, target_unit, MSG_POISONED_3477,
			6, spell_power, penetration, 1, 5, 5, 0,
			10 * spell_power, 2, spell_power);
		break;
	case 27:
		battle_groups[acting_group]->ward[2] = adjust_spell_value(
			15 * spell_power, battle_groups[acting_group]->ward[2], 0);
		break;
	case 28:
		animate_spell_at_target(target_group, 0, 14, 0, 12);
		damage_unit_range(target_group, -10, 1, 5,
			spell_power, 5, penetration);
		break;
	case 29:
		animate_spell_at_target(target_group, 0, 23, 1, 6);
		damage_range_with_status(target_group, -3, MSG_NAUSEOUS_3480,
			5, spell_power, penetration, 1, 6, 8, 0,
			spell_power, 4, spell_power);
		break;
	case 30:
		battle_groups[acting_group]->ward[3] = adjust_spell_value(
			15 * spell_power, battle_groups[acting_group]->ward[3], 0);
		break;
	case 31:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_status_to_unit_range(target_group, 0 - (spell_power + 3),
			MSG_SILENCED_3472, 12, 0, penetration, 0,
			spell_power, 2, 0);
		break;
	case 32:
		animate_spell_at_target(target_group, 0, 23, 0, 6);
		damage_range_with_status(target_group, -10, MSG_POISONED_3477,
			6, spell_power, penetration, 1, 4, 5, 0,
			10 * spell_power, 2, spell_power);
		unit_index = battle_groups[target_group]->cloud_power[1];
		if (unit_index < spell_power)
			unit_index = spell_power;
		battle_groups[target_group]->cloud_power[1] = unit_index + 1;
		battle_groups[target_group]->cloud_tick[1] = dest_alt_arg + 1;
		break;
	case 34:
		animate_spell_at_target(target_group, 0, 24, 0, 6);
		damage_unit_range(target_group, 0 - (spell_power + 3),
			1, 7, spell_power, 5, penetration);
		break;
	case 35:
		refresh_combat_glyph_strip(3, 3);
		display_combat_message(MSG_LETHAL_CLOUDS_REDUCED, 65, 3);
		wait_for_combat_input(startup_option);
		for (unit_index = 0; unit_index < 6; unit_index++) {
			adjusted_value = battle_groups[acting_group]->cloud_power[unit_index] -
				spell_power;
			if (adjusted_value < 0)
				adjusted_value = 0;
			battle_groups[acting_group]->cloud_power[unit_index] = adjusted_value;
		}
		if (battle_groups[acting_group]->ward[3] > 0) {
			adjusted_value = battle_groups[acting_group]->ward[3] -
				10 * spell_power;
			if (adjusted_value < 0)
				adjusted_value = 0;
			battle_groups[acting_group]->ward[3] = adjusted_value;
			refresh_combat_glyph_strip(3, 3);
			display_combat_message(adjusted_value == 0 ?
				MSG_AIR_BUBBLE_DESTROYED : MSG_AIR_BUBBLE_REDUCED,
				65, 3);
		}
		break;
	case 36:
		animate_spell_at_target(target_group, target_unit, 23, 0, 6);
		if (random_below(100) < 5 * spell_power)
			apply_status_to_unit_range(target_group, target_unit,
				MSG_WHITHERS_AND_DIES, 6, 3, penetration, 1, 0, 0, 0);
		else
			damage_range_with_status(target_group, target_unit,
				MSG_POISONED_3477, 6, spell_power, penetration,
				3, 5, 5, 0, 10 * spell_power, 4, 10 * spell_power);
		break;
	case 38:
		animate_spell_at_target(target_group, 0, 23, 0, 6);
		damage_range_with_status(target_group, -10, MSG_NAUSEOUS_3480,
			5, spell_power, penetration, 2, 3, 8, 0,
			spell_power, 4, spell_power);
		unit_index = battle_groups[target_group]->cloud_power[2];
		if (unit_index < spell_power)
			unit_index = spell_power;
		battle_groups[target_group]->cloud_power[2] = unit_index + 1;
		battle_groups[target_group]->cloud_tick[2] = dest_alt_arg + 1;
		break;
	case 39:
		animate_spell_at_target(target_group, 0, 23, 1, 6);
		damage_range_with_status(target_group, 0 - (spell_power + 3),
			MSG_NAUSEOUS_3480, 5, spell_power, penetration,
			1, 6, 8, 0, spell_power, 4, spell_power);
		break;
	case 40:
		animate_spell_at_target(target_group, 0, 23, 0, 6);
		apply_status_to_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			3490, 5, 3, penetration, 1,
			spell_power, spell_power, spell_power);
		break;
	case 41:
		animate_spell_at_target(acting_group == 0 ? 1 : 0,
			0, 23, 0, 6);
		damage_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			4, 4, spell_power, 5, penetration);
		break;
	case 42:
		animate_spell_at_target(target_group, 0, 23, 0, 6);
		apply_status_to_group_units(target_group, MSG_VANISHES_3497,
			11, 3, penetration, 1, spell_power, spell_power, spell_power);
		unit_index = battle_groups[target_group]->cloud_power[5];
		if (unit_index < spell_power)
			unit_index = spell_power;
		battle_groups[target_group]->cloud_power[5] = unit_index + 1;
		battle_groups[target_group]->cloud_tick[5] = dest_alt_arg + 1;
		break;
	case 43:
		animate_spell_at_target(target_group, target_unit, 23, 1, 6);
		damage_unit_range(target_group, target_unit, 1, 7,
			spell_power, 8, penetration);
		break;
	case 44:
		animate_spell_at_target(target_group, target_unit, 22, 0, 10);
		apply_status_to_unit_range(target_group, 0 - (spell_power + 2),
			MSG_IRRITATED, 8, 9, penetration, 0,
			spell_power, 2, spell_power);
		break;
	case 45:
		if (target_group == 0)
			show_spell_effect_message(target_group, target_unit, MSG_PROTECTED, 85);
		battle_groups[target_group]->unit[target_unit].reflex_mod =
			adjust_spell_value(spell_power,
			battle_groups[target_group]->unit[target_unit].reflex_mod, 1);
		break;
	case 48:
		animate_spell_at_target(target_group, 0, 21, 0, 6);
		damage_unit_range(target_group, 0 - (spell_power + 3),
			2, 4, spell_power, 7, penetration);
		break;
	case 50:
		animate_spell_at_target(target_group, target_unit, 12, 0, 12);
		apply_status_to_unit_range(target_group, target_unit,
			MSG_CAPTURED, 4, 3, penetration, 0, 2 * spell_power, 1,
			spell_power);
		break;
	case 51:
		animate_spell_at_target(target_group, 0, 16, 0, 6);
		damage_unit_range(target_group, -10, 1, 6,
			spell_power, 7, penetration);
		break;
	case 52:
		animate_spell_at_target(target_group, 0, 23, 1, 6);
		damage_unit_range(target_group, -10, 1, 6,
			spell_power, 8, penetration);
		unit_index = battle_groups[target_group]->cloud_power[3];
		if (unit_index < spell_power)
			unit_index = spell_power;
		battle_groups[target_group]->cloud_power[3] = unit_index + 1;
		battle_groups[target_group]->cloud_tick[3] = dest_alt_arg + 1;
		break;
	case 53:
		animate_spell_at_target(target_group, target_unit, 22, 1, 10);
		adjusted_value = roll_resisted_amount(target_group, spell_power, 0,
			penetration);
		for (unit_index = 0;
			unit_index < battle_groups[target_group]->unit_count;
			unit_index++)
			battle_groups[target_group]->unit[unit_index].reflex_mod =
				adjust_spell_value(adjusted_value,
				battle_groups[target_group]->unit[unit_index].reflex_mod, 0);
		break;
	case 54:
		animate_spell_at_target(target_group, target_unit, 22, 1, 10);
		damage_unit_range(target_group, target_unit, 6, 5,
			spell_power, 7, penetration);
		break;
	case 55:
		if (acting_group == 0 || acting_group == 6)
			summon_monster_group(212, 213, 214, 215, 216, 217,
				spell_power);
		else
			summon_monster_group(212, 213, 214, 215, 216, 217,
				spell_power);
		break;
	case 57:
		animate_spell_at_target(target_group, target_unit, 14, 1, 12);
		damage_range_with_status(target_group, target_unit,
			MSG_GOES_INSANE, 10, spell_power, penetration,
			1, 7, 7, 0, spell_power, 1, spell_power);
		break;
	case 58:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_status_to_unit_range(target_group, 0 - (spell_power + 3),
			MSG_FALLS_ASLEEP_3474, 9, 2, penetration, 0,
			spell_power, 2, 0);
		break;
	case 59:
		adjusted_value = (spell_power - 1) / 2 + 1;
		for (unit_index = 0;
			unit_index < battle_groups[acting_group]->unit_count;
			unit_index++) {
			battle_groups[acting_group]->unit[unit_index].reflex_mod =
				adjust_spell_value(adjusted_value,
				battle_groups[acting_group]->unit[unit_index].reflex_mod, 1);
			battle_groups[acting_group]->unit[unit_index].aim_mod =
				adjust_spell_value(adjusted_value,
				battle_groups[acting_group]->unit[unit_index].aim_mod, 1);
		}
		break;
	case 60:
		animate_spell_at_target(target_group, target_unit, 22, 0, 10);
		apply_status_to_unit_range(target_group, target_unit,
			MSG_BEHOLDEN, 9, 3, penetration, 0,
			2 * spell_power, 1, spell_power);
		break;
	case 64:
		for (unit_index = 1; unit_index <= monster_group_count; unit_index++) {
			if (random_below(100) <
				10 * spell_power + 80 - 5 * current_level)
				battle_groups[unit_index]->unidentified = 0;
		}
		break;
	case 67:
		animate_spell_at_target(target_group, target_unit, 22, 0, 10);
		apply_status_to_unit_range(target_group,
			0 - (spell_power + 3), MSG_HELD, 9, 3, penetration,
			0, spell_power, 2, 0);
		break;
	case 65:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_status_to_unit_range(target_group,
			0 - (spell_power + 1), MSG_BEWILDERED, 10, 7, penetration,
			0, spell_power, 2, 0);
		break;
	case 70:
		animate_spell_at_target(target_group, 0, 14, 1, 12);
		damage_range_with_status(target_group, 0 - (spell_power + 3),
			MSG_GOES_INSANE, 10, spell_power, penetration,
			1, 7, 7, 0, 2 * spell_power, 2, spell_power);
		break;
	case 71:
		if (acting_group == 0 || acting_group == 6)
			summon_monster_group(218, 219, 220, 221, 222, 223,
				spell_power);
		else
			summon_monster_group(218, 219, 220, 221, 222, 223,
				spell_power);
		break;
	case 73:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_status_to_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			3473, 10, 1, penetration, 0,
			spell_power, 3, spell_power);
		break;
	case 74:
		animate_spell_at_target(target_group, target_unit, 14, 0, 12);
		apply_status_to_unit_range(target_group, target_unit,
			MSG_SLAIN_3482, 11, 3, penetration - 35,
			1, 0, 0, 0);
		break;
	case 76:
		animate_spell_at_target(target_group, 0, 14, 1, 12);
		damage_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			4, 4, spell_power, 10, penetration);
		break;
	case 79:
		animate_spell_at_target(target_group, target_unit, 12, 1, 12);
		damage_unit_range(target_group, target_unit, 1, 8,
			spell_power, 12, penetration);
		break;
	case 80:
		animate_spell_at_target(target_group, 0, 12, 1, 12);
		damage_unit_range(target_group,
			0 - (spell_power + 2), 1, 7, spell_power, 12, penetration);
		break;
	case 81:
		animate_spell_at_target(target_group, 0, 22, 1, 10);
		if (battle_group_ext[target_group]->creature_class != 20)
			penetration = -100;
		else
			penetration += 3 *
				(caster->level -
				 battle_groups[target_group]->unit[target_unit].level);
		apply_status_to_unit_range(target_group, 0 - spell_power,
			MSG_DISPELLED, 11, 3, penetration, 1, 0, 0, 0);
		break;
	case 83:
		if (battle_groups[acting_group]->unit[acting_unit].countdown == 0)
			battle_groups[acting_group]->unit[acting_unit].countdown_roll =
				random_below(dest_alt_arg / 2) + dest_alt_arg / 2;
		battle_groups[acting_group]->unit[acting_unit].countdown +=
			3 * spell_power;
		break;
	case 85:
		if (acting_group == 0 || acting_group == 6) {
			if (random_below(2) == 0)
				summon_monster_group(200, 201, 202, 203, 204, 205,
					spell_power);
			else
				summon_monster_group(206, 207, 208, 209, 210, 211,
					spell_power);
		} else {
			if (random_below(2) == 0)
				summon_monster_group(200, 201, 202, 203, 204, 205,
					spell_power);
			else
				summon_monster_group(206, 207, 208, 209, 210, 211,
					spell_power);
		}
		break;
	case 86:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		battle_groups[target_group]->ward[5] = adjust_spell_value(
			2 * spell_power, battle_groups[target_group]->ward[5], 0);
		break;
	case 90:
		animate_spell_at_target(target_group, 0, 22, 1, 10);
		if (battle_group_ext[target_group]->creature_class != 21)
			penetration = -100;
		else
			penetration += 3 *
				(caster->level -
				 battle_groups[target_group]->unit[target_unit].level);
		apply_status_to_unit_range(target_group, 0 - spell_power,
			MSG_VANISHES_3497, 11, 3, penetration, 1, 0, 0, 0);
		break;
	case 91:
		animate_spell_at_target(target_group, target_unit, 12, 1, 12);
		if (battle_group_ext[target_group]->creature_class != 20)
			penetration = -100;
		else
			penetration += 3 *
				(caster->level -
				 battle_groups[target_group]->unit[target_unit].level);
		damage_unit_range(target_group, target_unit, 7, 7,
			spell_power, 12, penetration);
		break;
	case 93:
		animate_spell_at_target(target_group, 0, 12, 0, 12);
		damage_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			4, 4, spell_power, 11, penetration);
		break;
	case 95:
		animate_spell_at_target(target_group, 0, 14, 0, 12);
		apply_status_to_battle_side((acting_group == 0 ||
			acting_group == 6) ? 1 : 0,
			3486, 11, 3, penetration, 1,
			spell_power, spell_power, spell_power);
		break;
	case 96:
		animate_spell_at_target(target_group, target_unit, 22, 0, 10);
		if (battle_group_ext[target_group]->creature_class != 20 &&
			battle_group_ext[target_group]->creature_class != 21)
			penetration = -100;
		adjusted_value = (long)battle_groups[target_group]->unit[target_unit].hp *
			8L / battle_groups[target_group]->unit[target_unit].hp_max;
		if (adjusted_value < 2)
			adjusted_value = 2;
		damage_unit_range(target_group, target_unit, 1,
			adjusted_value, spell_power, 0, penetration);
		break;
	case 56:
		if (target_group == 0 &&
			battle_groups[target_group]->unit[target_unit].state == 2 &&
			3 * spell_power > 21 - party_records[target_unit].stat[3]) {
			party_records[target_unit].stat[3]--;
			party_records[target_unit].age_days += random_below(183) + 183;
			if (random_below(18) > party_records[target_unit].stat[3]) {
				battle_groups[target_group]->unit[target_unit].state = 3;
				battle_groups[target_group]->unit[target_unit].hp = 0;
				battle_groups[target_group]->unit[target_unit].stamina = 0;
			} else {
				battle_groups[target_group]->unit[target_unit].state = 0;
				show_spell_effect_message(target_group, target_unit, MSG_REVIVED, 85);
			}
			sync_member_party_panel(target_unit, 0);
		}
		break;
	case 94:
		if (target_group == 0 &&
			battle_groups[target_group]->unit[target_unit].state == 3 &&
			3 * spell_power > 21 - party_records[target_unit].stat[3]) {
			party_records[target_unit].stat[3]--;
			battle_groups[target_group]->unit[target_unit].state = 0;
			battle_groups[target_group]->unit[target_unit].hp = clamp_between(
				battle_groups[target_group]->unit[target_unit].hp_max / 3, 1,
				battle_groups[target_group]->unit[target_unit].hp_max);
			battle_groups[target_group]->unit[target_unit].stamina =
				battle_groups[target_group]->unit[target_unit].stamina_max / 10;
			party_records[target_unit].deaths++;
			party_records[target_unit].age_days += random_below(183) + 365;
			sync_member_party_panel(target_unit, 0);
			show_spell_effect_message(target_group, target_unit, MSG_LIVES, 85);
		}
		break;
	case 12:
	case 19:
		unit_index = spell_id != 19 ? target_unit : 0;
		adjusted_value = spell_id != 19 ? target_unit + 1 :
			battle_groups[target_group]->unit_count;
		span = spell_id != 19 ? spell_power * 2 : spell_power;
		base = spell_id != 19 ? spell_power : 0;
		for (; unit_index < adjusted_value; unit_index++) {
			battle_groups[target_group]->unit[unit_index].stamina =
				clamp_between(
				battle_groups[target_group]->unit[unit_index].stamina +
				add_random_steps(*store_word_and_pair(span, 8, base)),
				0,
				battle_groups[target_group]->unit[unit_index].stamina_max);
			if (target_group == 0) {
				sync_member_party_panel(unit_index, 0);
				if (spell_id != 19)
					show_spell_effect_message(target_group, target_unit,
						MSG_REPLENISHED, 85);
			}
		}
		break;
	case 17:
		unit_index = battle_groups[target_group]->unit[target_unit].status[3]
			- 25 * spell_power;
		if (unit_index < 0)
			unit_index = 0;
		battle_groups[target_group]->unit[target_unit].status[3] = unit_index;
		if (target_group == 0)
			sync_member_party_panel(target_unit, 0);
		break;
	case 33:
		unit_index = battle_groups[target_group]->unit[target_unit].poison_strength
			- spell_power;
		if (unit_index <= 0) {
			unit_index = 0;
			battle_groups[target_group]->unit[target_unit].status[5] = 0;
		}
		battle_groups[target_group]->unit[target_unit].poison_strength = unit_index;
		unit_index = battle_groups[target_group]->unit[target_unit].status[5]
			- 5 * spell_power;
		if (unit_index <= 0) {
			unit_index = 0;
			battle_groups[target_group]->unit[target_unit].poison_strength = 0;
		}
		battle_groups[target_group]->unit[target_unit].status[5] = unit_index;
		if (target_group == 0)
			sync_member_party_panel(target_unit, 0);
		break;
	case 69:
		unit_index = battle_groups[target_group]->unit[target_unit].status[7]
			- 25 * spell_power;
		if (unit_index < 0)
			unit_index = 0;
		battle_groups[target_group]->unit[target_unit].status[7] = unit_index;
		if (target_group == 0)
			sync_member_party_panel(target_unit, 0);
		break;
	case 25:
		if (target_group == 0) {
			if (3 * spell_power > 18 - party_records[target_unit].stat[3])
				battle_groups[target_group]->unit[target_unit].status[6] = 0;
			sync_member_party_panel(target_unit, 0);
		}
		break;
	case 66:
		for (unit_index = 0;
			unit_index < battle_groups[target_group]->unit_count;
			unit_index++) {
			adjusted_value = battle_groups[target_group]->unit[unit_index].status[2]
				- (spell_power * spell_power + 4);
			if (adjusted_value < 0)
				adjusted_value = 0;
			battle_groups[target_group]->unit[unit_index].status[2] = adjusted_value;
		}
		break;
	case 61:
		for (adjusted_value = 1; adjusted_value <= 9; adjusted_value++) {
			if (adjusted_value == 1 || adjusted_value == 2 ||
				adjusted_value == 4 || adjusted_value == 8 ||
				adjusted_value == 9) {
				unit_index =
					battle_groups[target_group]->unit[target_unit].status[adjusted_value]
					- (spell_power * spell_power + 4);
				if (unit_index < 0)
					unit_index = 0;
				battle_groups[target_group]->unit[target_unit].status[adjusted_value] =
					unit_index;
			}
		}
		if (target_group == 0)
			sync_member_party_panel(target_unit, 0);
		break;
	case 89:
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		unit_index = deal_resisted_damage(target_group, target_unit,
			4 * spell_power, 4, 4 * spell_power, 11, penetration);
		if (target_group == 0)
			sync_member_party_panel(target_unit, 0);
		target_group = acting_group;
		target_unit = acting_unit;
		spell_power = unit_index / 7;
		if (spell_power < 1)
			break;
		refresh_combat_glyph_strip(2, 4);
		/* Fall through to the single member healing effect. */
	case 78:
	case 88:
		unit_index = spell_id != 88 ? target_unit : 0;
		adjusted_value = spell_id != 88 ? target_unit + 1 :
			battle_groups[target_group]->unit_count;
		span = spell_id != 88 ? 7 : 4;
		base = spell_id != 88 ? spell_power : 0;
		for (; unit_index < adjusted_value; unit_index++) {
			battle_groups[target_group]->unit[unit_index].hp = clamp_between(
				battle_groups[target_group]->unit[unit_index].hp +
				add_random_steps(*store_word_and_pair(
					spell_power, span, base)),
				0, battle_groups[target_group]->unit[unit_index].hp_max);
			if (target_group == 0) {
				party_records[unit_index].age_days++;
				sync_member_party_panel(unit_index, 0);
			}
			if (spell_id != 88)
				show_spell_effect_message(target_group, target_unit, MSG_HEALED, 85);
		}
		break;
	case 97:
		battle_groups[acting_group]->unit[acting_unit].stamina =
			clamp_between(
			battle_groups[acting_group]->unit[acting_unit].stamina +
			add_random_steps(*store_word_and_pair(
				spell_power, 8, spell_power)),
			0,
			battle_groups[acting_group]->unit[acting_unit].stamina_max);
		battle_groups[acting_group]->unit[acting_unit].hp = clamp_between(
			battle_groups[acting_group]->unit[acting_unit].hp +
			add_random_steps(*store_word_and_pair(spell_power, 2, 0)),
			0, battle_groups[acting_group]->unit[acting_unit].hp_max);
		if (acting_group == 0)
			sync_member_party_panel(acting_unit, 0);
		break;
	case 98:
		if (acting_group == 0)
			for (unit_index = 0; unit_index < 6; unit_index++) {
				adjusted_value = add_random_steps(
					*store_word_and_pair(spell_power, 10, 0));
				party_records[acting_unit].realm_points[unit_index][0] +=
					adjusted_value;
				if (party_records[acting_unit].realm_points[unit_index][0] >
					party_records[acting_unit].realm_points[unit_index][1])
					party_records[acting_unit].realm_points[unit_index][0] =
						party_records[acting_unit].realm_points[unit_index][1];
			}
		break;
	case 100:
		for (span = 0;
			span < battle_groups[acting_group]->unit_count; span++) {
			battle_groups[acting_group]->unit[span].state = 0;
			battle_groups[acting_group]->unit[span].stamina =
				battle_groups[acting_group]->unit[span].stamina_max;
			battle_groups[acting_group]->unit[span].hp =
				battle_groups[acting_group]->unit[span].hp_max;
			for (adjusted_value = 0; adjusted_value < 10; adjusted_value++)
				battle_groups[acting_group]->unit[span].status[adjusted_value] = 0;
			if (acting_group == 0) {
				for (unit_index = 0; unit_index < 6; unit_index++)
					party_records[span].realm_points[unit_index][0] =
						party_records[span].realm_points[unit_index][1];
				if (party_records[span].stat[3] < 1)
					party_records[span].stat[3] = 1;
				refresh_combat_glyph_strip(2, 4);
				sync_member_party_panel(span, 0);
				show_spell_effect_message(acting_group, span,
					MSG_RECEIVES_THE_BLESSING, 85);
			}
		}
		break;
	case 101:
		battle_groups[acting_group]->unit[acting_unit].phase = 1;
		if (acting_group == 0) {
			sync_member_party_panel(acting_unit, 0);
			show_spell_effect_message(acting_group, acting_unit, MSG_TURNS_INVISIBLE,
				85);
		}
		break;
	case 63:
		party_effects[PARTY_EFFECT_DETECTION].timer +=
			50 * spell_power;
		party_effects[PARTY_EFFECT_DETECTION].strength =
			adjust_spell_value(
			5 * spell_power + 70,
				party_effects[PARTY_EFFECT_DETECTION].strength,
				0);
		break;
	case 82:
		party_effects[PARTY_EFFECT_EVADE].timer += 35 * spell_power;
		party_effects[PARTY_EFFECT_EVADE].strength =
			adjust_spell_value(
			(spell_power - 1) / 2 + 1,
				party_effects[PARTY_EFFECT_EVADE].strength, 0);
		break;
	case 49:
		party_effects[PARTY_EFFECT_SPELL_49].timer +=
			50 * spell_power;
		party_effects[PARTY_EFFECT_SPELL_49].strength =
			adjust_spell_value(
			(spell_power - 1) / 2 + 1,
				party_effects[PARTY_EFFECT_SPELL_49].strength,
				0);
		break;
	case 37:
		party_effects[PARTY_EFFECT_LEVITATION].timer +=
			5 * spell_power;
		break;
	case 46:
		party_effects[PARTY_EFFECT_COMPASS].timer +=
			100 * spell_power;
		break;
	case 84:
		battle_groups[acting_group]->ward[4] = adjust_spell_value(
			10 * spell_power,
			battle_groups[acting_group]->ward[4], 0);
		if (acting_group == 0) {
			party_effects[PARTY_EFFECT_WARD].timer +=
				50 * spell_power;
			party_effects[PARTY_EFFECT_WARD].strength =
				adjust_spell_value(
				10 * spell_power,
					party_effects[PARTY_EFFECT_WARD].strength, 0);
		}
		break;
	}
	if (combat_wait_occurred == 0)
		wait_for_combat_input(startup_option);
}
