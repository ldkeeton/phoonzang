/* Wait until the party screen animation state reaches its terminal value. */
extern int party_screen_animation_state;
extern int step_party_screen_animation();

wait_for_party_screen_animation()
{
	/* Advance the animation until it reports the terminal state. */
	while (party_screen_animation_state != -2)
		step_party_screen_animation();
}
