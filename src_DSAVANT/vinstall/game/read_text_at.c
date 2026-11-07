/* Edit a bounded text buffer at the current screen position. */
extern int strlen();
extern int bios_set_cursor();
extern int bios_put_text();
extern int draw_input_cursor_marker();
extern int dos_con_in_noecho();
extern int normalize_input_key();
extern int console_bell();

read_text_at(row, column, text, max_length)
int row;
int column;
char *text;
int max_length;
{
	char echo_buffer[2];
	int input_char;
	int text_length;
	int stack_reserve[2];

	/* Keep the temporary text buffer terminated for each one-character write. */
	echo_buffer[0] = 0;
	echo_buffer[1] = 0;
	text_length = strlen(text);
	column += text_length;
	bios_set_cursor(row, column);
	draw_input_cursor_marker(1);

	/* Read and echo edits until Enter is pressed. */
	for (;;) {
		input_char = normalize_input_key(dos_con_in_noecho());
		if (input_char == '\r')
			break;

		/* Hide the marker while handling the input character. */
		draw_input_cursor_marker(0);
		if (input_char == '\b' || input_char == 8) {
			/* Remove the last character when possible; otherwise ring the bell. */
			if (text_length > 0) {
				--text_length;
				text[text_length] = 0;
				--column;
				bios_set_cursor(row, column);
				echo_buffer[0] = ' ';
				bios_put_text(echo_buffer);
				bios_set_cursor(row, column);
			} else {
				console_bell();
			}
		} else if (text_length >= max_length) {
			/* Refuse input once the caller's maximum length is reached. */
			console_bell();
		} else if (input_char >= 32 && input_char <= 127) {
			/* Append printable input and echo the new character. */
			text[text_length] = input_char;
			++text_length;
			text[text_length] = 0;
			echo_buffer[0] = input_char;
			bios_put_text(echo_buffer);
			++column;
		}
		/* Restore the cursor marker before requesting the next character. */
		draw_input_cursor_marker(1);
	}

	/* Leave the marker hidden after Enter. */
	draw_input_cursor_marker(0);
}
