/* The NPC overlay's initialized strings, in data segment order.  One
 * module: ln pads each module to a word, and these follow each other at
 * odd offsets. */

/* redraw_area_set's screen save files. */
char area_set_0_save_file[] = "V1.$$$";
char area_set_1_left_save_file[] = "V1.$$$";
char area_set_1_right_save_file[] = "V2.$$$";
char area_set_1_center_save_file[] = "V3.$$$";
char area_set_2_save_file[] = "V1.$$$";

char npc_gold_offer_prefix_text[] = "1 ";
char npc_gold_offer_suffix_text[] = "(1)";
char spacebar_prompt_text[] = "P";
char npc_offer_choice_box_save_file[] = "V.$$$";
char npc_offer_choices_save_file[] = "V.$$$";
char npc_action_dialog_save_file[] = "V.$$$";
char npc_item_dialog_screen_backup[] = "V.$$$";
char npc_screen_temp_file[] = "VM1.$$$";
char spell_cost_panel_text[] = "***";		/* draw_spell_cost, for no cost */
char npc_spell_dialog_save_file[] = "V.$$$";
char text_space[] = " ";
char npc_text_separator[] = " ";
char npc_message_line_separator[46] = " ";
char npc_dialog_phoonzang_prefix[] = "PHOONZANG";
