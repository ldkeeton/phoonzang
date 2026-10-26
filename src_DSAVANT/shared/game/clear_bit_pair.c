/* Clear the two bits beginning at the requested bit index. */
clear_bit_pair(bits, first_bit)
char *bits;
int first_bit;
{
	int bit_index;

	for (bit_index = first_bit; bit_index < first_bit + 2; bit_index++)
		/* Two consecutive bits. */
		bits[bit_index / 8] &= ~(1 << (bit_index % 8));
}
