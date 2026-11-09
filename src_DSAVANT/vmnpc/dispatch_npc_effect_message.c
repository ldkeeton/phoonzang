/* Dispatches special markers in NPC response text. */
#include "msg.h"
#include "structs/npc.h"
extern char npc_empty_text_14[];
extern struct npc_dialog_state npc_dialog;

extern char npc_effect_message_buffer[80];
extern char npc_substitution_text[80];
extern int npc_member_index;
extern int load_message_string(), append_npc_message_text();
extern int run_npc_action_record(), show_faction_attitude_message();

/* Dispatch the special marker at the start of an NPC response string. */
dispatch_npc_effect_message(message_index, response_text_index)
int message_index;
int response_text_index;
{
	load_message_string(message_index, npc_effect_message_buffer);
	load_message_string(response_text_index, npc_substitution_text);
	if (npc_effect_message_buffer[0] == 0) {
		append_npc_message_text(MSG_I_DON_T_KNOW_1616,
			npc_substitution_text);
	} else if (npc_effect_message_buffer[0] == '$') {
		if (run_npc_action_record(npc_member_index,
			(unsigned char)npc_effect_message_buffer[1]) == 1)
			npc_dialog.response_flag_1 = 1;
	} else if (npc_effect_message_buffer[0] == '&') {
		show_faction_attitude_message(
			(unsigned char)npc_effect_message_buffer[1] - 1);
	} else {
		if (npc_effect_message_buffer[0] == '-')
			message_index -= (unsigned char)npc_effect_message_buffer[1];
		append_npc_message_text(message_index, npc_empty_text_14);
	}
}
