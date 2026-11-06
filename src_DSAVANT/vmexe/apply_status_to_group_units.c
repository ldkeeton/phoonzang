/* Apply a state or status timer to every unit of a group.  A kill through
   resistance 5 is deflected by a strong ward 3, and units more than
   level_margin levels above step_count are immune. */

#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern int combat_message_layout;
extern int startup_option;
extern int refresh_combat_glyph_strip();
extern int display_combat_message();
extern int wait_for_combat_input();
extern int apply_status_to_unit_range();

apply_status_to_group_units(group, message_id, resistance_index, status_target,
	resistance_floor, effect_mode, step_count, step_span, base_amount)
int group, message_id, resistance_index, status_target;
int resistance_floor, effect_mode, step_count, step_span, base_amount;
{
	int unit_index;
	int level_margin;
	int unit_resistance_floor;

	combat_message_layout = 2;
	level_margin = 0;
	if (status_target == 3 && effect_mode == 1) {
		if (resistance_index == 5 &&
			battle_groups[group]->ward[3] / 5 > step_count) {
			refresh_combat_glyph_strip(2, 2);
			display_combat_message(MSG_SPELL_DEFLECTED, 65, 2);
			wait_for_combat_input(startup_option);
			return;
		}
		if (resistance_index == 5)
			level_margin = 3;
		if (resistance_index == 11)
			level_margin = 4;
	}

	for (unit_index = 0;
		unit_index < battle_groups[group]->unit_count;
		unit_index++) {
		unit_resistance_floor = resistance_floor;
		if (level_margin > 0 &&
			battle_groups[group]->unit[unit_index].level >
				step_count + level_margin)
			unit_resistance_floor = -100;
		apply_status_to_unit_range(group, unit_index, message_id, resistance_index,
			status_target, unit_resistance_floor, effect_mode, step_count,
			step_span, base_amount);
	}
}
