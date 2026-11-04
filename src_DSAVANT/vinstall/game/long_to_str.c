/* Converts a signed long value to decimal text. */
extern int reverse_text();

long_to_str(value, text)
long value;
char *text;
{
	long original_value;
	register int index;

	/* Keep the sign of the input before converting its magnitude. */
	original_value = value;
	if (value < 0)
		value = -value;

	/* Store decimal digits in reverse order as repeated division proceeds. */
	index = 0;
	do {
		text[index++] = (value % 10) + '0';
	} while ((value = value / 10) > 0);

	/* Add a minus sign only when the saved input was negative. */
	if (original_value < 0)
		text[index++] = '-';
	text[index] = 0;
	reverse_text(text);
}
