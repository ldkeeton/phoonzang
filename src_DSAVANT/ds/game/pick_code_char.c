/* picks a random clue-character index and records it for the code check */
extern int random_below();
extern unsigned char code_characters[];	/* 100-byte clue-character table */
extern unsigned char code_char_message_index;
extern unsigned code_char_index;

pick_code_char()
{
	code_char_index = random_below(75);		/* 0..74 */
	code_characters[0] = code_char_index;
		/* publish_code_check_word compares this byte */
	code_char_message_index = code_char_index;	/* selects message 2500+n */
}
