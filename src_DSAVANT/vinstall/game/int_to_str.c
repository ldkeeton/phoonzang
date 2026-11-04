/* Write the signed decimal digits in reverse order, then reverse the
   buffer. */
extern int reverse_text();

int_to_str(value, text)
int value;
char *text;
{
	register int length;
	register int sign;

	if ((sign = value) < 0)
		value = -value;
	length = 0;
	do {
		text[length++] = value % 10 + '0';
	} while ((value /= 10) > 0);
	if (sign < 0)
		text[length++] = '-';
	text[length] = 0;
	reverse_text(text);
}
