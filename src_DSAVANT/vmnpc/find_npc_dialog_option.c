/* Finds and masks a matching NPC dialog option prefix. */

#include "structs/npc.h"

extern char npc_dialog_verb_words[][10];
extern char npc_dialog_filler_words[][10];
extern char npc_dialog_interjection_words[][10];
extern char npc_dialog_modal_words[][10];
extern struct npc_pronoun_swap npc_pronoun_swaps[5];
extern char npc_dialog_question_words[][10];
extern char npc_dialog_pronoun_words[][10];
extern int aztec_strlen();
extern char *aztec_strcpy();
extern int aztec_strncmp();
extern int mask_string_prefix_with_x();

find_npc_dialog_option(text, table, count)
char *text;
int table, count;
{
	int index;
	char option[80];
	int length;

	for (index = 0; index < count; ++index) {
		option[0] = 0;
		switch (table) {
		case 1:
			aztec_strcpy(option, npc_dialog_verb_words[index]);
			break;
		case 2:
			aztec_strcpy(option, npc_dialog_filler_words[index]);
			break;
		case 3:
			aztec_strcpy(option, npc_dialog_interjection_words[index]);
			break;
		case 4:
			aztec_strcpy(option, npc_dialog_modal_words[index]);
			break;
		case 7:
			aztec_strcpy(option, npc_pronoun_swaps[index].from);
			break;
		case 8:
			aztec_strcpy(option, npc_dialog_question_words[index]);
			break;
		case 9:
			aztec_strcpy(option, npc_dialog_pronoun_words[index]);
			break;
		}

		length = aztec_strlen(option);
		option[length] = ' ';
		option[length + 1] = 0;
		if (aztec_strncmp(text, option, aztec_strlen(option)) == 0) {
			mask_string_prefix_with_x(text, aztec_strlen(option) - 1);
			return index;
		}
	}
	return -1;
}
