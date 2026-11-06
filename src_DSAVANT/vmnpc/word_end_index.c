/* finds the end of the next non-space word in a string */

word_end_index(text, start)
char *text;
int start;
{
	int length;

	length = 0;
	while (text[length + start] != 0 && text[length + start] != ' ')
		++length;
	if (length == 0)
		return -1;
	return start + length;
}
