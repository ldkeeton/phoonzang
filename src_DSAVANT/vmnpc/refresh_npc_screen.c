/* Refresh the NPC screen animation and display area. */
extern int run_npc_screen_animation();
extern int call_show_area();

/* Run the NPC screen animation and redraw its display area. */
refresh_npc_screen()
{
	run_npc_screen_animation();
	call_show_area(34, 142, 285, 198);
}
