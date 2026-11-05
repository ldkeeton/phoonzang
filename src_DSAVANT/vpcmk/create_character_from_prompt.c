/* Prompt for a character name and create the new party member. */
#include "msg.h"

extern int prompt_character_name();
extern int character_creation_mode;
extern int pc_file_name_is_in_use();
extern int create_new_party_member();

create_character_from_prompt(file_record_index)
int file_record_index;
{
	char character_name[20];

	character_name[0] = 0;
	if (prompt_character_name(MSG_CREATE_NEW_CHARACTER, 0, 1, 1,
		character_name) == 2)
		return;
	character_creation_mode = 0;
	if (character_name[0] != 0) {
		if (pc_file_name_is_in_use(character_name) == -1) {
		} else {
			create_new_party_member(character_name, file_record_index);
		}
	}
}
