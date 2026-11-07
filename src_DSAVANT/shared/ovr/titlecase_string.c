/* lower-case uppercase letters except at the start of a word */
titlecase_string(text)
unsigned char *text;
{
	int index;
	int previous_char;

	previous_char = 32;
	/* Inspect each non-terminator byte and retain the previous byte. */
	for (index = 0; strlen(text) > index; index++) {
		/* A preceding space preserves the first letter of each word. */
		if (previous_char != 32) {
			/* ASCII uppercase letters differ from lowercase by 0x20. */
			if (text[index] >= 65 && text[index] <= 90)
				text[index] += 32;
		}
		previous_char = text[index];
	}
}
