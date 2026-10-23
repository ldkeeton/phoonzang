/* draws a single character as a one-character string, clipped to the top 320x145 area */
draw_char_clipped_top(mode, ch, x, y, last_arg)
char ch;
{
	char text[10];

	text[0] = ch;
	text[1] = 0;	/* NUL-terminate */
	gfx_draw_text(mode, x, y, 0, 320, 0, 145, 0, text, 0, last_arg);	/* clip x 0..320, y 0..145 */
}
