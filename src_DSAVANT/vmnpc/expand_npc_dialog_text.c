/* Expands each NPC dialog word through its alias table. */
extern int aztec_strcpy(), aztec_strncpy(), aztec_strlen();
extern int word_end_index();
extern int replace_npc_dialog_alias();

/* Rewrites output with the expanded NPC dialog words. */
expand_npc_dialog_text(output)
char *output;
{
	int char_index;
	char source[80];
	char word_buffer[80];
	int word_start;
	int word_end;
	int output_length;

	aztec_strcpy(source, output);
	output_length = 0;
	word_start = 0;
	for (;;) {
		while (source[word_start] == ' ')
			++word_start;
		word_end = word_end_index(source, word_start);
		if (word_end != -1) {
			aztec_strncpy(word_buffer, source + word_start,
				word_end - word_start);
			word_buffer[word_end - word_start] = ' ';
			word_buffer[word_end - word_start + 1] = 0;
			replace_npc_dialog_alias(word_buffer);
			for (char_index = 0; char_index < aztec_strlen(word_buffer);
				++char_index)
				output[output_length + char_index] = word_buffer[char_index];
			output_length += aztec_strlen(word_buffer);
		}
		word_start = word_end;
		if (word_end == -1)
			break;
	}
	output[output_length] = 0;
}
