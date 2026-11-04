/* Prompt for an integer at a screen position until it is within bounds. */

extern int bios_set_cursor();
extern int bios_put_text_highlight_attr();
extern int bios_put_text();
extern int int_to_str();
extern int read_text_at();
extern int parse_int();
extern char int_prompt_clear_spaces[];

int
prompt_int_at(initial_value, row, column, width, maximum, minimum)
int initial_value;
int row;
int column;
int width;
int maximum;
int minimum;
{
	int selected_value;
	char input_text[255];

	selected_value = initial_value;
	do {
		/* Redraw the current value and prompt at the selected position. */
		bios_set_cursor(row, column);
		int_to_str(selected_value, input_text);
		bios_put_text_highlight_attr(input_text);
		bios_put_text(int_prompt_clear_spaces);
		read_text_at(row, column, input_text, width);
		selected_value = parse_int(input_text);

		/* Keep asking while the parsed value is outside the supplied bounds. */
	} while (selected_value < minimum || selected_value > maximum);

	return selected_value;
}
