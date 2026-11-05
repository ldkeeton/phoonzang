/* Run the region event scene (game_state 0x1d) and restore the treasure
   scene. */
extern int prepare_treasure_scene(), redraw_treasure_caption();
extern int apply_region_event_to_party(), restore_treasure_scene();

/* Apply the active region event to the party inside the treasure scene. */
run_region_event_scene()
{
	prepare_treasure_scene(0);
	redraw_treasure_caption(0);
	apply_region_event_to_party();
	redraw_treasure_caption(1);
	restore_treasure_scene();
}
