/* forward a signed value to the fixed-width number string formatter */
draw_number_field(value, field_width, color)
int value, field_width, color;
{
	draw_padded_number((long) value, field_width, color);
}
