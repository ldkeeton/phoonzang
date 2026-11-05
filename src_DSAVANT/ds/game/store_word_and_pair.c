/* stores a word and a two-char pair into the globals at 0xcf6/0xcf8 and
   returns them */
#include "structs/randstep.h"

/* uninitialized data lays out in reverse: the record comes first */
static struct random_step_spec saved_word;

struct random_step_spec *
store_word_and_pair(lo, hi, value)
char lo, hi;
int value;
{
	struct random_step_spec spec;

	spec.count = lo;
	spec.span = hi;
	spec.base = value;
	saved_word = spec;
	return &saved_word;
}
