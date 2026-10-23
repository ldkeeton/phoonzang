extern long saved_screen;
extern int banner_offset;
extern int banner_plain_flag;

/* restores the saved screen, then draws the glyph (shadowed when offset > 0) */
draw_title_banner(glyph_base)
int glyph_base;
{
	char buf[10];

	gfx_restore_screen(saved_screen, 0, 0);
	if (banner_offset > 0) {
		buf[0] = 1;
		buf[1] = 0;	/* NUL-terminate */
		gfx_draw_text(15, 0x5a, 0x2d, 0, 0x13f, 0x41 - banner_offset, 0xc7, 0, buf, 0, 0);	/* clipped to full 320x200 */
	}
	buf[0] = banner_plain_flag ? 5 : glyph_base + 2;
	buf[1] = 0;
	gfx_draw_text(15, 0x5a, 0x14 - banner_offset + 0x19, 0, 0x13f, 0, 0xc7, 0, buf, 0, 0);
}
