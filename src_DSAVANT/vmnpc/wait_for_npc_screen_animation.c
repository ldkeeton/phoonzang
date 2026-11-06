/* Wait for the NPC screen animation to reach its finished state. */
extern int party_screen_animation_state;
extern int step_npc_screen_animation();

/* Advance the animation until the screen reports that it is finished. */
wait_for_npc_screen_animation()
{
	while (party_screen_animation_state != -2)
		step_npc_screen_animation();
}
