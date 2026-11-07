/* Wraps NPC text into highlighted display lines. */
extern int strcpy(), strncpy(), strcat(), strlen();
extern int strpos(), apply_text_control_codes(), measure_text_width();
extern int reveal_text_line();
extern int text_line_index;
extern char text_line_buffer[];
extern int text_line_color[];
extern char text_space[];

wrap_npc_message(text)
char *text;
{
	int space_position;
	int text_length;
	int word_length;
	char *cursor;
	char pending_line[128];
	char candidate_line[128];
	char word[80];

	cursor = text;
	text_length = strlen(text);
	text[text_length + 1] = 0;
	pending_line[0] = 0;
	while (*cursor != 0) {
		space_position = strpos(cursor, ' ');
		word_length = space_position >= 0 ? space_position : strlen(cursor);
		strncpy(word, cursor, word_length);
		word[word_length] = 0;
		apply_text_control_codes(word, pending_line);
		strcpy(candidate_line, pending_line);
		if (pending_line[0] != 0)
			strcat(candidate_line, text_space);
		strcat(candidate_line, word);
		text_length = measure_text_width(candidate_line, 2);
		if (text_length > 184) {
			strcpy(text_line_buffer + (text_line_index << 7),
				pending_line);
			text_line_color[text_line_index] = 2;
			reveal_text_line();
			next_text_line();
			strcpy(pending_line, word);
		} else {
			strcpy(pending_line, candidate_line);
		}
		cursor += word_length + 1;
	}
	strcpy(text_line_buffer + (text_line_index << 7), pending_line);
	text_line_color[text_line_index] = 2;
}
