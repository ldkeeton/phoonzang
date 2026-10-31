/* Format a signed long as decimal digits in the caller's buffer. */
extern reverse_string();

format_long_decimal(value, buffer)
long value;
char *buffer;
{
	int digit_count;
	long original;

	original = value;
	/* Work with the magnitude while retaining the original sign. */
	if (value < 0)
		value = -value;

	digit_count = 0;
	/* Emit least significant digits first; reverse_string fixes the order
	   afterward. */
	do {
		buffer[digit_count++] = (value % 10) + '0';
	} while ((value /= 10) > 0);

	/* Add the sign after the digits so it stays at the start when reversed. */
	if (original < 0)
		buffer[digit_count++] = '-';
	buffer[digit_count] = 0;
	reverse_string(buffer);
}
