/* replace the first occurrence of a marker character in a string, in place,
   with the whole of a substitute string */

extern aztec_strcpy();

str_subst_char(text, subst, marker)
unsigned char *text;
char *subst;
char marker;
{
	int text_index, subst_index, out_index;
	char result[255];

	text_index = 0;
	out_index = 0;

	/* Copy the text, expanding the marker where it is found. */
	while (text[text_index]) {
		if (text[text_index] == marker) {
			subst_index = 0;
			while (subst[subst_index]) {
				result[out_index] = subst[subst_index];
				out_index++;
				subst_index++;
			}

			/* Clearing the marker makes only the first match expand. */
			marker = 0;
			text_index++;
		} else {
			result[out_index] = text[text_index];
			out_index++;
			text_index++;
		}
	}

	/* Terminate the result and write it back over the original text. */
	result[out_index] = 0;
	aztec_strcpy(text, result);
}
