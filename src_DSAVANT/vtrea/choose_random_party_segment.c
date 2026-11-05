/* choose a random contiguous group of party members and report its bounds */

extern int party_char_count;

/* returns the random group start, its size, and a random member index */
choose_random_party_segment(group_start_out, group_size_out,
	random_member_out, minimum_length, length_range)
int *group_start_out;
int *group_size_out;
int *random_member_out;
int minimum_length;
int length_range;
{
	int group_start, group_size, random_member;

	group_size = random_below(length_range + 1) + minimum_length;
	if (group_size > party_char_count)
		group_size = party_char_count;
	group_start = random_below(party_char_count - group_size + 1);
	random_member = group_start + random_below(group_size);
	*group_start_out = group_start;
	*group_size_out = group_size;
	*random_member_out = random_member;
}
