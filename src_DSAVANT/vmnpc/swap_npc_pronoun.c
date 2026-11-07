/* replaces a pronoun with its swapped form (YOU -> ME, WE -> US, ...) */

#include "structs/npc.h"

extern struct npc_pronoun_swap npc_pronoun_swaps[5];

swap_npc_pronoun(word)
char *word;
{
	int i;

	for (i = 0; i < 5; ++i) {
		if (strcmp(word, npc_pronoun_swaps[i].from) == 0) {
			strcpy(word, npc_pronoun_swaps[i].to);
			return;
		}
	}
}
