/* Draw the loaded member icon at double size, skipping its first and last
   rows. */
extern unsigned char far *get_font_glyph();
extern int clamp_value_to_range(), call_put_pixel();

draw_loaded_member_icon(member, left, top)
int member, left, top;
{
	int column, row;
	unsigned char far *glyph;
	int width, height, offset, color;

	/* Font 5 glyph 0 is the currently loaded member icon. */
	glyph = get_font_glyph(5, 0, &width, &height);
	offset = width;
	for (row = 0; row < height - 2; row++) {
		for (column = 0; column < width; column++) {
			color = glyph[offset];
			/* Palette entry 255 is transparent; expand the rest to 2 by 2. */
			if (color != 255) {
				call_put_pixel(column * 2 + left, row * 2 + top,
					clamp_value_to_range(color, -1));
				call_put_pixel(column * 2 + left + 1, row * 2 + top,
					color);
				call_put_pixel(column * 2 + left, row * 2 + top + 1,
					color);
				call_put_pixel(column * 2 + left + 1, row * 2 + top + 1,
					clamp_value_to_range(color, 1));
			}
			offset++;
		}
	}
}
