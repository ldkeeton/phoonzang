/* Responds to a selected NPC dialog choice and updates dialog state. */
#include "structs/npc.h"
#include "structs/pcrec.h"
#include "msg.h"
extern struct npc_dialog_state npc_dialog;
extern struct npc_record npc_record;

extern struct pc_rec party_records[];
extern struct npc_message_option npc_dialog_choice_entries[];
extern int npc_dialog_option_state;

extern int npc_member_index;
extern int npc_choice_message_address(), dispatch_npc_effect_message(),
	copy_npc_choice_text();
extern int find_npc_message_match(), append_npc_message_text(),
	choose_random_npc_phrase();
extern int pool_party_gold(), select_npc_event_message();

/* Resolve the response chosen from the current NPC dialog menu. */
handle_npc_dialog_choice()
{
	int selected_choice_index;
	int response_text_index;
	char response_message[80];

	selected_choice_index = npc_dialog.choice_index;
	if (npc_dialog_choice_entries[selected_choice_index].message_code < 0)
		selected_choice_index +=
			npc_dialog_choice_entries[selected_choice_index].message_code;
	response_text_index = npc_choice_message_address(selected_choice_index);
	if (npc_dialog_choice_entries[selected_choice_index].message_code == 3) {
		dispatch_npc_effect_message(response_text_index + 3, MSG_HOW_1625);
		return;
	}

	switch (npc_dialog.primary_choice) {
	case 0:
		if (npc_dialog.response_active == 1
			&& selected_choice_index == 0 &&
			(npc_dialog.topic_0_enabled == 1
				|| npc_dialog.topic_1_enabled == 1)) {
			if (find_npc_message_match(npc_member_index,
				MSG_NO_YES_YEA_YEP_SURE_OK_1690, 0) == 3) {
				if (party_records[npc_member_index].gold < 50L) {
					pool_party_gold(npc_member_index);
					if (party_records[npc_member_index].gold < 50L) {
						append_npc_message_text(MSG_YOU_DON_T_HAVE_ENOUGH_GOLD, (unsigned)37123);
						return;
					}
				}
				party_records[npc_member_index].gold -= 50L;
				npc_record.gold += 50L;
				if (npc_dialog_option_state == 0 && npc_record.phrase_msg_id > 0) {
					choose_random_npc_phrase(response_message, 0);
					append_npc_message_text(MSG_I_HEARD_A_RUMOR_ABOUT, response_message);
					npc_dialog_option_state = 1;
				} else
					select_npc_event_message(-1, 0, 0);
			} else
				append_npc_message_text(MSG_SO_BE_IT_1609, (unsigned)37124);
			return;
		}
		if (npc_dialog.response_active == 0
			&& npc_dialog.mode7_seen == 0) {
			npc_dialog.response_active = 1;
			npc_dialog.topic_1_enabled = 1;
		}
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.topic_6_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 3, MSG_HOW_1625);
				return;
			}
			if (npc_dialog.topic_1_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 2, MSG_WHAT_1620);
				return;
			}
		}
	case 1:
	case 2:
	case 3:
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.topic_0_enabled == 0
				&& npc_dialog.topic_1_enabled == 0
				&& npc_dialog.topic_2_enabled == 0 &&
				npc_dialog.topic_3_enabled == 0
					&& npc_dialog.topic_4_enabled == 0
					&& npc_dialog.topic_5_enabled == 0 &&
				npc_dialog.topic_6_enabled == 0)
				npc_dialog.topic_1_enabled = 1;
			if (npc_dialog.topic_0_enabled == 1) {
				if (npc_dialog_choice_entries[selected_choice_index].message_code != 0) {
					copy_npc_choice_text(npc_dialog.choice_index,
						npc_dialog.choice_auxiliary,
						response_message);
					append_npc_message_text(MSG_I_DON_T_KNOW_ANYONE_NAMED, response_message);
					return;
				}
				dispatch_npc_effect_message(response_text_index + 1, MSG_WHO_1619);
				return;
			}
			if (npc_dialog.topic_1_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 2, MSG_WHAT_1620);
				return;
			}
			if (npc_dialog.topic_2_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_WHEN, (unsigned)37125);
				return;
			}
			if (npc_dialog.topic_3_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 4, MSG_WHERE_1622);
				return;
			}
			if (npc_dialog.topic_4_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_WHICH, (unsigned)37126);
				return;
			}
			if (npc_dialog.topic_5_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 2, MSG_WHY_1624);
				return;
			}
			if (npc_dialog.topic_6_enabled == 1) {
				if (selected_choice_index == 0) {
					append_npc_message_text(MSG_I_AM_ALIVE, (unsigned)37127);
					return;
				}
				append_npc_message_text(MSG_I_WOULDN_T_KNOW, (unsigned)37128);
				return;
			}
		} else if (selected_choice_index == 0) {
			append_npc_message_text(MSG_THAT_S_YOUR_OPINION, (unsigned)37129);
			return;
		} else {
			append_npc_message_text(MSG_THAT_S_VERY_INTERESTING, (unsigned)37130);
			return;
		}
		break;
	case 4:
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.choice_value_a == 0) {
				if (npc_dialog.topic_1_enabled == 1)
					append_npc_message_text(MSG_WHAT_ARE_YOU_LOOKING_FOR, (unsigned)37131);
				else if (npc_dialog.topic_3_enabled == 1 ||
					npc_dialog.topic_5_enabled == 1 ||
					npc_dialog.topic_6_enabled == 1)
					append_npc_message_text(MSG_I_CAN_T_SAY, (unsigned)37132);
				else
					append_npc_message_text(MSG_POSSIBLY, (unsigned)37133);
				return;
			}
			append_npc_message_text(MSG_I_WOULDN_T_KNOW, (unsigned)37134);
			return;
		}
		if (selected_choice_index == 0) {
			append_npc_message_text(MSG_THAT_S_WHAT_YOU_THINK, (unsigned)37135);
			return;
		}
		append_npc_message_text(MSG_I_WOULDN_T_KNOW, (unsigned)37136);
		return;
	case 5:
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.choice_value_a == 0) {
				if (npc_dialog.topic_1_enabled == 1)
					append_npc_message_text(MSG_WHAT_DO_YOU_HAVE_TO_OFFER, (unsigned)37137);
				else
					append_npc_message_text(MSG_POSSIBLY, (unsigned)37138);
				return;
			}
			append_npc_message_text(MSG_I_WOULDN_T_KNOW, (unsigned)37139);
			return;
		}
		if (npc_dialog.choice_value_a > 0) {
			dispatch_npc_effect_message(response_text_index + 3, MSG_HOW_1625);
			return;
		}
		append_npc_message_text(MSG_THAT_S_GOOD_TO_KNOW, (unsigned)37140);
		return;
	case 6:
	case 7:
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.topic_1_enabled == 1)
				append_npc_message_text(MSG_WHAT_ARE_YOU_LOOKING_FOR, (unsigned)37141);
			else
				append_npc_message_text(MSG_POSSIBLY, (unsigned)37142);
			return;
		}
		append_npc_message_text(MSG_I_WILL_CONSIDER_IT, (unsigned)37143);
		return;
	case 8:
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.topic_0_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_1630, (unsigned)37144);
				return;
			}
			if (npc_dialog.topic_1_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 2, MSG_WHAT_1620);
				return;
			}
			if (npc_dialog.topic_3_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 4, MSG_WHERE_1622);
				return;
			}
			if (npc_dialog.topic_4_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_WHICH, (unsigned)37145);
				return;
			}
			if (npc_dialog.topic_2_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_WHEN, (unsigned)37146);
				return;
			}
			dispatch_npc_effect_message(response_text_index + 3, MSG_HOW_1625);
			return;
		}
		append_npc_message_text(MSG_PLEASE_CONTINUE, (unsigned)37147);
		return;
	case 9:
		if (npc_dialog.response_active == 1) {
			if (npc_dialog.topic_0_enabled == 1
				|| npc_dialog.topic_4_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_1630, (unsigned)37148);
				return;
			}
			if (npc_dialog.topic_1_enabled == 1) {
				append_npc_message_text(MSG_TRY_AND_SEE, (unsigned)37149);
				return;
			}
			if (npc_dialog.topic_3_enabled == 1) {
				dispatch_npc_effect_message(response_text_index + 4, MSG_WHERE_1622);
				return;
			}
			if (npc_dialog.topic_2_enabled == 1) {
				append_npc_message_text(MSG_I_DON_T_KNOW_WHEN, (unsigned)37150);
				return;
			}
			dispatch_npc_effect_message(response_text_index + 3, MSG_HOW_1625);
			return;
		}
		append_npc_message_text(MSG_THAT_S_VERY_INTERESTING, (unsigned)37151);
		return;
	}
	return;
}
