/* Rename a saved character record after checking that its name is
   available. */
extern struct pc_rec party_records[];
#include "structs/pcrec.h"
#include "msg.h"
extern int display_pc_file_record_preview();
extern int wait_for_hotspot_timeout();
extern char *aztec_strcpy();
extern int prompt_character_name();
extern int aztec_strlen();
extern int pc_file_name_is_in_use();
extern int transfer_pc_file_record();
extern int show_pc_file_record_preview();

rename_saved_character(member_index)
int member_index;
{
	char character_name[20];
	int unused_word;
	int another_unused_word;

	display_pc_file_record_preview(0, member_index);
	wait_for_hotspot_timeout(8);
	aztec_strcpy(character_name, party_records);
	if (prompt_character_name(MSG_RENAME_CHARACTER_1166, 0, 1, 1,
		character_name) == 2)
		return;
	if (aztec_strlen(character_name) != 0) {
		if (pc_file_name_is_in_use(character_name) == -1) {
		} else {
			aztec_strcpy(party_records, character_name);
			transfer_pc_file_record(party_records, member_index, 1);
			show_pc_file_record_preview(member_index);
		}
	}
}
