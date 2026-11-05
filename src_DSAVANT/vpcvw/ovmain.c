/* Dispatch to the character view screen when the current game state requests
   it. */
extern int run_character_view_screen();
extern int member_roster_index;
extern int game_state;

/* Open the character view screen for the current roster member. */
int ovmain()
{
	if (game_state == 17)
		run_character_view_screen(member_roster_index);
	return 0;
}
