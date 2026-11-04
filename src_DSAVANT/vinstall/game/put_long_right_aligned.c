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

	index = aztec_strlen(number) - width;
	/* Print each character from the first position that fits. */
	goto check_character;
print_character:
	output[0] = number[index];
	bios_put_text(output);
	index++;
check_character:
	if (aztec_strlen(number) > index)
		goto print_character;
}
