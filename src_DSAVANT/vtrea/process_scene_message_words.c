/* Split treasure text at spaces and expand underscores to spaces. */
extern int strpos();
extern int process_treasure_text();

/* Process each space-delimited treasure message word. */
process_scene_message_words(text)
char *text;
{
	int space_index;
	int underscore_index;

	for (;;) {
		space_index = strpos(text, 32);
		if (space_index == -1)
			break;
		text[space_index] = 0;
		while ((underscore_index = strpos(text, 95)) != -1)
			text[underscore_index] = 32;
		process_treasure_text(text);
		text += space_index + 1;
	}
	if (*text)
		process_treasure_text(text);
}
