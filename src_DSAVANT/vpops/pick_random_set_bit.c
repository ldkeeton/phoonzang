/* Pick a random set bit (0..7) of the byte bitset: walk the bits round and
   round and stop on the n-th set one, n = 1..8 at random.  An empty bitset
   gives up after 100 clear bits. */
extern int random_below();
extern int test_bit();

pick_random_set_bit(bitset)
char *bitset;
{
	int bit_index, set_left, clear_seen;

	bit_index = -1;
	clear_seen = 0;
	set_left = random_below(8) + 1;
	do {
		bit_index = (bit_index + 1) % 8;
		if (test_bit(bitset, bit_index) == 1)
			set_left--;
		else
			clear_seen++;
	} while (set_left > 0 && clear_seen < 100);
	return bit_index;
}
