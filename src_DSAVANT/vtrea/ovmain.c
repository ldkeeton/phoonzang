/* overlay entry: reset the treasure-screen state, then run the scene for the
   current game_state and set the state to continue in */

extern int glyph_painter;
extern int animation_index;
extern int sound_request;
extern int pending_panel_call;
extern int game_state;

ovmain()
{
	glyph_painter = 0;
	animation_index = -1;	/* -1 disables the animation */
	sound_request = 0;
	pending_panel_call = -1;	/* no pending panel call */
	if (game_state == 0x0f) {
		game_state = 0x16;
		run_state_0f_scene();
	} else if (game_state == 0x15) {
		game_state = 0x16;
		run_state_15_scene();
	} else if (game_state == 0x1a) {
		game_state = 5;
		run_state_1a_scene();
	} else if (game_state == 0x1c) {
		game_state = 5;
		run_state_1c_scene();
	} else if (game_state == 0x1d) {
		game_state = 5;
		run_state_1d_scene();
	} else
		game_state = 0x16;	/* any other state continues in 0x16 */
	return 0;
}
