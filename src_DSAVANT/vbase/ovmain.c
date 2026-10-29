/* Dispatch the base overlay's current game state. */
extern int game_state;
extern int restore_base_screen(), run_character_menu(), run_resume_play_menu();

ovmain()
{
	/* State 7 restores the base screen and advances to state 4. */
	if (game_state == 7)
		restore_base_screen();
	/* Test again so a restored screen can enter the character menu. */
	if (game_state == 4)
		run_character_menu();
	/* State 24 opens the resume-play menu. */
	if (game_state == 24)
		run_resume_play_menu();
	return 0;
}
