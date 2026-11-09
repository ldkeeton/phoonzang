/* Handles the NPC's canned response to the selected dialog action. */
#include "structs/pcrec.h"
#include "msg.h"
#include "structs/npc.h"
extern char npc_empty_text_04[];
extern char npc_empty_text_05[];
extern char npc_empty_text_06[];
extern char npc_empty_text_07[];
extern char npc_empty_text_08[];
extern char npc_empty_text_09[];
extern char npc_empty_text_10[];
extern char npc_empty_text_11[];
extern char npc_empty_text_12[];
extern char npc_empty_text_13[];
extern struct npc_dialog_state npc_dialog;

extern int npc_dialog_secondary_state;
extern int npc_member_index, npc_record_index;
extern int npc_dialog_response_name, npc_dialog_response_wait;
extern int message_delay;
extern struct pc_rec party_records[];
extern int append_npc_message_text(), wait_ticks_abortable();
extern int reset_npc_dialog_response(), random_below();
extern int adjust_npc_attitudes();

resolve_npc_dialog_reaction()
{
	npc_dialog.primary_choice = -1;
	npc_dialog.choice_index = -1;
	npc_dialog.choice_auxiliary = 0;

	switch (npc_dialog.choice_code) {
	case 0:
		append_npc_message_text(npc_dialog_response_name, npc_empty_text_04);
		break;
	case 1:
		if (npc_dialog_response_wait > 0) {
			append_npc_message_text(npc_dialog_response_wait, npc_empty_text_05);
			wait_ticks_abortable(message_delay, 0);
		}
		break;
	case 2:
		append_npc_message_text(MSG_VERY_WELL_THEN, npc_empty_text_06);
		npc_dialog.primary_choice =
			npc_dialog.choice_backup;
		npc_dialog.choice_index =
			npc_dialog.default_choice_index;
		npc_dialog.choice_auxiliary =
			npc_dialog.default_choice_value;
		npc_dialog.response_active = 1;
		reset_npc_dialog_response(npc_dialog.response_value);
		break;
	case 3:
		append_npc_message_text(MSG_SO_BE_IT_1609, npc_empty_text_07);
		npc_dialog.response_value = -1;
		break;
	case 4:
		append_npc_message_text(MSG_I_AM_WAITING, npc_empty_text_08);
		break;
	case 5:
		append_npc_message_text(MSG_DON_T_MENTION_IT, npc_empty_text_09);
		break;
	case 6:
		append_npc_message_text(MSG_SAME_TO_YOU, npc_empty_text_10);
		adjust_npc_attitudes(npc_member_index,
			0 - (random_below(5) + 1), 0);
		if (random_below(2) == 1)
			npc_dialog.response_flag_1 = 1;
		break;
	case 7:
		append_npc_message_text(MSG_CONSIDER_IT_FORGOTTEN, npc_empty_text_11);
		npc_dialog.choice_index = -1;
		npc_dialog.choice_auxiliary = 0;
		npc_dialog.primary_choice = -1;
		npc_dialog.default_choice_index = -1;
		npc_dialog.default_choice_value = 0;
		npc_dialog.choice_backup = -1;
		npc_dialog.response_value = -1;
		break;
	case 8:
		append_npc_message_text(MSG_HELP_WITH_WHAT, npc_empty_text_12);
		break;
	case 9:
		append_npc_message_text(MSG_HA_HA_HA_1615, npc_empty_text_13);
		if (npc_dialog_secondary_state == 0 && random_below(2) == 1 &&
			party_records[npc_member_index].pad1[npc_record_index] < 50) {
			adjust_npc_attitudes(npc_member_index, random_below(3) + 1, 0);
			npc_dialog_secondary_state = 1;
		}
		break;
	}
}
