/* Parse a string as an integer using the Aztec library conversion. */
extern int aztec_atoi();

parse_int(text)
char *text;
{
	return aztec_atoi(text);
}
