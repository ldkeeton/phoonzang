/* Run the combat screen animation until it reaches its terminal state. */
extern int party_screen_animation_state;
extern int step_combat_screen_animation();

run_combat_screen_animation()
{
	party_screen_animation_state = -2;
	do {
		step_combat_screen_animation();
	} while (party_screen_animation_state != -2);
}
