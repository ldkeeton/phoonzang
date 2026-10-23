extern long saved_area_a;
extern long saved_area_b;

/* restores the two saved screen areas, redraws glyph 1, then optionally
   copies the strip to the screen */
restore_areas_redraw_glyph(show)
{
	char glyph[10];

	gfx_restore_area(saved_area_a, 0);
	gfx_restore_area(saved_area_b, 0);
	glyph[0] = 1;
	glyph[1] = 0;	/* NUL-terminate */
	gfx_draw_text(14, 0x37, 0x9a, 0, 0x13f, 0, 0xc7, 0, glyph, 0, 0);	/* clipped to full 320x200 */
	if (show)
		gfx_show_area(8, 0x93, 0x13a, 0xc2);
}
