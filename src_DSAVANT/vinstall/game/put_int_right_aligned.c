/* Prints an integer with leading spaces up to the requested width. */
extern char single_space_text[];
extern int aztec_strlen();
extern int bios_put_text();
extern int int_to_str();

put_int_right_aligned(value, width)
int value;
int width;
{
	char number[255];
	char output[2];
	int index;

	int_to_str(value, number);
	/* Keep the output buffer terminated while replacing its first byte. */
	output[0] = 0;
	output[1] = 0;

	/* Emit spaces until the number fits the requested width. */
	while (aztec_strlen(number) - width < 0) {
		bios_put_text(single_space_text);
		width--;
	}

	index = aztec_strlen(number) - width;
	/* Print the remaining characters one at a time. */
	goto check_character;
print_character:
	output[0] = number[index];
	bios_put_text(output);
	index++;
check_character:
	if (aztec_strlen(number) > index)
		goto print_character;
}
