/* Run one combat round: count 100 ticks down, giving each combatant its
   turns, blinking units out and in, and striking with delayed clouds. */
#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern int acting_group, acting_unit, dest_alt_arg, game_state;
extern int party_redraw_interval;
extern int cell_effect_frame[3][3];
extern int startup_option;
extern int play_sound_effect();
extern int redraw_glyph_strip();
extern int wait_for_combat_input();
extern int show_combat_action_text();
extern int sync_member_party_panel();
extern int random_below();
extern int resolve_combatant_turn();
extern int step_combat_screen_animation();
extern int run_combat_screen_animation();
extern int display_combat_action_and_wait();
extern int damage_unit_range();
extern int drain_combatant_stamina();
extern int damage_range_with_status();
extern int apply_status_to_group_units();

run_combat_round()
{
	int row;
	int column;
	struct combatant *combatant;
	int cloud_index;
	int effect_power;
	int screen_has_effect;

	party_redraw_interval = 5;
	for (row = 0; row < 3; row++)
		for (column = 0; column < 3; column++)
			cell_effect_frame[row][column] = -1;

	if (battle_group_ext[1]->sound_id > 0)
		play_sound_effect(16);

	dest_alt_arg = 100;
	do {
		for (acting_group = 0; acting_group < 7; acting_group++) {
			for (acting_unit = 0;
			     acting_unit < battle_groups[acting_group]->unit_count;
			     acting_unit++) {
				combatant = &battle_groups[acting_group]->unit[acting_unit];
				if (combatant->countdown > 0 && combatant->state != 3 &&
				    combatant->countdown_roll == dest_alt_arg) {
					if (combatant->phase == 0) {
						if (combatant->action_speed[combatant->attack_cycle] !=
						    dest_alt_arg) {
							combatant->phase = 3;
							redraw_glyph_strip(1);
							wait_for_combat_input(4);
							show_combat_action_text(MSG_BLINKS_OUT, -1, 67, 0);
							if (acting_group == 0)
								sync_member_party_panel(acting_unit, 0);
							wait_for_combat_input(startup_option);
						}
						effect_power = dest_alt_arg - random_below(10) - 5;
						if (effect_power < 1)
							effect_power = 1;
						combatant->countdown_roll = effect_power;
					} else if (combatant->phase == 3) {
						combatant->phase = 0;
						combatant->countdown_roll = 0;
						redraw_glyph_strip(1);
						wait_for_combat_input(4);
						show_combat_action_text(MSG_BLINKS_IN, -1, 67);
						if (acting_group == 0)
							sync_member_party_panel(acting_unit, 0);
						wait_for_combat_input(startup_option);
					}
				}

				if (combatant->action_speed[combatant->attack_cycle] ==
					    dest_alt_arg) {
						if (combatant->countdown > 0 &&
						    combatant->phase == 3 && combatant->state != 3) {
							combatant->phase = 0;
							combatant->countdown_roll = 0;
							redraw_glyph_strip(1);
							wait_for_combat_input(4);
							show_combat_action_text(MSG_BLINKS_IN, -1, 67);
							if (acting_group == 0)
								sync_member_party_panel(acting_unit, 0);
							wait_for_combat_input(startup_option);
						}
						resolve_combatant_turn();
						combatant->attack_cycle++;
						if (game_state != 13)
							return;
					} else if (combatant->action_speed[combatant->attack_cycle] == 0)
						combatant->attack_cycle++;

				if (combatant->attack_cycle > 3)
					combatant->attack_cycle = 3;
			}

		if (battle_groups[acting_group]->unit_count > 0) {
			for (cloud_index = 0; cloud_index < 6; cloud_index++) {
				effect_power = battle_groups[acting_group]->cloud_power[cloud_index];
				if (battle_groups[acting_group]->cloud_tick[cloud_index] ==
				    dest_alt_arg && effect_power > 0) {
					redraw_glyph_strip(1);
					wait_for_combat_input(4);
					switch (cloud_index) {
					case 0:
						display_combat_action_and_wait(MSG_FIRESTORM_3220, 67);
						damage_unit_range(acting_group, -10, 2, 4,
							effect_power, 1, 5 * effect_power + 25);
						break;
					case 4:
						display_combat_action_and_wait(MSG_DRAINING_CLOUD_3227, 67);
						drain_combatant_stamina(acting_group, -10, 2, 5,
							effect_power, 11, 5 * effect_power + 25);
						break;
					case 1:
						display_combat_action_and_wait(MSG_POISON_GAS_3221, 67);
						damage_range_with_status(acting_group, -10,
							MSG_POISONED_3477, 6, effect_power, 5 * effect_power + 25,
							1, 4, 5, 0, 10 * effect_power, 2, effect_power);
						break;
					case 2:
						display_combat_action_and_wait(MSG_TOXIC_VAPORS_3222, 67);
						damage_range_with_status(acting_group, -10,
							MSG_NAUSEOUS_3480, 5, effect_power, 5 * effect_power + 25,
							2, 3, 8, 0, effect_power, 4, effect_power);
						break;
					case 3:
						display_combat_action_and_wait(MSG_ACID_CLOUD, 67);
						damage_unit_range(acting_group, -10, 1, 6,
							effect_power, 8, 5 * effect_power + 25);
						break;
					case 5:
						display_combat_action_and_wait(MSG_DEATH_CLOUD_3228, 67);
						apply_status_to_group_units(acting_group,
							MSG_VANISHES_3497, 11, 3, 5 * effect_power + 25,
							1, effect_power, effect_power, effect_power);
						break;
					}
				}
			}
		}
		}

		step_combat_screen_animation();
	} while (--dest_alt_arg > 0);

	do {
		screen_has_effect = 0;
		for (row = 0; row < 3; row++)
			for (column = 0; column < 3; column++) {
				screen_has_effect |=
					cell_effect_frame[row][column] != -1 ? 1 : 0;
			}
		run_combat_screen_animation();
	} while (screen_has_effect != 0);
	game_state = 14;
}
