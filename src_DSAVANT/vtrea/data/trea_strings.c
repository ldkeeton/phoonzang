/* The treasure overlay's initialized strings, in data segment order.
 * One module: ln pads each module to a word, and these follow each other
 * at odd offsets. */

char treasure_text_token_codes[] = "!%&]@#~";	/* process_treasure_text */
char treasure_text_separator[] = " ";
char treasure_panel_top_save_file[] = "V1.$$$";
char treasure_panel_bottom_save_file[] = "V2.$$$";

/* Empty fragments passed to draw_centered_character_message. */
char empty_character_message_first[] = "";
char empty_character_message_second[] = "";
char empty_status_message_fragment[] = "";
char empty_status_message_suffix[] = "";
char empty_demonic_attack_fragment[] = "";
char empty_demonic_attack_suffix[] = "";
char empty_battering_fragment[] = "";
char empty_battering_suffix[] = "";
char empty_magic_power_suffix[] = "";
char empty_hit_point_suffix[] = "";
char empty_vitality_suffix[] = "";

/* roll_chest_trap and show_trap_disarm_skill_dialog. */
char trap_code_template[] = "--------";
char unknown_trap_clue_template[] = "????????";
char trap_dialog_temp_file[] = "V.$$$";
char trap_skill_open_paren[] = "(";
char trap_skill_percent_close[] = "%)";
char inspect_label_open_paren[] = "(";
char inspect_label_close_paren[] = ")";

char treasure_item_dialog_temp_file[] = "V.$$$";	/* item_or_loot_dialog */
char empty_dialog_message[] = "";

/* pick_lock_minigame and force_door_minigame. */
char pick_lock_temp_file[] = "V.$$$";
char pick_lock_skill_open_paren[] = "(";
char pick_lock_skill_percent_close[] = "%)";
char force_door_temp_file[] = "V.$$$";

/* select_treasure_grid_option, with and without a title box. */
char grid_menu_dialog_temp_file[] = "V.$$$";
char grid_menu_temp_file[] = "V.$$$";

char spell_cost_panel_text[] = "***";	/* draw_spell_cost, for no cost */
char screen_save_temp_file[] = "V.$$$";	/* pick_spell_dialog */
