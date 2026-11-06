/* Applies secondary effects from a combat attack. */

#include "structs/member.h"
#include "structs/pcrec.h"
#include "structs/randstep.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int acting_group, combat_message_layout, startup_option;
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];
extern int random_below();
extern struct random_step_spec *store_word_and_pair();
extern int add_random_steps();
extern int apply_resisted_status_timer();
extern int set_resisted_combatant_state();
extern void subtract_combatant_stamina();
extern int copy_combatant_name();
extern int load_message_string();
extern int format_int_decimal();
extern int str_subst_char();
extern int refresh_combat_glyph_strip();
extern int draw_centered_text_fragments();
extern int play_sound_effect();
extern int sync_member_party_panel();
extern int wait_for_combat_input();
extern int display_combat_message();

apply_combat_attack_effects(attacker, attack, group, unit_index)
struct combatant *attacker;
struct pc_hand_attack *attack;
int group, unit_index;
{
	int effect_index;
	int level_advantage;
	int source_level;
	int amount;
	int message_id;

	combat_message_layout = 4;
	level_advantage = (attacker->level -
		battle_groups[group]->unit[unit_index].level) * 3;
	for (effect_index = 0; effect_index < 8; effect_index++) {
		if (random_below(100) < attack->hand_values[effect_index]) {
			source_level = attacker->level / 3 + 1;
			switch (effect_index) {
			case 0:
				apply_resisted_status_timer(group, unit_index,
					MSG_FALLS_ASLEEP_3474, 9, 2,
					level_advantage, source_level, 2, source_level,
					3408, 0);
				break;
			case 1:
				apply_resisted_status_timer(group, unit_index,
					MSG_PARALYZED_3475, 4, 3, level_advantage,
					source_level * source_level, 3,
					source_level, 3408, 0);
				break;
			case 2:
				apply_resisted_status_timer(group, unit_index,
					MSG_POISONED_3477, 6, 5, level_advantage,
					source_level * 10, 2,
					attack->hand_field0c, 3408, 0);
				break;
			case 3:
				set_resisted_combatant_state(group, unit_index,
					MSG_TURNS_TO_STONE_3485, 11, 2,
					level_advantage, 3408, 0);
				break;
			case 4:
				apply_resisted_status_timer(group, unit_index,
					MSG_DISEASED_3498, 7, 6, level_advantage,
					1, 1, 255, 3408, 0);
				break;
			case 5:
				if (acting_group == 0)
					battle_group_ext[acting_group]->drain_effect_kind = 3;
				amount = 0;
				switch (battle_group_ext[acting_group]->drain_effect_kind) {
				case 3:
					if (random_below(100) >
						battle_group_ext[group]->resistance[11]) {
						amount = add_random_steps(*store_word_and_pair(
							2 * source_level, 5, 3 * source_level));
						subtract_combatant_stamina(
							&battle_groups[group]->unit[unit_index], amount);
						message_id = MSG_STAMINA_3751;
					}
					break;
				case 11:
					if (random_below(100) >
						battle_group_ext[group]->resistance[11]) {
						amount = add_random_steps(*store_word_and_pair(1, 4, 0));
						battle_groups[group]->unit[unit_index].hp_max -= amount;
						battle_groups[group]->unit[unit_index].hp -= amount;
						if (battle_groups[group]->unit[unit_index].hp_max < 1)
							battle_groups[group]->unit[unit_index].hp_max = 1;
						if (group == 0) {
							party_records[unit_index].hp[0] =
								battle_groups[group]->unit[unit_index].hp;
							party_records[unit_index].hp[1] =
								battle_groups[group]->unit[unit_index].hp_max;
						}
						message_id = MSG_HIT_POINTS_3752;
					}
					break;
				}
				if (amount > 0) {
					copy_combatant_name(combat_action_name_buffer,
						group, unit_index);
					load_message_string(message_id, combat_action_suffix_buffer);
					if (amount > 0) {
						format_int_decimal(amount,
							combat_action_message_buffer);
						str_subst_char(combat_action_suffix_buffer, (unsigned)37174, 36);
					}
					load_message_string(MSG_DRAINED,
						combat_action_message_buffer);
					refresh_combat_glyph_strip(4, 4);
					draw_centered_text_fragments(4, combat_action_name_buffer,
						combat_action_message_buffer, combat_action_suffix_buffer,
						group == 0 ? 1 : 65, 65, 65);
					if (group == 0) {
						play_sound_effect(party_records[unit_index].gender + 8);
						sync_member_party_panel(unit_index, 1);
					}
					wait_for_combat_input(startup_option);
					if (battle_groups[group]->unit[unit_index].hp <= 0)
						set_resisted_combatant_state(group, unit_index,
							MSG_DIES_3486, 0, 3, level_advantage,
							3408, 0);
				}
				break;
			case 6:
				message_id = group == 0 ? 11 : 13;
				if (random_below(100) >
					battle_group_ext[group]->resistance[message_id] -
					level_advantage) {
					refresh_combat_glyph_strip(4, 4);
					display_combat_message(MSG_CRITICAL_3495, 85, 4);
					wait_for_combat_input(startup_option / 2);
					set_resisted_combatant_state(group, unit_index,
						MSG_DIES_3486, 0, 3, level_advantage,
						3408, 0);
				}
				break;
			case 7:
				apply_resisted_status_timer(group, unit_index,
					MSG_FALLS_UNCONSCIOUS_3484, 9, 2, level_advantage,
					2 * source_level, 3, source_level, 3408, 0);
				break;
			}
		}
	}
}
