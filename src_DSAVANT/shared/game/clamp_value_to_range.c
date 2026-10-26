/* Select the first bound pair meeting the requested value, then clamp its
   sum. */
struct bound_pair {
	int lower; /* +0x00: lower clamp bound */
	int upper; /* +0x02: upper clamp bound */
};
extern struct bound_pair value_clamp_ranges[];
extern int clamp_between();

clamp_value_to_range(value, addend)
int value, addend;
{
	int pair;

	pair = 0;
	while (value_clamp_ranges[pair].upper < value)
		++pair;
	return clamp_between(value + addend,
		value_clamp_ranges[pair].lower, value_clamp_ranges[pair].upper);
}
