/* Reverse a null-terminated string in place. */
extern int aztec_strlen();

reverse_text(text)
char *text;
{
	int last;
	register int current;
	register int first;

	first = 0;
	last = aztec_strlen(text) - 1;

	/* Test after the first jump so the swap body runs only when needed. */
	goto check_pair;
swap_pair:
	/* Move inward from both ends, swapping each pair of characters. */
	current = text[first];
	text[first] = text[last];
	text[last] = current;
	last--;
	first++;
check_pair:
	if (first < last)
		goto swap_pair;
}
