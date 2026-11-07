/* Reverse a null-terminated string in place. */
extern int strlen();

reverse_text(text)
char *text;
{
	int last;
	register int current;
	register int first;

	/* Move inward from both ends, swapping each pair of characters. */
	for (first = 0, last = strlen(text) - 1; first < last;
	    first++, last--) {
		current = text[first];
		text[first] = text[last];
		text[last] = current;
	}
}
