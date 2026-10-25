/* Replace every slash in the string with a space. */
replace_slashes_with_spaces(text)
char *text;
{
	int slash_pos;

	while ((slash_pos = strpos(text,
		'/')) != -1)	/* Continue until no slash remains. */
		text[slash_pos] = ' ';
}
