/* Prints an integer at the selected cursor position with the highlight
   attribute. */
extern int bios_set_cursor();
extern int int_to_str();
extern int bios_put_text_highlight_attr();

put_int_at_highlight_attr(row, column, number)
int row;
int column;
int number;
{
	char text[255];

	bios_set_cursor(row, column);
	int_to_str(number, text);
	bios_put_text_highlight_attr(text);
}
