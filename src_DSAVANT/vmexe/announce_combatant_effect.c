/* Show a combatant's name and effect message; for a party member with
   display_mode 1 also play sound_effect and redraw its panel. */

extern int combat_message_layout;
extern int startup_option;
extern char combat_action_name_buffer[];
extern char combat_action_message_buffer[];
extern char combat_action_suffix_buffer[];
extern int copy_combatant_name();
extern int load_message_string();
extern int refresh_combat_glyph_strip();
extern int draw_centered_menu_text_row();
extern int draw_centered_text_fragments();
extern int play_sound_effect();
extern int sync_member_party_panel();
extern int wait_for_combat_input();

announce_combatant_effect(group, unit_index, message_id,
	display_mode, sound_effect)
int group, unit_index, message_id, display_mode, sound_effect;
{
	copy_combatant_name(combat_action_name_buffer, group, unit_index);
	load_message_string(message_id, combat_action_message_buffer);
	combat_action_suffix_buffer[0] = 0;
	if (combat_message_layout == 2) {
		refresh_combat_glyph_strip(2, 4);
		draw_centered_menu_text_row(combat_action_name_buffer,
			group == 0 ? 1 : 67, 2);
		draw_centered_menu_text_row(combat_action_message_buffer,
			65, 3);
	} else {
		refresh_combat_glyph_strip(4, 4);
		draw_centered_text_fragments(4, combat_action_name_buffer,
			combat_action_message_buffer, combat_action_suffix_buffer,
			group == 0 ? 1 : 65, 65, 65);
	}
	if (display_mode == 1 && group == 0) {
		if (sound_effect > 0)
			play_sound_effect(sound_effect);
		sync_member_party_panel(unit_index, 1);
	}
	wait_for_combat_input(startup_option);
}
