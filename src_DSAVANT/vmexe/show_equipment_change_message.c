/* Shows the acting combatant's equipment change. */
#include "msg.h"

extern int acting_unit, acting_group, startup_option;
extern char combat_action_suffix_buffer[];
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern int copy_combatant_name();
extern int load_message_string();
extern int draw_centered_text_fragments();
extern int wait_for_combat_input();

show_equipment_change_message()
{
	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	load_message_string(MSG_CHANGES_EQUIPMENT,
		combat_action_message_buffer);
	combat_action_suffix_buffer[0] = 0;
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		1, 67, 67);
	wait_for_combat_input(startup_option / 2);
}
