/* draws glyph 1 at (0x32, 0x73) in color 1 */
draw_marker_glyph()
{
	char glyph[10];

	glyph[0] = 1;
	glyph[1] = 0;	/* NUL-terminate */
	gfx_draw_text(1, 50, 115, 0, 319, 0, 199, 0, glyph, 0,
		0);	/* clipped to full 320x200 */
}
