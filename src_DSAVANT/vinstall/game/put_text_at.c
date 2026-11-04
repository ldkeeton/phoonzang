/* Sets the cursor position and writes text through the BIOS. */
extern int bios_set_cursor();
extern int bios_put_text();

put_text_at(row, col, text)
int row;
int col;
char *text;
{
	bios_set_cursor(row, col);
	bios_put_text(text);
}
