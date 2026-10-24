/* stores a word and a two-char pair into the globals at 0xcf6/0xcf8 and
   returns the address of the word */
struct word_rec {
	int w;
};
struct char_pair {
	char lo, hi;
};

extern struct word_rec saved_word;
extern struct char_pair saved_pair;

int *
store_word_and_pair(lo, hi, value)
char lo, hi;
int value;
{
	struct char_pair pair;
	struct word_rec word;

	pair.lo = lo;
	pair.hi = hi;
	word.w = value;
	saved_word = word;
	saved_pair = pair;
	return (int *)&saved_word;
}
