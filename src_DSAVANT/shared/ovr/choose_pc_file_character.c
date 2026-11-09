/* Build the list of eligible PC-file characters and return the selected
   record. */
#include "msg.h"
#include "structs/pcrec.h"
#include "structs/filehdr.h"
extern struct pc_file_header pc_file_header;

extern int dialog_selection;
/* Each 20-byte row reads "NAME      M-FIG": the name padded to ten,
   gender letter, '-', three profession letters. */
extern char list_entry_text[][20];
extern int transfer_pc_file_record(), aztec_strcpy(), aztec_strlen();
extern int load_message_string(), pick_list_entry_dialog();

choose_pc_file_character(prompt_message)
int prompt_message;
{
	int record_index;
	int name_length;
	int dialog_result;
	int option_count;
	struct pc_rec pc_file_record;
	char message_text[80];
	int selected_record_indices[16];

	option_count = 0;
	for (record_index = 0; record_index < pc_file_header.record_count;
		record_index++) {
		/* Only roster entries marked available are included. */
		if (pc_file_header.availability[record_index] == 1) {
			transfer_pc_file_record(&pc_file_record, record_index, 0);
			aztec_strcpy(list_entry_text[option_count],
				pc_file_record.name);
			name_length = aztec_strlen(
				list_entry_text[option_count]);
			/* Pad the ten-character display name before the metadata fields. */
			while (name_length < 10) {
				list_entry_text[option_count][name_length] = ' ';
				name_length++;
			}
			load_message_string(MSG_MALE + pc_file_record.gender,
				message_text);
			list_entry_text[option_count][10] = message_text[0];
			list_entry_text[option_count][11] = '-';
			load_message_string(MSG_CLASS_BASE + pc_file_record.profession,
				message_text);
			/* The list row displays the first three profession-name characters. */
			for (name_length = 0; name_length < 3; name_length++)
				list_entry_text[option_count][12 + name_length] =
					message_text[name_length];
			list_entry_text[option_count][15] = 0;
			selected_record_indices[option_count] = record_index;
			option_count++;
		}
	}

	/* The dialog's success value is 1; its result indexes the compact list. */
	if (option_count > 0) {
		if (pick_list_entry_dialog(prompt_message, 0, 1, 1,
				option_count) == 1) {
			dialog_result = dialog_selection;
			if (dialog_result != -1)
				return selected_record_indices[dialog_result];
		}
	}
	return -1;
}
