/* Apply a state (effect_mode 1) or status timer to a unit or random range. */
#include "structs/member.h"
#include "msg.h"

extern int combat_message_layout;
extern int apply_group_spell_wards();
extern int show_combat_message_and_wait();
extern int select_battle_unit_range();
extern int set_resisted_combatant_state();
extern int apply_resisted_status_timer();
extern int sync_member_party_panel();

apply_status_to_unit_range(group, unit_or_count, message_id,
	resistance_index,
	status_target, resistance_floor, effect_mode, step_count, step_span,
	base_amount)
int group, unit_or_count, message_id, resistance_index, status_target;
int resistance_floor, effect_mode, step_count, step_span, base_amount;
{
	int unit_index;
	int selected_unit;
	int selected_count;
	int adjusted_step_count;
	int adjusted_step_span;

	combat_message_layout = 2;
	if (step_count > 0)
		adjusted_step_count =
			apply_group_spell_wards(group, resistance_index, step_count);
	else
		adjusted_step_count = step_count;
	if (step_span > 0)
		adjusted_step_span = apply_group_spell_wards(group, resistance_index,
			step_span);
	else
		adjusted_step_span = step_span;
	if (adjusted_step_count != step_count || adjusted_step_span != step_span)
		show_combat_message_and_wait(MSG_SPELL_REDUCED);
	select_battle_unit_range(group, unit_or_count, &selected_unit,
		&selected_count);
	unit_index = selected_unit;
	for (; unit_index < selected_unit + selected_count; unit_index++) {
		if (effect_mode == 1) {
			set_resisted_combatant_state(group, unit_index, message_id,
				resistance_index, status_target, resistance_floor, 3402, 1);
		} else {
			apply_resisted_status_timer(group, unit_index, message_id, resistance_index,
				status_target, resistance_floor, adjusted_step_count,
				adjusted_step_span, base_amount, 3402, 1);
		}
		if (group == 0)
			sync_member_party_panel(unit_index, 0);
	}
}
