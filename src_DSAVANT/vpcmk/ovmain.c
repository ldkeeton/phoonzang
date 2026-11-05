/* Run the character-file manager, then return to the character menu. */
extern int game_state;
extern int manage_character_files();

ovmain()
{
	manage_character_files();
	/* State 4 is the base overlay's character menu. */
	game_state = 4;
	return 0;
}
