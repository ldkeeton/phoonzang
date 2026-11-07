/* Drains stamina from each eligible combatant in the selected range. */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct pc_rec party_records[];
extern int combat_message_layout;
extern int startup_option;
extern char combat_action_suffix_buffer[];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern int apply_group_spell_wards();
extern int show_combat_message_and_wait();
extern int select_battle_unit_range();
extern int combatant_evades_targeting();
extern int random_below();
extern int roll_resisted_amount();
extern int refresh_combat_glyph_strip();
extern int copy_combatant_name();
extern int draw_centered_menu_text_row();
extern int display_combat_message();
extern int wait_for_combat_input();
extern int format_int_decimal();
extern int load_message_string();
extern int str_subst_char();
extern int draw_centered_text_fragments();
extern int aztec_movmem();
extern void subtract_combatant_stamina();
extern int play_sound_effect();
extern int sync_member_party_panel();

drain_combatant_stamina(group, unit_or_count, dice_count, die_sides,
	repeat_count, resistance_index, resistance_floor)
int group, unit_or_count, dice_count, die_sides, repeat_count;
int resistance_index, resistance_floor;
{
	int unit_index;
	int selected_count;
	int selected_unit;
	int adjusted_dice_count;
	int adjusted_die_sides;
	int drained_amount;
	int dice_remaining;
	int repeats_remaining;

	if (dice_count > 0)
		adjusted_dice_count = apply_group_spell_wards(group,
			resistance_index, dice_count);
	else
		adjusted_dice_count = dice_count;
	if (die_sides > 0)
		adjusted_die_sides = apply_group_spell_wards(group,
			resistance_index, die_sides);
	else
		adjusted_die_sides = die_sides;
	if (adjusted_dice_count != dice_count ||
		adjusted_die_sides != die_sides)
		show_combat_message_and_wait(MSG_SPELL_REDUCED);
	select_battle_unit_range(group, unit_or_count, &selected_unit,
		&selected_count);
	combat_message_layout = 4;
	unit_index = selected_unit;
	for (; unit_index < selected_unit + selected_count; unit_index++) {
		if (group == 0)
			aztec_movmem(party_records[unit_index].resistance_rows.named.resist,
				battle_group_ext[0]->resistance, 14);
		if (battle_groups[group]->unit[unit_index].state >= 3)
			continue;
		if (combatant_evades_targeting(group, unit_index))
			continue;
		drained_amount = 0;
		repeats_remaining = repeat_count;
		while (repeats_remaining > 0) {
			dice_remaining = adjusted_dice_count;
			while (dice_remaining > 0) {
				drained_amount += random_below(adjusted_die_sides) + 1;
				dice_remaining--;
			}
			repeats_remaining--;
		}
		if (random_below(100) >
			battle_group_ext[group]->resistance[resistance_index] -
			resistance_floor)
			drained_amount = roll_resisted_amount(group, drained_amount,
				resistance_index, resistance_floor);
		else
			drained_amount = 0;
		refresh_combat_glyph_strip(2, 4);
		copy_combatant_name(combat_action_name_buffer, group, unit_index);
		draw_centered_menu_text_row(combat_action_name_buffer,
			group == 0 ? 1 : 67, 2);
		if (drained_amount > 0) {
			display_combat_message(MSG_DRAINED, 65, 3);
			wait_for_combat_input(4);
			format_int_decimal(drained_amount, combat_action_message_buffer);
			load_message_string(MSG_STAMINA_3751, combat_action_name_buffer);
			str_subst_char(combat_action_name_buffer, combat_action_message_buffer, 36);
			combat_action_message_buffer[0] = 0;
			combat_action_suffix_buffer[0] = 0;
			draw_centered_text_fragments(4, combat_action_name_buffer,
				combat_action_message_buffer, combat_action_suffix_buffer,
				65, 65, 65);
		subtract_combatant_stamina(&battle_groups[group]->unit[unit_index],
			drained_amount);
			if (group == 0) {
				play_sound_effect(party_records[unit_index].gender + 8);
				sync_member_party_panel(unit_index, 1);
			}
			wait_for_combat_input(startup_option / 2);
		} else
			display_combat_message(MSG_UNAFFECTED_3310, 65, 3);
		wait_for_combat_input(startup_option / 2);
	}
}
