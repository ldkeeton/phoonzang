extern unsigned char answer_word[];
extern int answer_length, code_check_word, answer_check_word;
extern char code_table[];

/* checks the entered answer word against the code table; publishing the code
   check word on the last matched slot */
verify_answer_word()
{
	int i;

	for (i = 0; i < answer_length; i++) {
		if ((char)((answer_word[i] * 0x25 + i * 0x11) % 0xff)
		    != code_table[0x1a + i])
			return 0;
		if (i == answer_length - 1)
			answer_check_word = code_check_word;
	}
	return 1;
}
