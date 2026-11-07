/* Copy the plain prefix of a dialog choice text. */
extern char npc_dialog_choice_entry_text[];
extern int strpos();
extern int strncpy();

/* Stop at the first supported NPC name marker. */
copy_npc_choice_text_prefix(record_index, destination)
int record_index;
char *destination;
{
	int marker_index;

	marker_index = strpos(npc_dialog_choice_entry_text + 20 * record_index, 37);
	if (marker_index >= 0) {
		strncpy(destination, npc_dialog_choice_entry_text + 20 * record_index,
			marker_index);
		destination[marker_index] = 0;
	} else {
		marker_index = strpos(npc_dialog_choice_entry_text + 20 * record_index, 64);
		if (marker_index >= 0) {
			strncpy(destination, npc_dialog_choice_entry_text + 20 * record_index,
				marker_index);
			destination[marker_index] = 0;
		} else {
			marker_index = strpos(npc_dialog_choice_entry_text + 20 * record_index, 94);
			if (marker_index >= 0) {
				strncpy(destination,
					npc_dialog_choice_entry_text + 20 * record_index,
					marker_index);
				destination[marker_index] = 0;
			}
		}
	}
}
