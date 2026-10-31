/* Return a random remainder in the requested positive range. */

extern int random_15bit();

random_below(limit)
int limit;
{
	/* A nonpositive divisor returns zero without drawing a value. */
	return limit > 0 ? random_15bit() % limit : 0;
}
