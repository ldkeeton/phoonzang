/* Remove party members from the end until the count reaches zero. */
extern int party_char_count;
extern int remove_party_member();

remove_all_party_members()
{
	/* The routine repeatedly removes the last currently indexed member. */
remove_next_member:
	if (party_char_count > 0) {
		remove_party_member(party_char_count - 1, 0);
		goto remove_next_member;
	}
}
