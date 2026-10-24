/* fills the action entries for table cell (row, col) from member's slot
   record; group selects the record group, -1 meaning group 0 plus randomized
   targets unless the forced byte is 0xfe */

#include "structs/member.h"
#include "structs/slotrec.h"
#include "structs/actslot.h"

extern struct member_rec *party_char[];
extern struct member_ext *party_char_ext[];
extern struct slot_rec slot_recs[];
extern unsigned char action_slot_mode[][3];
extern struct action_slot action_slot_table[][3][10];
extern int npc_melee;
extern int dest_alt_arg;
extern int random_below();

fill_action_slot_table_vmnpc(member, row, col, group)
int member, row, col, group;
{
	int rec, entry, action, target, randomized;

	if (party_char[member]->slot == -1)	/* no slot record */
		return;
	rec = party_char[member]->slot;
	randomized = 0;
	if (group == -1) {
		group = 0;
		if (slot_recs[rec].forced[0] != 254)
			randomized = 1;
	}
	/* one entry per record in group's range */
	for (entry = slot_recs[rec].first[group];
		entry < slot_recs[rec].first[group] + slot_recs[rec].count[group];
		++entry) {
		action = slot_recs[rec].action[entry];
		/* group 0 with a forced value (1..0xfd) overrides the record */
		if (group == 0 && slot_recs[rec].forced[0] > 0
				&& slot_recs[rec].forced[0] < 254) {
			if (slot_recs[rec].forced[0] == 253) {	/* action 0, target 0 */
				action = 0;
				target = 0;
			} else {
				target = slot_recs[rec].forced[0];
				if (party_char_ext[member]->kind == 71) {
					/* melee into VMNPC: split the destination argument */
					if (npc_melee == 1) {
						action = dest_alt_arg / 256;
						target = dest_alt_arg % 256;
					} else if (randomized == 0) {
						action = 1;
						target = 11;
					}
				}
			}
		} else {
			/* base action plus random spread, then its target */
			action += random_below(slot_recs[rec].action_rand[entry]);
			target = slot_recs[rec].target[action];
			if (randomized != 0)
				target += random_below(slot_recs[rec].target_rand[action]);
		}
		action_slot_mode[row][col] = group;
		action_slot_table[row][col][entry].action = action;
		action_slot_table[row][col][entry].target = target;
		/* roll = base + 1 + random extra, from target's range entry */
		action_slot_table[row][col][entry].roll =
			slot_recs[rec].range[target].base + 1;
		action_slot_table[row][col][entry].roll +=
			random_below(slot_recs[rec].range[target].rand);
	}
}
