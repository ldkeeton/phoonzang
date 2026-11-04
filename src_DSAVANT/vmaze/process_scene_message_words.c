/* Word-wrap maze message text: split on spaces; "_" is a non-breaking
   space. */
extern int strpos();
extern int process_maze_message_controls();

process_scene_message_words(message_text)
char *message_text;
{
	int word_length;
	int underscore_position;

	/* Process each space-delimited word in turn. */
	for (;;) {
		/* No more spaces: the rest is the last word (its "_" are left as is). */
		word_length = strpos(message_text, 32); /* ASCII space */
		if (word_length == -1)
			break;
		message_text[word_length] = 0;

		/* "_" joins words: turn it into a space inside this word. */
		for (;;) {
			underscore_position = strpos(message_text, 95); /* ASCII underscore */
			if (underscore_position == -1)
				break;
			message_text[underscore_position] = 32;
		}
		process_maze_message_controls(message_text);
		message_text += word_length;
		message_text += 1;
	}
	/* Process a nonempty final word after the last space. */
	if (*message_text != 0)
		process_maze_message_controls(message_text);
}
