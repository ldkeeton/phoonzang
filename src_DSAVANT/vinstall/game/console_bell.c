/* Console bell helper and numeric-input editor. */
extern int bios_get_cursor_packed();
extern int bios_set_cursor_packed();
extern int bios_set_cursor();
extern int dos_con_in_noecho();
extern int bios_put_text();
extern int aztec_printf();
extern char bell_character_format[];

/* Emit the bell character without moving the text cursor. */
console_bell()
{
	int saved_cursor;

	saved_cursor = bios_get_cursor_packed();
	/* The format string consumes 7 as the bell character. */
	aztec_printf(bell_character_format, 7);
	bios_set_cursor_packed(saved_cursor);
}

/* Read a bounded signed decimal value while echoing it at the cursor. */
read_integer_at(row, column, max_digits)
int row;
int column;
int max_digits;
{
	char echo_buffer[2];
	int input_char;
	int negative;
	int accumulator;
	int digit_count;

	echo_buffer[0] = 0;
	echo_buffer[1] = 0;
	bios_set_cursor(row, column);
	accumulator = 0;
	digit_count = 0;
	negative = 0;
	/* Collect characters until Enter terminates the value. */
	for (;;) {
		input_char = dos_con_in_noecho();
		/* Enter finishes; backspace edits the last accepted character. */
		if (input_char == '\r')
			break;
		if (input_char == '\b') {
			if (digit_count > 0) {
				--digit_count;
				if (digit_count == 0)
					negative = 0;
				accumulator /= 10;
				--column;
				bios_set_cursor(row, column);
				echo_buffer[0] = ' ';
				bios_put_text(echo_buffer);
				bios_set_cursor(row, column);
			} else {
				console_bell();
			}
		/* Ignore extra characters after the caller's digit limit. */
		} else if (digit_count >= max_digits) {
			console_bell();
		/* Accept a minus sign only before the first character. */
		} else if (digit_count == 0 && input_char == '-') {
			++digit_count;
			negative = 1;
			echo_buffer[0] = input_char;
			bios_put_text(echo_buffer);
			++column;
		/* Accumulate and echo decimal digits. */
		} else if (input_char >= '0' && input_char <= '9') {
			++digit_count;
			accumulator = accumulator * 10 + input_char - '0';
			echo_buffer[0] = input_char;
			bios_put_text(echo_buffer);
			++column;
		} else {
			console_bell();
		}
	}
	if (negative == 1)
		return -accumulator;
	return accumulator;
}
