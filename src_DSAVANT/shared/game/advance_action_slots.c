/* writes one byte per action entry of cell (b, c) into out, advancing each
   entry's roll, target and action as they run out; refills the cell from
   group 0 when its targets are exhausted in another group */

#include "structs/member.h"
#include "structs/slotrec.h"
#include "structs/actslot.h"

extern struct member_rec *party_char[];
extern struct slot_rec slot_recs[];
extern unsigned char action_slot_mode[][3];
extern struct action_slot action_slot_table[][3][10];

advance_action_slots(member, item, b, c, consume, out)
int member, item, b, c, consume;
char *out;
{
	int rec, entry, action, target, roll, unused, len;

	*out = 0;
	if (party_char[member]->slot == -1)	/* no slot record */
		return;
	rec = party_char[member]->slot;
	len = 0;
	/* the entries of the group the cell was filled for */
	for (entry = slot_recs[rec].first[action_slot_mode[b][c]];
			entry < slot_recs[rec].first[action_slot_mode[b][c]]
			+ slot_recs[rec].count[action_slot_mode[b][c]]; ++entry) {
		/* any of these keeps the entry as is */
		if (party_char[member]->item[item].state == 2
				|| party_char[member]->item[item].counter[3] > 0
				|| party_char[member]->item[item].counter[2] > 0) {
			action = action_slot_table[b][c][entry].action;
			target = slot_recs[rec].target[action];
		} else {
			target = action_slot_table[b][c][entry].target;
			roll = action_slot_table[b][c][entry].roll;
			if (consume)
				--roll;
			if (roll <= 0) {	/* roll used up: next target */
				action = action_slot_table[b][c][entry].action;
				++target;
				/* past the action's target range: new action */
				if (slot_recs[rec].target[action]
					+ slot_recs[rec].target_rand[action] - 1 < target) {
					if (action_slot_mode[b][c] != 0) {
						/* refill from group 0 and start over */
						action_slot_mode[b][c] = 0;
						fill_action_slot_table(member, b, c, 0);
						advance_action_slots(member, item, b, c, 0, out);
						return;
					}
					action = random_below(slot_recs[rec].action_rand[entry])
						+ slot_recs[rec].action[entry];
					action_slot_table[b][c][entry].action = action;
					target = slot_recs[rec].target[action];
				}
				action_slot_table[b][c][entry].target = target;
				roll = random_below(slot_recs[rec].range[target].rand)
					+ slot_recs[rec].range[target].base;
			}
			action_slot_table[b][c][entry].roll = roll;
		}
		out[len] = slot_recs[rec].range[target].glyph;
		/* kind 0x79 or 0x8d: forced[1] goes before this byte */
		if (party_char[member]->kind == 121
				|| party_char[member]->kind == 141) {
			++len;
			out[len] = out[len - 1];
			out[len - 1] = slot_recs[rec].forced[1];
		}
		if (out[len] != 0)	/* skip zero bytes */
			++len;
	}
	out[len] = 0;	/* NUL-terminate */
}
