/* Draw one centered text row in the menu area and refresh its band. */
extern int aztec_strlen();
extern int set_menu_text_position();
extern int draw_colored_text_with_space();
extern int call_show_area();

int draw_centered_menu_text_row(text, color, row)
char *text;
int color;
int row;
{
	int text_x;

	text_x = 160 - (aztec_strlen(text) * 6) / 2;
	set_menu_text_position(text_x, row);
	draw_colored_text_with_space(text, color);
	call_show_area(8, 156 + 7 * row, 314, 162 + 7 * row);
}
