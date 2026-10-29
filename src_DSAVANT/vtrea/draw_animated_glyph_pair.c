/* draws two animated two-glyph strings from the byte position tables */

extern unsigned char glyph_y_table[];	/* one byte per glyph, 3rd arg */
extern unsigned char glyph_x_table[];	/* two bytes per glyph, 2nd arg */
extern unsigned char glyph_y_table_b[];
extern unsigned char glyph_x_table_b[];

extern int animation_frame;

draw_animated_glyph_pair()
{
	unsigned char glyphs[10];

	glyphs[0] = 1;		/* fixed first glyph */
	glyphs[1] = 4;		/* fixed second glyph */
	glyphs[2] = 0;		/* NUL terminate */
	/* the x tables are indexed by twice the glyph code (one record per glyph) */
	call_draw_text(3, glyph_x_table[glyphs[0] * 2] + 1,
		glyph_y_table[glyphs[0]] + 1,
		72, 248, 33, 143, 0, glyphs, 0, 0);
	glyphs[0] = 1;
	glyphs[1] = animation_frame + 2;	/* frame counter selects the second glyph */
	glyphs[2] = 0;
	call_draw_text(15, glyph_x_table_b[glyphs[0] * 2] + 1,
		glyph_y_table_b[glyphs[0]] + 1,
		72, 248, 33, 143, 0, glyphs, 0, 0);
}
