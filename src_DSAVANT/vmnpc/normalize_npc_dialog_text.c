/* Normalize punctuation in text used by an NPC dialog. */
extern int npc_dialog_text_has_question;
extern int aztec_strlen();

/* Replace punctuation with spaces and record whether a question marker
   occurred. */
normalize_npc_dialog_text(text)
char *text;
{
	int index, character;

	npc_dialog_text_has_question = 0;
	for (index = 0; index < aztec_strlen(text); ++index) {
		character = (unsigned char)text[index];
		if (character == 63) {
			npc_dialog_text_has_question = 1;
			text[index] = ' ';
		} else if (character == '!' || character == '.' || character == ',') {
			text[index] = ' ';
		}
	}
}
