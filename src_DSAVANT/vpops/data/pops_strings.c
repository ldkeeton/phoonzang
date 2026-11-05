/* The party orders overlay's initialized strings, in data segment order.
 * One module: ln pads each module to a word, and these follow each other
 * at odd offsets.  The four area set files are redraw_area_set's. */

char area_set_0_save_file[] = "V1.$$$";
char area_set_1_left_save_file[] = "V1.$$$";
char area_set_1_right_save_file[] = "V2.$$$";
char area_set_1_center_save_file[] = "V3.$$$";
char area_set_2_save_file[] = "V1.$$$";
char spell_cost_panel_text[] = "***";	/* draw_spell_cost, for no cost */
char screen_save_temp_file[] = "V.$$$";
char item_dialog_temp_file[] = "V.$$$";	/* item_action_dialog */
