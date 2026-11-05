/* Split a scene message into fragments and normalize underscores. */
extern int strpos();
extern int append_scene_message_fragment();

int process_scene_message_words(text)
unsigned char *text;
{
	int space_position;
	int underscore_position;

	for (;;) {
		space_position = strpos(text, 32);
		if (space_position == -1)
			break;
		text[space_position] = 0;
		for (;;) {
			underscore_position = strpos(text, 95);
			if (underscore_position == -1)
				break;
			text[underscore_position] = 32;
		}
		append_scene_message_fragment(text);
		text += space_position + 1;
	}
	if (*text != 0)
		append_scene_message_fragment(text);
}
