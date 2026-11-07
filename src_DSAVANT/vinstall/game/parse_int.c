/* Parse a string as an integer using the Aztec library conversion. */
extern int atoi();

parse_int(text)
char *text;
{
	return atoi(text);
}
