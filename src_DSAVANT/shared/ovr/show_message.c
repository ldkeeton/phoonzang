/* Load the selected message and display it in a centered text band. */

extern int load_message_string(), show_centered_text_band();

show_message(message_id)
int message_id;
{
	char message_text[80];

	/* The local buffer matches the message loader's text output. */
	load_message_string(message_id, message_text);
	show_centered_text_band(message_text);
}
