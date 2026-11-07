/* Replaces an NPC dialogue alias with its canonical text. */
extern char npc_dialog_synonym_lists[38][50];
extern int strpos();
extern int strncpy();
extern int strlen();
extern int strncmp();
extern int strcpy();

replace_npc_dialog_alias(text)
char *text;
{
	int message_index;
	int segment_start;
	int segment_length;
	char canonical_text[80];
	char alias_text[80];

	message_index = 0;
	do {
		segment_start = 0;
		segment_length = strpos(npc_dialog_synonym_lists[message_index] +
			segment_start, '/');
		strncpy(canonical_text,
			npc_dialog_synonym_lists[message_index] + segment_start,
			segment_length);
		canonical_text[segment_length] = ' ';
		canonical_text[segment_length + 1] = 0;
		segment_start = segment_length + 1;
		do {
			segment_length = strpos(npc_dialog_synonym_lists[message_index] +
				segment_start, '/');
			strncpy(alias_text,
				npc_dialog_synonym_lists[message_index] + segment_start,
				segment_length);
			alias_text[segment_length] = ' ';
			alias_text[segment_length + 1] = 0;
			segment_start = segment_start + segment_length + 1;
			if (strncmp(text, alias_text, strlen(alias_text)) == 0) {
				strcpy(text, canonical_text);
				return;
			}
		} while (npc_dialog_synonym_lists[message_index][segment_start] != 0);
	} while (++message_index < 38);
}
