/* Handles a selected NPC dialog response and updates its dialog state. */

extern int find_npc_dialog_option();
extern int find_npc_choice_text_prefix();
extern int mask_matching_prefix_with_x();
extern void reset_npc_dialog_response();
extern int npc_first_choice_count;
extern int npc_dialog_choice_index, npc_dialog_choice_auxiliary,
	npc_dialog_primary_choice, npc_dialog_choice_code;
extern int npc_dialog_default_choice_index, npc_dialog_default_choice_value,
	npc_dialog_response_value;
extern int npc_dialog_empty_choice_seen, npc_dialog_response_active,
	npc_dialog_mode7_seen, npc_dialog_prefix_matched;
extern int npc_response_flag_2, npc_response_flag_3, npc_response_flag_4,
	npc_response_flag_0, npc_response_flag_1;
extern int npc_response_flag_5, npc_response_flag_6, npc_dialog_choice_value_a,
	npc_dialog_choice_value_b, npc_dialog_latest_choice;
extern int npc_alt_choice_index, npc_alt_choice_value,
	npc_dialog_secondary_choice;
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
		npc_dialog_choice_code = result;
		switch (result) {
		case 0:
			npc_response_flag_0 = 1;
			break;
		case 1:
			npc_response_flag_1 = 1;
			break;
		case 2:
			npc_response_flag_2 = 1;
			break;
		case 3:
			npc_response_flag_3 = 1;
			break;
		case 4:
			npc_response_flag_4 = 1;
			break;
		case 5:
			npc_response_flag_5 = 1;
			break;
		case 6:
			npc_response_flag_6 = 1;
			break;
		}
		return 3;
	}

	result = find_npc_dialog_option(text, 8, 7);
	if (result != -1) {
		npc_dialog_response_active = 1;
		npc_dialog_response_value = result;
		reset_npc_dialog_response(result);
		npc_dialog_primary_choice = -1;
		npc_dialog_secondary_choice = -1;
		return 8;
	}

	result = find_npc_dialog_option(text, 4, 7);
	if (result != -1) {
		if (npc_dialog_mode == 7 || npc_dialog_mode == 0) {
			npc_dialog_mode7_seen = 1;
			npc_dialog_choice_value_a = npc_dialog_latest_choice;
		}
		if (result == 0)
			npc_dialog_empty_choice_seen = 1;
		return 4;
	}

	result = mask_matching_prefix_with_x(text, &npc_dialog_not_word[0]);
	if (result != -1) {
		npc_dialog_prefix_matched = 1;
		return 5;
	}

	result = find_npc_dialog_option(text, 1, 10);
	if (result != -1) {
		if (npc_dialog_mode == 6) {
			npc_dialog_primary_choice = -1;
			previous_choice = npc_dialog_choice_value_a;
			npc_dialog_choice_value_a = npc_dialog_choice_value_b;
			npc_dialog_choice_value_b = previous_choice;
		}
		if (npc_dialog_primary_choice != -1)
			npc_dialog_secondary_choice = result;
		else
			npc_dialog_primary_choice = result;
		if (npc_dialog_mode == 7)
			npc_dialog_choice_value_a = npc_dialog_latest_choice;
		return 1;
	}

	result = mask_matching_prefix_with_x(text, &npc_dialog_to_word[0]);
	if (result != -1)
		return 6;

	result = find_npc_dialog_option(text, 9, 11);
	if (result != -1) {
		if (npc_dialog_choice_index == -1 || npc_dialog_choice_index == 0 ||
		    npc_dialog_choice_index == npc_first_choice_count) {
			npc_dialog_choice_index = npc_dialog_default_choice_index;
			npc_dialog_choice_auxiliary = npc_dialog_default_choice_value;
		} else if (npc_dialog_default_choice_index != npc_dialog_choice_index
			&& npc_dialog_default_choice_index != 0 &&
		    npc_dialog_default_choice_index != npc_first_choice_count) {
			npc_alt_choice_index = npc_dialog_default_choice_index;
			npc_alt_choice_value = npc_dialog_default_choice_value;
		}
		return 0;
	}

	npc_matched_choice_offset = 0;
	result = find_npc_choice_text_prefix(text, &npc_matched_choice_offset);
	if (result != -1) {
		if (npc_dialog_mode == 4) {
			npc_dialog_response_active = 1;
			if (result == 0)
				npc_dialog_choice_value_a = 0;
		} else if (npc_dialog_mode == 1) {
			if (result == 0)
				npc_dialog_choice_value_b = 0;
		} else if (npc_dialog_mode == 6 && result == 0)
			npc_dialog_choice_value_b = 0;

		if (result == 0)
			npc_dialog_latest_choice = result;
		if (npc_dialog_choice_index == -1 || npc_dialog_choice_index == 0 ||
		    npc_dialog_choice_index == npc_first_choice_count) {
			npc_dialog_choice_index = result;
			npc_dialog_choice_auxiliary = npc_matched_choice_offset;
		}
		return 0;
	}

	result = find_npc_dialog_option(text, 7, 5);
	if (result != -1) {
		if (npc_dialog_mode == 4) {
			npc_dialog_response_active = 1;
			npc_dialog_choice_value_a = result;
		} else if (npc_dialog_mode == 1)
			npc_dialog_choice_value_b = result;
		else if (npc_dialog_mode == 6)
			npc_dialog_choice_value_b = result;
		npc_dialog_latest_choice = result;
		return 7;
	}

	if (npc_dialog_mode == 6)
		npc_dialog_primary_choice = -1;
	return 10;
}
