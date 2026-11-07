/* Appends a formatted message to the current NPC text line and displays it. */

extern char text_line_buffer[];
extern int text_line_index;
extern char npc_text_separator[];
extern int load_message_string(), str_subst_char();
extern int strcat(), strcpy();
extern int wrap_npc_message(), reveal_text_line(), next_text_line();

append_npc_message_text(message_id, replacement)
int message_id;
char *replacement;
{
	char message[128];

	load_message_string(message_id, message);
	str_subst_char(message, replacement, '^');
	if (text_line_buffer[text_line_index << 7] != 0)
		strcat(text_line_buffer + (text_line_index << 7), npc_text_separator);
	strcat(text_line_buffer + (text_line_index << 7), message);
	strcpy(message, text_line_buffer + (text_line_index << 7));
	wrap_npc_message(message);
	reveal_text_line();
	next_text_line();
}
