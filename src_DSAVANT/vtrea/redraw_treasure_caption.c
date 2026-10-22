extern long saved_area_a;
extern long saved_area_b;
extern int treasure_caption_on;
extern char treasure_caption[];

/* restores the two saved screen areas, redraws glyph 1 and the optional
   centred caption, then optionally copies the strip to the screen */
redraw_treasure_caption(show)
{
	char glyph[10];

	gfx_restore_area(saved_area_a, 0);
	gfx_restore_area(saved_area_b, 0);
	glyph[0] = 1;
	glyph[1] = 0;	/* NUL-terminate */
	gfx_draw_text(14, 0x37, 0x9a, 0, 0x13f, 0, 0xc7, 0, glyph, 0, 0);	/* clipped to full 320x200 */
	if (treasure_caption_on) {
		/* centre on x=161; glyphs are 6 pixels wide */
		gfx_set_text_pos(0xa1 - aztec_strlen(treasure_caption) * 6 / 2, 0x92);
		gfx_set_text_color(0x17, 0);
		draw_string(treasure_caption, 0);
	}
	if (show)
		gfx_show_area(0x19, 0x92, 0x127, 0xc6);
}
