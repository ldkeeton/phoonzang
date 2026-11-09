/* Copy the plain prefix of a dialog choice text. */
#include "structs/npc.h"
extern struct npc_message_option npc_dialog_choice_entries[];
extern int strpos();
extern int aztec_strncpy();

/* Stop at the first supported NPC name marker. */
copy_npc_choice_text_prefix(record_index, destination)
int record_index;
char *destination;
{
	int marker_index;

	marker_index = strpos(npc_dialog_choice_entries[record_index].text, 37);
	if (marker_index >= 0) {
		aztec_strncpy(destination, npc_dialog_choice_entries[record_index].text,
			marker_index);
		destination[marker_index] = 0;
	} else {
		marker_index = strpos(npc_dialog_choice_entries[record_index].text, 64);
		if (marker_index >= 0) {
			aztec_strncpy(destination, npc_dialog_choice_entries[record_index].text,
				marker_index);
			destination[marker_index] = 0;
		} else {
			marker_index = strpos(npc_dialog_choice_entries[record_index].text, 94);
			if (marker_index >= 0) {
				aztec_strncpy(destination,
					npc_dialog_choice_entries[record_index].text,
					marker_index);
				destination[marker_index] = 0;
			}
		}
	}
}
