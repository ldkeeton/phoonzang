/* lower-case uppercase letters except at the start of a word */
titlecase_string(text)
unsigned char *text;
{
	int index;
	int previous_char;

	previous_char = 32;
	index = 0;
	/* Inspect each non-terminator byte and retain the previous byte. */
	goto loop_check;
loop_body:
		/* A preceding space preserves the first letter of each word. */
		if (previous_char != 32) {
			/* ASCII uppercase letters differ from lowercase by 0x20. */
			if (text[index] >= 65 && text[index] <= 90)
				text[index] += 32;
		}
		previous_char = text[index];
		index++;
loop_check:
	if (aztec_strlen(text) > index)
		goto loop_body;
}
