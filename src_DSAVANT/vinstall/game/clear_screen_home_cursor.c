/* Clear the text screen, then move the cursor to its home position. */
extern int bios_clear_screen_home_cursor();
extern int bios_set_cursor();

clear_screen_home_cursor()
{
	/* Clear the display before setting the cursor position. */
	bios_clear_screen_home_cursor();
	/* The two zero arguments select row zero and column zero. */
	bios_set_cursor(0, 0);
}
