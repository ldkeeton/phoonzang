/* restores saved screen area a, then redraws glyph 1 in color 14 */

extern long saved_area_a;

restore_area_a_draw_glyph()
{
	char glyph[10];

	call_restore_area(saved_area_a, 0);
	glyph[0] = 1;
	glyph[1] = 0;	/* NUL-terminate */
	call_draw_text(14, 55, 154, 0, 319, 0, 199, 0, glyph, 0,
		0);	/* clipped to full 320x200 */
}
