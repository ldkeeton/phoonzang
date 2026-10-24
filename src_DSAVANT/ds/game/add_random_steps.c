/* returns base plus count random steps, each in 1..span */
struct step_spec {
	int base;		/* +0: starting value */
	unsigned char count;	/* +2: number of steps */
	unsigned char span;	/* +3: range passed to random_below */
};

extern int random_below();

int
add_random_steps(spec)
struct step_spec spec;
{
	int total;

	total = spec.base;
	while (spec.count > 0) {			/* count is unsigned */
		total += random_below(spec.span) + 1;	/* random_below yields 0..span-1 */
		spec.count--;
	}
	return total;
}
