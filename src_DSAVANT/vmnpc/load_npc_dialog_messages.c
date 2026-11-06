/* Loads a consecutive range of NPC dialogue strings into the message table. */

extern char npc_dialog_synonym_lists[38][50];
extern int load_message_string();

/* Fills one 50-byte table row for each requested message ID. */
load_npc_dialog_messages(first_message, message_count)
int first_message, message_count;
{
	int message_index;

	for (message_index = 0; message_index < message_count; ++message_index)
		load_message_string(first_message + message_index,
			npc_dialog_synonym_lists[message_index]);
}
