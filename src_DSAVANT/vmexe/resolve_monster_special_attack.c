/* Resolves a monster special attack and applies its combat effects. */
#include "structs/member.h"
#include "msg.h"

extern int combat_wait_occurred;
extern int combat_effect_sound;
extern int startup_option;
extern int random_below();
extern int show_combat_action_text();
extern int animate_spell_at_target();
extern int damage_unit_range();
extern int apply_status_to_unit_range();
extern void damage_range_with_status();
extern int wait_for_combat_input();

resolve_monster_special_attack(attacker)
struct combatant *attacker;
{
	int target_group;
	int target_unit;
	int target_count;
	int resistance_floor;
	int index;
	int action_parameter;
	int stamina_cost;

	combat_wait_occurred = 0;
	target_group = attacker->target_group;
	target_unit = attacker->target_unit;
	target_count = 1;
	for (index = 0; index < 6; index++) {
		if (25 + 25 * index < attacker->hp)
			target_count++;
	}
	/* Number of targets scales with the attacker's current stamina. */
	target_count = (int)(((long)target_count * attacker->stamina) /
		attacker->stamina_max) + 1;
	if (target_count < 1)
		target_count = 1;
	if (target_count > 6)
		target_count = 6;
	resistance_floor = target_count * 4;
	stamina_cost = 0;
	switch (attacker->primary_action) {
	case 1:
		show_combat_action_text(MSG_BREATHES, MSG_FIRE_3700, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 8, 1, 11);
		damage_unit_range(target_group, 0 - target_count, 2, 5,
			target_count, 1, resistance_floor);
		stamina_cost = random_below(4) + attacker->stamina_max / 6;
		break;
	case 2:
		show_combat_action_text(MSG_SQUIRTS, MSG_BURNING_POLLEN, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 22, 0, combat_effect_sound);
		apply_status_to_unit_range(target_group, 0 - target_count,
			MSG_IRRITATED, 8, 9, resistance_floor, 0, target_count,
			2, target_count);
		stamina_cost = random_below(4) + attacker->stamina_max / 8;
		break;
	case 3:
		show_combat_action_text(MSG_BREATHES, MSG_ICY_FROST, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 10, 1, 11);
		damage_unit_range(target_group, 0 - target_count, 3, 4,
			target_count, 3, resistance_floor);
		stamina_cost = random_below(4) + attacker->stamina_max / 6;
		break;
	case 8:
		show_combat_action_text(MSG_BREATHES, MSG_ACID_SPRAY, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 23, 1, combat_effect_sound);
		damage_unit_range(target_group, 0 - target_count, 1, 7,
			target_count, 8, resistance_floor);
		stamina_cost = random_below(6) + attacker->stamina_max / 4;
		break;
	case 10:
		if (show_combat_action_text(MSG_SCREAMS, -1, 67,
			attacker->status[0] > 0 ? 1 : 0, 1) == 0) {
			animate_spell_at_target(target_group, 0, 14, 0,
				combat_effect_sound);
			damage_range_with_status(target_group, 0 - (target_count + 1),
				MSG_GOES_INSANE, 10, target_count, resistance_floor,
				1, 4, 7, 0, target_count * 10, 2,
				target_count * 10);
		}
		stamina_cost = random_below(4) + attacker->stamina_max / 10;
		break;
	case 12:
		break;
	case 4:
		show_combat_action_text(MSG_INVOKES_3343, MSG_DEMON_POWER, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 14, 0, combat_effect_sound);
		apply_status_to_unit_range(target_group, 0 - target_count,
			MSG_PARALYZED_3475, 4, 3, resistance_floor, 0,
			target_count * 2, 1, target_count);
		stamina_cost = random_below(4) + attacker->stamina_max / 10;
		break;
	case 5:
		show_combat_action_text(MSG_SPITS, MSG_HORRID_BILE, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 23, 0, combat_effect_sound);
		damage_range_with_status(target_group, 0 - (target_count + 1),
			MSG_NAUSEOUS_3480,
			5, target_count, resistance_floor, 1, 6, 8, 0,
			target_count, 4, target_count);
		stamina_cost = random_below(4) + attacker->stamina_max / 6;
		break;
	case 6:
		show_combat_action_text(MSG_BREATHES, MSG_POISON_3706, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 23, 0, combat_effect_sound);
		damage_range_with_status(target_group, 0 - target_count, MSG_POISONED_3477,
			6, target_count, resistance_floor, 1, 5, 5, 0,
			target_count * 10, 2, target_count);
		stamina_cost = random_below(3) + attacker->stamina_max / 8;
		break;
	case 7:
		show_combat_action_text(MSG_VOMITS, MSG_PUTRID_BILE, 67, 0, 1);
		animate_spell_at_target(target_group, 0, 23, 0, combat_effect_sound);
		damage_range_with_status(target_group, 0 - target_count, MSG_DISEASED_3498,
			7, target_count, resistance_floor, 1, 7, 6, 0,
			1, 1, 255);
		stamina_cost = random_below(5) + attacker->stamina_max / 6;
		break;
	case 9:
		show_combat_action_text(MSG_EMITS, MSG_GLOWING_AURA, 67, 0, 0);
		animate_spell_at_target(target_group, 0, 22, 0, 10);
		apply_status_to_unit_range(target_group, 0 - (target_count + 1),
			MSG_FALLS_ASLEEP_3474, 9, 2, resistance_floor, 0,
			target_count, 2, target_count);
		stamina_cost = random_below(3) + attacker->stamina_max / 10;
		break;
	case 11:
		if (show_combat_action_text(MSG_CRIES, -1, 67,
			attacker->status[0] > 0 ? 1 : 0, 1) == 0) {
			animate_spell_at_target(target_group, 0, 14, 0,
				combat_effect_sound);
			apply_status_to_unit_range(target_group, -10,
				MSG_FRIGHTENED_3473, 10, 1, resistance_floor, 0,
				target_count, 1, target_count);
		}
		stamina_cost = random_below(3) + attacker->stamina_max / 8;
		break;
	}
	if (combat_wait_occurred == 0)
		wait_for_combat_input(startup_option);
	return stamina_cost;
}
