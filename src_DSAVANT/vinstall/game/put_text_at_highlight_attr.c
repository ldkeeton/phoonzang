/* Set the cursor and print text using the highlight attribute. */
extern int bios_set_cursor();
extern int bios_put_text_highlight_attr();

put_text_at_highlight_attr(row, column, text)
int row;
int column;
char *text;
{
	bios_set_cursor(row, column);
	bios_put_text_highlight_attr(text);
}
