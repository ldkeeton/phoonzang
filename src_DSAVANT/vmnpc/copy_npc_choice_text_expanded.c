/* Copy a dialog choice text, expanding its encoded suffix marker. */
extern unsigned char npc_dialog_choice_entry_text[][20];
extern int strpos();
extern int aztec_strncpy();
extern int aztec_strlen();

copy_npc_choice_text_expanded(record_index, destination)
int record_index;
char *destination;
{
	int source_index;
	int trim_count;
	int marker_index;

	marker_index = strpos(npc_dialog_choice_entry_text[record_index], 37);
	if (marker_index >= 0) {
		aztec_strncpy(destination, npc_dialog_choice_entry_text[record_index],
			marker_index + 1);
		destination[marker_index] = 83;
		destination[marker_index + 1] = 0;
	} else {
		marker_index = strpos(npc_dialog_choice_entry_text[record_index], 64);
		if (marker_index >= 0) {
			aztec_strncpy(destination, npc_dialog_choice_entry_text[record_index],
				marker_index);
			destination[marker_index] = 0;
		} else {
			marker_index = strpos(npc_dialog_choice_entry_text[record_index], 94);
			if (marker_index >= 0) {
				trim_count =
					npc_dialog_choice_entry_text[record_index][marker_index + 1] - 48;
				aztec_strncpy(destination, npc_dialog_choice_entry_text[record_index],
					marker_index - trim_count);
				destination[marker_index - trim_count] = 0;
				source_index = marker_index + 2;
				for (;
					source_index < aztec_strlen(npc_dialog_choice_entry_text[record_index]);
					++source_index) {
					trim_count = aztec_strlen(destination);
					destination[trim_count] =
						npc_dialog_choice_entry_text[record_index][source_index];
					destination[trim_count + 1] = 0;
				}
			}
		}
	}
}
