/* Finds a dialog choice whose plain or expanded text matches a prefix. */
extern int npc_total_choice_count;
extern int aztec_strlen();
extern int aztec_strncmp();
extern int copy_npc_choice_text_prefix();
extern int copy_npc_choice_text_expanded();
extern int mask_string_prefix_with_x();

find_npc_choice_text_prefix(input, match_kind)
char *input;
int *match_kind;
{
	int choice_index;
	char plain_text[42];
	char expanded_text[40];
	int suffix_match_length;
	int text_length;

	for (choice_index = 0; choice_index < npc_total_choice_count;
		++choice_index) {
		copy_npc_choice_text_prefix(choice_index, plain_text);
		copy_npc_choice_text_expanded(choice_index, expanded_text);
		text_length = aztec_strlen(plain_text);
		plain_text[text_length] = ' ';
		plain_text[text_length + 1] = 0;
		text_length = aztec_strlen(expanded_text);
		expanded_text[text_length] = ' ';
		expanded_text[text_length + 1] = 0;
		if (aztec_strncmp(input, plain_text,
			aztec_strlen(plain_text)) == 0) {
			mask_string_prefix_with_x(input, aztec_strlen(plain_text) - 1);
			*match_kind = 0;
			return choice_index;
		}
		if (aztec_strncmp(input, expanded_text,
			aztec_strlen(expanded_text)) == 0) {
			mask_string_prefix_with_x(input, aztec_strlen(expanded_text) - 1);
			*match_kind = 1;
			return choice_index;
		}
	}
	return -1;
}
