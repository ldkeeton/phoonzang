/* Draw up to three colored text fragments centered on a menu row. */

extern int aztec_strlen();
extern int set_menu_text_position();
extern int draw_colored_text_with_space();
extern int call_show_area();

draw_centered_text_fragments(row, first_text, second_text, third_text,
	first_color, second_color, third_color)
int row;
char *first_text, *second_text, *third_text;
int first_color, second_color, third_color;
{
	int text_x;
	int present_count;

	present_count = (second_text[0] ? 1 : 0) +
		(third_text[0] ? 1 : 0);
	text_x = 160 - ((aztec_strlen(first_text) +
		aztec_strlen(second_text) + aztec_strlen(third_text) +
		present_count) * 6 / 2);
	set_menu_text_position(text_x, row);
	if (first_text[0] != 0)
		draw_colored_text_with_space(first_text, first_color);
	if (second_text[0] != 0)
		draw_colored_text_with_space(second_text, second_color);
	if (third_text[0] != 0)
		draw_colored_text_with_space(third_text, third_color);
	call_show_area(8, row * 7 + 156, 314, row * 7 + 162);
}
