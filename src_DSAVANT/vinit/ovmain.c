/* Dispatch startup actions from the current game state. */
extern int game_state;
extern int initialize_runtime_resources();
extern int play_startup_sequence();
extern int initialize_main_screen();
extern int release_main_screen();

ovmain()
{
	switch (game_state) {
	case 0:
		initialize_runtime_resources();
		break;
	case 1:
		play_startup_sequence();
		break;
	case 8:
		release_main_screen();
		break;
	case 2:
		initialize_main_screen();
		break;
	}
	return 0;
}
