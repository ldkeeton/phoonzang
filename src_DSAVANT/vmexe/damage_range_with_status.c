/* Deal resisted damage to a unit range; each unit hit also gets a state
   (effect_mode 1) or a status timer. */
#include "msg.h"

extern int combat_message_layout;
extern int apply_group_spell_wards();
extern int show_combat_message_and_wait();
extern int select_battle_unit_range();
extern int set_resisted_combatant_state();
extern int apply_resisted_status_timer();
extern int sync_member_party_panel();
extern int deal_resisted_damage();

damage_range_with_status(group, unit_or_count, message_id, resistance_index,
	repeat_count, resistance_floor, dice_count, die_sides,
	status_target, effect_mode, step_count, step_span, base_amount)
int group, unit_or_count, message_id, resistance_index, repeat_count;
int resistance_floor, dice_count, die_sides, status_target;
int effect_mode, step_count, step_span, base_amount;
{
	int unit_index;
	int selected_unit;
	int selected_count;
	int adjusted_dice_count;
	int adjusted_die_sides;
	int adjusted_step_count;
	int adjusted_step_span;

	combat_message_layout = 4;
	if (dice_count > 0)
		adjusted_dice_count = apply_group_spell_wards(group, resistance_index,
			dice_count);
	else
		adjusted_dice_count = dice_count;
	if (die_sides > 0)
		adjusted_die_sides = apply_group_spell_wards(group, resistance_index,
			die_sides);
	else
		adjusted_die_sides = die_sides;
	if (step_count > 0)
		adjusted_step_count = apply_group_spell_wards(group, resistance_index,
			step_count);
	else
		adjusted_step_count = step_count;
	if (step_span > 0)
		adjusted_step_span = apply_group_spell_wards(group, resistance_index,
			step_span);
	else
		adjusted_step_span = step_span;
	if (adjusted_dice_count != dice_count || adjusted_die_sides != die_sides ||
	    adjusted_step_count != step_count || adjusted_step_span != step_span)
		show_combat_message_and_wait(MSG_SPELL_REDUCED);
	select_battle_unit_range(group, unit_or_count, &selected_unit,
		&selected_count);
	unit_index = selected_unit;
	for (; unit_index < selected_unit + selected_count; unit_index++) {
		if (deal_resisted_damage(group, unit_index, adjusted_dice_count,
			adjusted_die_sides, repeat_count, resistance_index,
			resistance_floor) > 0) {
			if (effect_mode == 1) {
				set_resisted_combatant_state(group, unit_index, message_id,
					resistance_index, status_target, resistance_floor,
					3408, 0);
			} else {
				apply_resisted_status_timer(group, unit_index,
					message_id, resistance_index, status_target,
					resistance_floor, adjusted_step_count,
					adjusted_step_span, base_amount, 3408, 0);
			}
		}
		if (group == 0)
			sync_member_party_panel(unit_index, 0);
	}
}
