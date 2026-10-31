/* Publish the check value when the clue character matches and answers
   remain. */
extern unsigned char code_characters[];
extern unsigned code_char_index;
extern int answer_length;
extern int code_check_value;
extern int code_check_word;

publish_code_check_word()
{
	/* The first clue character is compared with the selected character index. */
	if (code_characters[0] == code_char_index) {
		/* Only publish the value while the answer has remaining slots. */
		if (answer_length > 0)
			code_check_word = code_check_value;
	}
}
