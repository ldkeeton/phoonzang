/* Matches an NPC event against the trigger table and runs its handler. */
#include "structs/npc.h"
extern struct npc_record npc_record;

extern long npc_gold_paid_total;
extern int run_npc_action_record();
extern int refresh_npc_screen();

/* Runs the handler of the first trigger row matching event and its
   arguments. */
match_npc_event_trigger(member_index, event, match_id, match_byte_1,
	match_byte_2)
int member_index;
unsigned char event;
int match_id;
unsigned char match_byte_1;
unsigned char match_byte_2;
{
	int row;
	long value;

	if (event == 2) {
		value = ((long)match_id << 8) + match_byte_1;
		npc_gold_paid_total += value;
	}

	for (row = 0; row < 8; ++row) {
		if (npc_record.event_triggers[row].event == event) {
			if (event == 2) {
				value = ((long)npc_record.event_triggers[row].match_id << 8) +
					npc_record.event_triggers[row].match_byte_1;
				if (value <= npc_gold_paid_total) {
					npc_gold_paid_total = 0;
					match_id = run_npc_action_record(member_index,
						npc_record.event_triggers[row].handler_code);
					return match_id;
				}
				continue;
			}
			if (event == 1 && npc_record.event_triggers[row].match_id == 0)
				match_id = 0;
			if (npc_record.event_triggers[row].match_id == match_id
				|| match_id == 0) {
				if (npc_record.event_triggers[row].match_byte_1 == match_byte_1
					|| match_byte_1 == 0) {
					if (npc_record.event_triggers[row].match_byte_2 == match_byte_2 ||
						match_byte_2 == 0) {
						if (event == 4)
							refresh_npc_screen();
						match_id = run_npc_action_record(member_index,
							npc_record.event_triggers[row].handler_code);
						return match_id;
					}
				}
			}
		}
	}
	return 0;
}
