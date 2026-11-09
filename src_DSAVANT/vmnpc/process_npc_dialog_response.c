/* Handles a selected NPC dialog response and updates its dialog state. */
#include "structs/npc.h"
extern struct npc_dialog_state npc_dialog;

extern int find_npc_dialog_option();
extern int find_npc_choice_text_prefix();
extern int mask_matching_prefix_with_x();
extern void reset_npc_dialog_response();
extern int npc_first_choice_count;
extern int ;
extern int ;
extern int ;
extern int ;
extern int ;
extern int npc_dialog_mode, npc_matched_choice_offset;
extern char npc_dialog_not_word[10], npc_dialog_to_word[10];

process_npc_dialog_response(text)
char *text;
{
	int result;
	int previous_choice;

	result = find_npc_dialog_option(text, 2, 7);
	if (result != -1)
		return 2;

	result = find_npc_dialog_option(text, 3, 10);
	if (result != -1) {
		npc_dialog.choice_code = result;
		switch (result) {
		case 0:
			npc_dialog.response_flag_0 = 1;
			break;
		case 1:
			npc_dialog.response_flag_1 = 1;
			break;
		case 2:
			npc_dialog.response_flag_2 = 1;
			break;
		case 3:
			npc_dialog.response_flag_3 = 1;
			break;
		case 4:
			npc_dialog.response_flag_4 = 1;
			break;
		case 5:
			npc_dialog.response_flag_5 = 1;
			break;
		case 6:
			npc_dialog.response_flag_6 = 1;
			break;
		}
		return 3;
	}

	result = find_npc_dialog_option(text, 8, 7);
	if (result != -1) {
		npc_dialog.response_active = 1;
		npc_dialog.response_value = result;
		reset_npc_dialog_response(result);
		npc_dialog.primary_choice = -1;
		npc_dialog.secondary_choice = -1;
		return 8;
	}

	result = find_npc_dialog_option(text, 4, 7);
	if (result != -1) {
		if (npc_dialog_mode == 7 || npc_dialog_mode == 0) {
			npc_dialog.mode7_seen = 1;
			npc_dialog.choice_value_a =
				npc_dialog.latest_choice;
		}
		if (result == 0)
			npc_dialog.empty_choice_seen = 1;
		return 4;
	}

	result = mask_matching_prefix_with_x(text, &npc_dialog_not_word[0]);
	if (result != -1) {
		npc_dialog.prefix_matched = 1;
		return 5;
	}

	result = find_npc_dialog_option(text, 1, 10);
	if (result != -1) {
		if (npc_dialog_mode == 6) {
			npc_dialog.primary_choice = -1;
			previous_choice = npc_dialog.choice_value_a;
			npc_dialog.choice_value_a =
				npc_dialog.choice_value_b;
			npc_dialog.choice_value_b = previous_choice;
		}
		if (npc_dialog.primary_choice != -1)
			npc_dialog.secondary_choice = result;
		else
			npc_dialog.primary_choice = result;
		if (npc_dialog_mode == 7)
			npc_dialog.choice_value_a =
				npc_dialog.latest_choice;
		return 1;
	}

	result = mask_matching_prefix_with_x(text, &npc_dialog_to_word[0]);
	if (result != -1)
		return 6;

	result = find_npc_dialog_option(text, 9, 11);
	if (result != -1) {
		if (npc_dialog.choice_index == -1
			|| npc_dialog.choice_index == 0 ||
		    npc_dialog.choice_index == npc_first_choice_count) {
			npc_dialog.choice_index =
				npc_dialog.default_choice_index;
			npc_dialog.choice_auxiliary =
				npc_dialog.default_choice_value;
		} else if (npc_dialog.default_choice_index
			!= npc_dialog.choice_index
			&& npc_dialog.default_choice_index != 0 &&
		    npc_dialog.default_choice_index != npc_first_choice_count) {
			npc_dialog.alt_choice_index =
				npc_dialog.default_choice_index;
			npc_dialog.alt_choice_value =
				npc_dialog.default_choice_value;
		}
		return 0;
	}

	npc_matched_choice_offset = 0;
	result = find_npc_choice_text_prefix(text, &npc_matched_choice_offset);
	if (result != -1) {
		if (npc_dialog_mode == 4) {
			npc_dialog.response_active = 1;
			if (result == 0)
				npc_dialog.choice_value_a = 0;
		} else if (npc_dialog_mode == 1) {
			if (result == 0)
				npc_dialog.choice_value_b = 0;
		} else if (npc_dialog_mode == 6 && result == 0)
			npc_dialog.choice_value_b = 0;

		if (result == 0)
			npc_dialog.latest_choice = result;
		if (npc_dialog.choice_index == -1
			|| npc_dialog.choice_index == 0 ||
		    npc_dialog.choice_index == npc_first_choice_count) {
			npc_dialog.choice_index = result;
			npc_dialog.choice_auxiliary = npc_matched_choice_offset;
		}
		return 0;
	}

	result = find_npc_dialog_option(text, 7, 5);
	if (result != -1) {
		if (npc_dialog_mode == 4) {
			npc_dialog.response_active = 1;
			npc_dialog.choice_value_a = result;
		} else if (npc_dialog_mode == 1)
			npc_dialog.choice_value_b = result;
		else if (npc_dialog_mode == 6)
			npc_dialog.choice_value_b = result;
		npc_dialog.latest_choice = result;
		return 7;
	}

	if (npc_dialog_mode == 6)
		npc_dialog.primary_choice = -1;
	return 10;
}
