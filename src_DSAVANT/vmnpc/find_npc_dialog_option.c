/* Finds and masks a matching NPC dialog option prefix. */

#include "structs/npc.h"

extern char npc_dialog_verb_words[][10];
extern char npc_dialog_filler_words[][10];
extern char npc_dialog_interjection_words[][10];
extern char npc_dialog_modal_words[][10];
extern struct npc_pronoun_swap npc_pronoun_swaps[5];
extern char npc_dialog_question_words[][10];
extern char npc_dialog_pronoun_words[][10];
extern int strlen();
extern char *strcpy();
extern int strncmp();
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
			strcpy(option, npc_dialog_verb_words[index]);
			break;
		case 2:
			strcpy(option, npc_dialog_filler_words[index]);
			break;
		case 3:
			strcpy(option, npc_dialog_interjection_words[index]);
			break;
		case 4:
			strcpy(option, npc_dialog_modal_words[index]);
			break;
		case 7:
			strcpy(option, npc_pronoun_swaps[index].from);
			break;
		case 8:
			strcpy(option, npc_dialog_question_words[index]);
			break;
		case 9:
			strcpy(option, npc_dialog_pronoun_words[index]);
			break;
		}

		length = strlen(option);
		option[length] = ' ';
		option[length + 1] = 0;
		if (strncmp(text, option, strlen(option)) == 0) {
			mask_string_prefix_with_x(text, strlen(option) - 1);
			return index;
		}
	}
	return -1;
}
