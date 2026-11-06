/* Fills action entries for a slot, row, and column using the selected mode. */
#include "structs/slotrec.h"
#include "structs/actslot.h"

extern struct slot_rec slot_recs[];
extern unsigned char action_slot_mode[][3];
extern struct action_slot action_slot_table[][3][10];
extern int random_below();

fill_npc_action_slots(slot_index, row, col, mode)
int slot_index;
int row;
int col;
int mode;
{
	int entry;
	int action;
	int target;
	int randomize_target;

	randomize_target = 0;
	if (mode == -1) {
		mode = 0;
		if (slot_recs[slot_index].forced != 254)
			randomize_target = 1;
	}
	for (entry = slot_recs[slot_index].first[mode];
		entry < slot_recs[slot_index].first[mode] +
		slot_recs[slot_index].count[mode]; ++entry) {
		action = slot_recs[slot_index].action[entry];
		if (mode == 0 && slot_recs[slot_index].forced > 0 &&
		    slot_recs[slot_index].forced < 254) {
			if (slot_recs[slot_index].forced == 253) {
				action = 0;
				target = 0;
			} else {
				target = slot_recs[slot_index].forced;
			}
		} else {
			action += random_below(slot_recs[slot_index].action_rand[entry]);
			target = slot_recs[slot_index].target[action];
			if (randomize_target != 0)
				target += random_below(slot_recs[slot_index].target_rand[action]);
		}
		action_slot_mode[row][col] = mode;
		action_slot_table[row][col][entry].action = action;
		action_slot_table[row][col][entry].target = target;
		action_slot_table[row][col][entry].roll =
			slot_recs[slot_index].range[target].base + 1;
		action_slot_table[row][col][entry].roll +=
			random_below(slot_recs[slot_index].range[target].rand);
	}
}
