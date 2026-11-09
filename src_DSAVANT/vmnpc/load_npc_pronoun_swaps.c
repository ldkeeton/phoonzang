/* loads the pronoun swap pairs used by NPC replies */
#include "structs/npc.h"

extern struct npc_pronoun_swap npc_pronoun_swaps[];
extern int load_message_string();

/* loads the two consecutive message strings for each pronoun swap */
load_npc_pronoun_swaps(first_message_id, swap_count)
int first_message_id, swap_count;
{
	int swap;

	for (swap = 0; swap < swap_count; ++swap) {
		load_message_string(first_message_id + swap * 2,
			npc_pronoun_swaps[swap].from);
		load_message_string(first_message_id + swap * 2 + 1,
			npc_pronoun_swaps[swap].to);
	}
}
