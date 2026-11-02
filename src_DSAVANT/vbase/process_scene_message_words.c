/* Split scene text at spaces and process each word. */
extern int strpos();
extern int process_scene_message_controls();

process_scene_message_words(message)
char *message;
{
	int word_length;
	int underscore_index;

	/* Split on spaces and process each completed word. */
	for (;;) {
		word_length = strpos(message, ' ');
		if (word_length == -1)
			break;
		message[word_length] = 0;

		/* Replace underscores in this word with spaces. */
		for (;;) {
			underscore_index = strpos(message, '_');
			if (underscore_index == -1)
				break;
			message[underscore_index] = ' ';
		}
		process_scene_message_controls(message);
		message += word_length + 1;
	}

	/* Process the final nonempty part, which had no following space. */
	if (*message != 0)
		process_scene_message_controls(message);
	return;
}
