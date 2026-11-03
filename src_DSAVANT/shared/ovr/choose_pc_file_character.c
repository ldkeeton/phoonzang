/* Build the list of eligible PC-file characters and return the selected
   record. */
#include "msg.h"
#include "structs/pcrec.h"
#include "structs/roster.h"

struct known_spell_names_rec {
	char f_0000[10];
	char f_000a;
	char f_000b;
	char f_000c[3];
	char f_000f[5];
};

extern struct roster_state_view pc_file_record_base_hi;
extern int pc_file_record_count, spell_dialog_result;
extern struct known_spell_names_rec known_spell_names[];
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
	for (record_index = 0; record_index < pc_file_record_count;
		record_index++) {
		/* Only roster entries marked available are included. */
		if (pc_file_record_base_hi.availability[record_index] == 1) {
			transfer_pc_file_record(&pc_file_record, record_index, 0);
			aztec_strcpy(known_spell_names[option_count].f_0000,
				pc_file_record.name);
			name_length = aztec_strlen(
				known_spell_names[option_count].f_0000);
			/* Pad the ten-character display name before the metadata fields. */
			while (name_length < 10) {
				known_spell_names[option_count].f_0000[name_length] = ' ';
				name_length++;
			}
			load_message_string(MSG_MALE + pc_file_record.gender,
				message_text);
			known_spell_names[option_count].f_000a = message_text[0];
			known_spell_names[option_count].f_000b = '-';
			load_message_string(MSG_CLASS_BASE + pc_file_record.profession,
				message_text);
			/* The list row displays the first three profession-name characters. */
			for (name_length = 0; name_length < 3; name_length++)
				known_spell_names[option_count].f_000c[name_length] =
					message_text[name_length];
			known_spell_names[option_count].f_000f[0] = 0;
			selected_record_indices[option_count] = record_index;
			option_count++;
		}
	}

	/* The dialog's success value is 1; its result indexes the compact list. */
	if (option_count > 0) {
		if (pick_list_entry_dialog(prompt_message, 0, 1, 1,
				option_count) == 1) {
			dialog_result = spell_dialog_result;
			if (dialog_result != -1)
				return selected_record_indices[dialog_result];
		}
	}
	return -1;
}
