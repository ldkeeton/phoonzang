/* Runs the NPC shop interaction. */
extern int npc_dialog_shop_mode;
extern int npc_area_bottom;
extern int npc_negotiation_tactic;
extern int prepare_npc_interaction_screen();
extern int prepare_npc_encounter_scene();
extern int build_npc_item_list_for_shop();
extern int init_npc_dialog_text();
extern int draw_npc_gold_frame();
extern int run_npc_dialog_turn();
extern int restore_npc_interaction_screen();

/* Initializes the shop dialog, handles it, and restores the screen. */
run_npc_shop_interaction()
{
	npc_dialog_shop_mode = 3;
	npc_area_bottom = 143;
	npc_negotiation_tactic = 3;
	prepare_npc_interaction_screen();
	prepare_npc_encounter_scene();
	build_npc_item_list_for_shop();
	init_npc_dialog_text();
	draw_npc_gold_frame();
	run_npc_dialog_turn();
	restore_npc_interaction_screen();
}
