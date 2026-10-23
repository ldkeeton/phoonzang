/* formats a signed int as decimal text into the caller's buffer */
format_int_decimal(value, buf)
int value;
char *buf;
{
	format_long_decimal((long)value, buf);	/* widen before the long formatter */
}
