/* fills the action entries for table cell (b, c) from character a's slot
   record; d picks the record group, -1 meaning group 0 plus randomized
   targets unless the forced byte is 0xfe */

#include "structs/member.h"
#include "structs/slotrec.h"
#include "structs/actslot.h"

extern struct member_rec *party_char[];
extern struct member_ext *party_char_ext[];
extern struct slot_rec slot_recs[];
extern unsigned char action_slot_mode[][3];
extern struct action_slot action_slot_table[][3][10];

fill_action_slot_table(a, b, c, d)
int a, b, c, d;
{
	int v1, i, j, k, flag;

	if (party_char[a]->slot == -1)	/* no slot record */
		return;
	v1 = party_char[a]->slot;
	flag = 0;
	if (d == -1) {
		d = 0;
		if (slot_recs[v1].forced[0] != 254)
			flag = 1;
	}
	/* one entry per record in group d's range */
	for (i = slot_recs[v1].first[d];
		i < slot_recs[v1].first[d] + slot_recs[v1].count[d]; ++i) {
		j = slot_recs[v1].action[i];
		/* group 0 with a forced value (1..0xfd) overrides the record */
		if (d == 0 && slot_recs[v1].forced[0] > 0 && slot_recs[v1].forced[0] < 254) {
			if (slot_recs[v1].forced[0] == 253) {	/* forced to action 0, target 0 */
				j = 0;
				k = 0;
			} else {
				k = slot_recs[v1].forced[0];
				/* special case: ext byte 0xd7 == 0x47 forces action 1, target 0xb */
				if (party_char_ext[a]->kind == 71 && flag == 0) {
					j = 1;
					k = 11;
				}
			}
		} else {
			/* base action plus random spread, then its target */
			j += random_below(slot_recs[v1].action_rand[i]);
			k = slot_recs[v1].target[j];
			if (flag != 0)
				k += random_below(slot_recs[v1].target_rand[j]);
		}
		action_slot_mode[b][c] = d;
		action_slot_table[b][c][i].action = j;
		action_slot_table[b][c][i].target = k;
		/* roll = base + 1 + random extra, from target k's range entry */
		action_slot_table[b][c][i].roll =
			slot_recs[v1].range[k].base + 1;
		action_slot_table[b][c][i].roll +=
			random_below(slot_recs[v1].range[k].rand);
	}
}
