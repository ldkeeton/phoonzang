/* draws the single glyph 1 at (50, 115) (first argument 1), clipped to the full 320x200 screen */
draw_glyph_1_at_50_115()
{
	char glyph[10];

	glyph[0] = 1;
	glyph[1] = 0;	/* NUL-terminate */
	gfx_draw_text(1, 50, 115, 0, 0x13f, 0, 0xc7, 0, glyph, 0, 0);
}
