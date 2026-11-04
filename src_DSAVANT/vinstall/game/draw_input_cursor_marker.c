/* Shows or clears the input cursor marker at the current cursor position. */
extern int bios_get_cursor_packed();
extern int bios_put_text();
extern int bios_set_cursor_packed();

draw_input_cursor_marker(show_marker)
int show_marker;
{
	char marker_text[2];
	int saved_cursor;

	saved_cursor = bios_get_cursor_packed();
	/* Use the control marker while active and a space while hidden. */
	marker_text[0] = show_marker == 1 ? 17 : 32;
	marker_text[1] = 0;
	bios_put_text(marker_text);
	bios_set_cursor_packed(saved_cursor);
}
