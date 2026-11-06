/* Redraw the glyph strip, show a combat message on row 2 and wait. */
extern int startup_option;
extern int refresh_combat_glyph_strip();
extern int display_combat_message();
extern int wait_for_combat_input();

show_combat_message_and_wait(message)
int message;
{
	refresh_combat_glyph_strip(2, 4);
	display_combat_message(message, 65, 2);
	wait_for_combat_input(startup_option);
}
