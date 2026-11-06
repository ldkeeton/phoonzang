/* Display a combatant name and spell effect message, then wait for input. */

extern int startup_option;
extern char combat_action_name_buffer[];
extern char combat_action_message_buffer[];
extern char empty_text_fragment[];
extern int wait_for_combat_input();
extern int copy_combatant_name();
extern int load_message_string();
extern int draw_centered_text_fragments();

show_spell_effect_message(group, unit_index, message_id, message_color)
int group, unit_index, message_id, message_color;
{
	wait_for_combat_input(startup_option / 4);
	copy_combatant_name(combat_action_name_buffer, group, unit_index);
	load_message_string(message_id, combat_action_message_buffer);
	draw_centered_text_fragments(2, combat_action_name_buffer,
		combat_action_message_buffer, empty_text_fragment,
		group == 0 ? 1 : 67, message_color, 0);
	wait_for_combat_input(startup_option);
}
