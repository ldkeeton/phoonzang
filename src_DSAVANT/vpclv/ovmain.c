/* Dispatch the level-up overlay's current game state. */
extern int game_state;
extern int show_level_up_sequence();

ovmain()
{
	if (game_state == 22)
		show_level_up_sequence();
	return 0;
}
