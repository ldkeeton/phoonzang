/* Prompt for a party member name and save the replacement. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int call_show_area();
extern int strcpy();
extern int prompt_character_name();
extern int strlen();

/* Rename one party member after the player confirms the prompt. */
int rename_party_member(member_index)
int member_index;
{
	char entered_name[14];

	call_show_area(0, 0, 319, 199);
	strcpy(entered_name + 4, party_records[member_index].name);
	if (prompt_character_name(MSG_RENAME_CHARACTER_1166, 0, 1, 1,
		entered_name + 4) == 2)
		return;
	if (strlen(entered_name + 4) != 0)
		strcpy(party_records[member_index].name, entered_name + 4);
}
