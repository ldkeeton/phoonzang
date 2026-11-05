/* Prints a long integer with leading spaces up to the requested width. */
extern char long_alignment_space[];
extern int aztec_strlen();
extern int bios_put_text();
extern int long_to_str();

put_long_right_aligned(value, width)
long value;
int width;
{
	char number[255];
	char output[2];
	int index;

	long_to_str(value, number);
	/* Keep the output string terminated while replacing its first byte. */
	output[0] = 0;
	output[1] = 0;

	/* Emit spaces until the number fits the requested width. */
	while (aztec_strlen(number) - width < 0) {
		bios_put_text(long_alignment_space);
		width--;
	}

	/* Print each character from the first position that fits. */
	for (index = aztec_strlen(number) - width; aztec_strlen(number) > index;
	    index++) {
		output[0] = number[index];
		bios_put_text(output);
	}
}
