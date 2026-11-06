/* Wait for the combat screen animation to reach its terminal state. */
extern int party_screen_animation_state;
extern int step_combat_screen_animation();

wait_for_combat_animation()
{
	while (party_screen_animation_state != -2)
		step_combat_screen_animation();
}
