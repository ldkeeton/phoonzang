/* Apply a state or status timer to every group on the side group belongs to:
   all monster groups, or the party and its ally group. */
#include "structs/member.h"

extern int monster_group_count;
extern int combat_message_layout;
extern struct member_rec *ally_battle_group;
extern void apply_status_to_group_units();

apply_status_to_battle_side(group, message_id, resistance_index, status_target,
	resistance_floor, effect_mode, step_count, step_span, base_amount)
int group, message_id, resistance_index, status_target, resistance_floor;
int effect_mode, step_count, step_span, base_amount;
{
	int i;

	combat_message_layout = 2;
	if (group > 0 && group < 6) {
		for (i = 1; i <= monster_group_count; i++)
			apply_status_to_group_units(i, message_id, resistance_index,
				status_target, resistance_floor, effect_mode, step_count,
				step_span, base_amount);
	} else {
		apply_status_to_group_units(0, message_id, resistance_index,
			status_target, resistance_floor, effect_mode, step_count,
			step_span, base_amount);
		if (ally_battle_group->unit_count > 0)
			apply_status_to_group_units(6, message_id, resistance_index,
				status_target, resistance_floor, effect_mode, step_count,
				step_span, base_amount);
	}
}
