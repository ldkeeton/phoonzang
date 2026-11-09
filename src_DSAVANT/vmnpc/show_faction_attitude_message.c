/* displays the current faction attitude toward another faction */

#include "msg.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern char faction_attitudes[];
extern char npc_choice_message_buffer[80];
extern char npc_substitution_text[80];
extern int load_message_string(), str_subst_char();
extern int wrap_npc_message(), reveal_text_line(), next_text_line();

/* loads the attitude text, inserts the other faction name, and displays it */
show_faction_attitude_message(other_faction)
int other_faction;
{
	int attitude;

	if (npc_record.faction_index == other_faction) {
		load_message_string(MSG_WE_SHALL_BE_VICTORIOUS,
			npc_choice_message_buffer);
	} else {
		attitude = faction_attitudes[npc_record.faction_index * 12
			+ other_faction];
		if (other_faction == 0)
			attitude = faction_attitudes[npc_record.faction_index];
		load_message_string(1900 + npc_record.faction_index * 3
			+ (attitude < -25 ? 0 : attitude < 25 ? 1 : 2),
			npc_choice_message_buffer);
		load_message_string(MSG_YOU_1950 + other_faction,
			npc_substitution_text);
		str_subst_char(npc_choice_message_buffer,
			npc_substitution_text, '$');
	}
	wrap_npc_message(npc_choice_message_buffer);
	reveal_text_line();
	next_text_line();
}
