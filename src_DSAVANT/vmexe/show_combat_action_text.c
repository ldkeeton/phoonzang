/* Shows a combatant's action text and handles the silenced-action message. */
#include "structs/member.h"
#include "msg.h"

extern struct member_rec *battle_groups[];
extern struct member_ext *battle_group_ext[];
extern struct member_ext *battle_group_ext_1;
extern int acting_group, acting_unit, combat_effect_sound, startup_option;
extern char combat_action_name_buffer[], combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];
extern int fill_action_slot_table();
extern int wait_for_combat_input();
extern int copy_combatant_name();
extern int load_message_string();
extern int draw_centered_text_fragments();
extern int display_combat_message();

show_combat_action_text(action_message, status_message, message_color,
	silenced,
	highlight_actor)
int action_message, status_message, message_color, silenced;
int highlight_actor;
{
	int unused_target;
	int actor_row;
	int actor_col;

	if (highlight_actor != 0 && acting_group != 0 && acting_group != 6 &&
		battle_groups[acting_group]->unit[acting_unit].cell != -1) {
		actor_row = battle_groups[acting_group]->unit[acting_unit].cell / 10;
		actor_col = battle_groups[acting_group]->unit[acting_unit].cell % 10;
		fill_action_slot_table(acting_group, actor_row, actor_col, 1);
		wait_for_combat_input(5);
	}
	copy_combatant_name(combat_action_name_buffer, acting_group, acting_unit);
	load_message_string(action_message, combat_action_message_buffer);
	combat_action_suffix_buffer[0] = 0;
	if (status_message >= 0)
		load_message_string(status_message, combat_action_suffix_buffer);
	draw_centered_text_fragments(0, combat_action_name_buffer,
		combat_action_message_buffer, combat_action_suffix_buffer,
		acting_group == 0 ? 1 : 67, message_color, message_color);
	if (silenced == 1) {
		wait_for_combat_input(4);
		display_combat_message(MSG_SILENCED_3200, 65, 2);
		wait_for_combat_input(startup_option);
		return 1;
	}
	if (acting_group != 0 && battle_group_ext_1->sound_id > 0 &&
		battle_group_ext[acting_group]->sound_id ==
			battle_group_ext_1->sound_id)
		combat_effect_sound = 16;
	return 0;
}
