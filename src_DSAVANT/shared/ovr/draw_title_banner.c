/* restores the saved screen, then draws the glyph (shadowed when the
   offset is above 0) */

extern long saved_screen;
extern int banner_offset;
extern int banner_plain_flag;

draw_title_banner(glyph_base)
int glyph_base;
{
	char buf[10];

	call_restore_screen(saved_screen, 0, 0);
	if (banner_offset > 0) {
		buf[0] = 1;
		buf[1] = 0;	/* NUL-terminate */
		call_draw_text(15, 90, 45, 0, 319, 65 - banner_offset, 199, 0, buf, 0,
			0);	/* clipped to full 320x200 */
	}
	buf[0] = banner_plain_flag ? 5 : glyph_base + 2;
	buf[1] = 0;
	call_draw_text(15, 90, 20 - banner_offset + 25, 0, 319, 0, 199, 0, buf, 0, 0);
}
