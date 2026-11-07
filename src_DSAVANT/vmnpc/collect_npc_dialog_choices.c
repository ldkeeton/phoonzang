/* collects the available entries from two consecutive NPC message lists */
#include "structs/npc.h"

extern struct npc_message_option npc_dialog_choice_entries[];
extern char npc_choice_message_buffer[80];
extern int message_not_found;
extern int npc_first_choice_count, npc_total_choice_count;
extern int load_message_string(), strcpy();

collect_npc_dialog_choices(first_message, second_message)
int first_message, second_message;
{
	int option_count;

	option_count = 0;
	do {
		load_message_string(first_message, npc_choice_message_buffer);
		if (message_not_found == 0) {
			npc_dialog_choice_entries[option_count].message_code =
				(unsigned char)npc_choice_message_buffer[0] - 32;
			strcpy(npc_dialog_choice_entries[option_count].text,
				npc_choice_message_buffer + 1);
			first_message += 5;
			++option_count;
		}
	} while (message_not_found == 0);
	npc_first_choice_count = option_count;
	do {
		load_message_string(second_message, npc_choice_message_buffer);
		if (message_not_found == 0) {
			npc_dialog_choice_entries[option_count].message_code =
				(unsigned char)npc_choice_message_buffer[0] - 32;
			strcpy(npc_dialog_choice_entries[option_count].text,
				npc_choice_message_buffer + 1);
			second_message += 5;
			++option_count;
		}
	} while (message_not_found == 0);
	npc_total_choice_count = option_count;
}
