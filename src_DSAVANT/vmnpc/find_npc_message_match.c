/* Matches a player's NPC reply against a message's alternatives. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int load_message_string(), str_subst_char();
extern int display_npc_message_sequence(), edit_npc_dialog_text_line(),
	expand_npc_dialog_text();
extern int strlen(), strpos(), strncmp();

/* Reads replies until one matches a message alternative. */
find_npc_message_match(member_index, message_number, return_match)
int member_index;
int message_number;
int return_match;
{
	char *entry_cursor;
	char entry[80];
	char prompt[20];
	char message[80];
	int message_offset;
	int slash_offset;

	load_message_string(message_number, message);
	load_message_string(MSG_1513, prompt);
	str_subst_char(prompt, &party_records[member_index], '^');
	for (;;) {
		display_npc_message_sequence(message_number + 2, 0);
		edit_npc_dialog_text_line(entry, prompt);
		message_offset = strlen(entry);
		entry[message_offset] = ' ';
		entry[message_offset + 1] = 0;
		expand_npc_dialog_text(entry);
		message_offset = 0;
		do {
			slash_offset = strpos(message + message_offset + 1, '/');
			entry_cursor = entry;
			while (*entry_cursor != 0) {
				if (strncmp(entry_cursor, message + message_offset + 1,
					slash_offset) == 0)
					return (unsigned char)message[message_offset];
				entry_cursor++;
			}
			message_offset += slash_offset + 2;
		} while (message[message_offset] != 0);
		if (return_match == 1)
			return 1;
	}
}
