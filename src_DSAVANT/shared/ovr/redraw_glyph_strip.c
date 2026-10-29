/* restores the two saved screen areas, redraws glyph 1, then optionally
   copies the strip to the screen */

extern long saved_area_a;
extern long saved_area_b;

redraw_glyph_strip(show)
{
	char glyph[10];

	call_restore_area(saved_area_a, 0);
	call_restore_area(saved_area_b, 0);
	glyph[0] = 1;
	glyph[1] = 0;	/* NUL-terminate */
	call_draw_text(14, 55, 154, 0, 319, 0, 199, 0, glyph, 0,
		0);	/* clipped to full 320x200 */
	if (show)
		call_show_area(8, 147, 314, 194);
}
