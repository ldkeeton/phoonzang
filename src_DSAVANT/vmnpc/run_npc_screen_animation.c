/* Run one complete cycle of the NPC screen animation states. */

extern int party_screen_animation_state;
extern step_npc_screen_animation();

run_npc_screen_animation()
{
	party_screen_animation_state = -2;
	do {
		step_npc_screen_animation();
	} while (party_screen_animation_state != -2);
}
