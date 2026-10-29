/* Clear the message strip, display a maze message, and mark it for refresh. */
extern int call_show_area();
extern int delay_ms();
extern int show_message();
extern int maze_message_refresh_pending;

display_maze_message(message_id)
int message_id;
{
	/* Clear the 320-by-7 message strip before drawing the new text. */
	call_show_area(0, 146, 319, 152);
	/* Briefly pause after clearing the strip. */
	delay_ms(100);
	show_message(message_id);
	/* The caller uses this flag to refresh the strip after the message. */
	maze_message_refresh_pending = 1;
}
