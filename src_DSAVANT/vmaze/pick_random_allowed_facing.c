/* Pick a random facing (0-3) whose allowed-direction flag is nonzero. */
extern int random_below();

pick_random_allowed_facing(allowed_facings)
int *allowed_facings;
{
	int facing;

	facing = random_below(4);
	while (allowed_facings[facing] == 0) {
		/* Turn to the next facing until an allowed one is found. */
		facing = (facing + 1) % 4;
	}
	return facing;
}
