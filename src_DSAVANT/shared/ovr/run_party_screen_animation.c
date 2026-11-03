/* Run one complete cycle of the party screen animation states. */

extern int party_screen_animation_state;
extern step_party_screen_animation();

run_party_screen_animation()
{
	party_screen_animation_state = -2;
	do {
		step_party_screen_animation();
	} while (party_screen_animation_state != -2);
}
