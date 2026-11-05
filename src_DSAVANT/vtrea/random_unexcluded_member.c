/* Pick a random party member not flagged in excluded[], trying at most 24
   times. */
extern int party_char_count;
extern int random_below();

/* Return the member, or -1 when the last pick is still excluded. */
random_unexcluded_member(excluded)
int *excluded;
{
	int selected, tries;

	tries = 0;
	do {
		selected = random_below(party_char_count);
		tries++;
	} while (tries < 24 && excluded[selected] != 0);
	return excluded[selected] != 0 ? -1 : selected;
}
