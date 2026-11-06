/* Applies a resisted weakening or slowing effect to selected combatants. */
#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int select_battle_unit_range();
extern int combatant_evades_targeting();
extern int refresh_combat_glyph_strip();
extern int copy_combatant_name();
extern int draw_centered_menu_text_row();
extern int roll_resisted_amount();
extern int random_below();
extern int adjust_spell_value();
extern int display_combat_message();
extern int sync_member_party_panel();
extern int wait_for_combat_input();
extern int startup_option;
extern char combat_action_name_buffer[];

apply_battle_weakening_slowing(group, unit_or_count, resistance_floor,
	amount, weaken)
int group, unit_or_count, resistance_floor, amount, weaken;
{
	int unit_index;
	int new_level;
	int effect_amount;
	int unused_value;
	int selected_unit;
	int selected_count;
	int speed_index;
	int message_id;

	select_battle_unit_range(group, unit_or_count, &selected_unit,
		&selected_count);
	unit_index = selected_unit;
	for (; selected_unit + selected_count > unit_index; unit_index++) {
		if (battle_groups[group]->unit[unit_index].state >= 3)
			continue;
		if (combatant_evades_targeting(group, unit_index))
			continue;

		refresh_combat_glyph_strip(2, 4);
		copy_combatant_name(combat_action_name_buffer, group, unit_index);
		draw_centered_menu_text_row(combat_action_name_buffer,
			group == 0 ? 1 : 67, 2);
		effect_amount = roll_resisted_amount(group, amount, 3,
			resistance_floor);
		if (effect_amount > 0 && random_below(100) >
			battle_group_ext[group]->resistance[3] - resistance_floor) {
		if (weaken == 1) {
			battle_groups[group]->unit[unit_index].strike_mod =
				adjust_spell_value((effect_amount - 1) / 2 + 1,
					battle_groups[group]->unit[unit_index].strike_mod, 1);
			battle_groups[group]->unit[unit_index].aim_mod =
				adjust_spell_value((effect_amount - 1) / 2 + 1,
						battle_groups[group]->unit[unit_index].aim_mod, 0);
				new_level = battle_groups[group]->unit[unit_index].level -
				effect_amount;
			if (new_level < 1)
				new_level = 1;
				battle_groups[group]->unit[unit_index].level = new_level;
			message_id = 3491;
		} else {
			battle_groups[group]->unit[unit_index].speed_mod =
				adjust_spell_value(3 * effect_amount,
					battle_groups[group]->unit[unit_index].speed_mod, 1);
			for (speed_index = 0; speed_index < 4; speed_index++)
				battle_groups[group]->unit[unit_index]
					.action_speed[speed_index] /= 2;
			if (battle_groups[group]->unit[unit_index].speed_mod < 0) {
				speed_index = (battle_groups[group]->unit[unit_index]
					.speed_mod < 0 ? -battle_groups[group]->unit[unit_index]
					.speed_mod : battle_groups[group]->unit[unit_index]
					.speed_mod) / 10;
				if (speed_index > 3)
					speed_index = 3;
				while (speed_index > 0) {
					battle_groups[group]->unit[unit_index]
						.action_speed[4 - speed_index] = 0;
					speed_index--;
				}
			}
			message_id = 3494;
		}
		display_combat_message(message_id, 65, 3);
		if (group == 0)
			sync_member_party_panel(unit_index, 0);
		wait_for_combat_input(startup_option);
		} else {
			display_combat_message(MSG_UNAFFECTED_3471, 65, 3);
			wait_for_combat_input(startup_option);
		}
	}
}
