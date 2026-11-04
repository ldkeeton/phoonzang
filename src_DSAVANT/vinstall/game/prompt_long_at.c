/* Prompt for a long value, repeating while it exceeds the supplied maximum. */

extern int bios_set_cursor();
extern int put_long_right_aligned();
extern int read_text_at();
extern long parse_long();

long
prompt_long_at(initial_value, row, column, width, maximum)
long initial_value;
int row;
int column;
int width;
long maximum;
{
	long selected_value;
	char input_text[255];

	input_text[0] = 0;
	do {
		/* Keep the prompt and editable text at the requested cursor. */
		bios_set_cursor(row, column);
		put_long_right_aligned(initial_value, width);
		read_text_at(row, column, input_text, width);

		/* An empty response keeps the starting value. */
		if (input_text[0] == 0)
			selected_value = initial_value;
		else
			selected_value = parse_long(input_text);

		/* Repeat while the selected value is above the maximum. */
	} while (selected_value > maximum);

	bios_set_cursor(row, column);
	put_long_right_aligned(selected_value, width);
	return selected_value;
}
