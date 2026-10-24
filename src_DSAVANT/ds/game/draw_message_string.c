/* loads a message by number into a local buffer and draws it in one color */
draw_message_string(message_number, color)
int message_number, color;
{
	char message[255];

	load_message_string(message_number, message);
	draw_text_glyphs(message, color);
}
