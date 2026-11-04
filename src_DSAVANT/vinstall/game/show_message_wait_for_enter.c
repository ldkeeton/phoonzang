/* Displays a centered message, waits for Enter, then shows the installer
   message. */
extern int aztec_strlen();
extern int put_text_at();
extern int console_bell();
extern int dos_con_in_noecho();
extern char installer_message_buffer[];
extern char message_line_blank_before[];
extern char message_line_blank_after[];

show_message_wait_for_enter(message)
char *message;
{
	/* Clear row 22 before drawing the supplied message. */
	put_text_at(22, 0, message_line_blank_before);
	put_text_at(22, 40 - (aztec_strlen(message) + 1) / 2, message);

	console_bell();

	/* Keep reading keys until carriage return is entered. */
	while (dos_con_in_noecho() != 13)
		;

	/* Clear the row and display the installer message, centered the same way. */
	put_text_at(22, 0, message_line_blank_after);
	put_text_at(22, 40 - (aztec_strlen(installer_message_buffer) + 1) / 2,
		installer_message_buffer);
}
