/* Copies up to 76 characters and centers the text on row 22. */
extern int strlen();
extern int strncpy();
extern int put_text_at();
extern char command_line_blank_text[];

display_centered_command_line(text)
char *text;
{
	int text_length;
	char line_buffer[80];

	/* Limit the copy to the 76-character display width. */
	strncpy(line_buffer, text,
		text_length = (strlen(text) > 76 ? 76 : strlen(text)));
	line_buffer[text_length] = 0;

	/* Clear the row before printing the centered string. */
	put_text_at(22, 0, command_line_blank_text);
	put_text_at(22, 40 - (strlen(line_buffer) + 1) / 2,
		    line_buffer);
}
