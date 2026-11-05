/* Initialize all 96 karma affinity bytes for a party member. */
extern int set_karma_affinity();

init_member_karma_affinities(character)
int character;
{
	int entry_index;

	for (entry_index = 0; entry_index < 96; entry_index++)
		set_karma_affinity(character, entry_index, 9);
}
