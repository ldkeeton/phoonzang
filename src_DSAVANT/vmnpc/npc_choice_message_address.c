/* Returns the source message address for an NPC dialog choice. */
extern int npc_first_choice_count;
extern int npc_first_choice_message_base;
extern int npc_second_choice_message_base;

npc_choice_message_address(choice_index)
int choice_index;
{
	if (choice_index < npc_first_choice_count)
		return npc_first_choice_message_base + choice_index * 5;
	return npc_second_choice_message_base +
		(choice_index - npc_first_choice_count) * 5;
}
