/* Pick an index 0..7 from eight percentage weights; 4 if they sum below
   the roll. */
extern int random_below();

int choose_weighted_index(weights)
unsigned char *weights;
{
	int index;
	int remaining;

	remaining = random_below(100);
	for (index = 0; index < 8; index++) {
		if (weights[index] > remaining)
			return index;
		remaining -= weights[index];
	}
	return 4;
}
