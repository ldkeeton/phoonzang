/* formats value into a string, pads it on the left with spaces to field_width, and draws it */
draw_padded_number(value, field_width, color)
long value;
int field_width, color;
{
	char buf[255];

	format_long_decimal(value, buf);
	while (aztec_strlen(buf) - field_width < 0) {	/* fewer glyphs than the field width */
		draw_font_glyph(0x20, color);	/* space */
		field_width--;
	}
	draw_text_glyphs(buf + aztec_strlen(buf) - field_width, color);
}
