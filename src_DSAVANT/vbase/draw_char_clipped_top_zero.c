/* draws a single character as a one-character string, clipped to the top 320x145 area, with a zero last argument */
draw_char_clipped_top_zero(mode, ch, x, y)
char ch;
{
	char text[10];

	text[0] = ch;
	text[1] = 0;	/* NUL-terminate */
	gfx_draw_text(mode, x, y, 0, 320, 0, 145, 0, text, 0, 0);	/* clip x 0..320, y 0..145 */
}
