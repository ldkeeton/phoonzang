/* Spend the level-adjusted share of a selected slot value. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int slot_value[];

/* Spend the level-adjusted share of a selected slot value. */
spend_level_scaled_slot_value(member_index, slot_index, divisor)
int member_index, slot_index, divisor;
{
	int amount;

	amount = slot_value[slot_index] / divisor
		- (party_records[member_index].level - 1) / 2;
	if (amount < 0)
		amount = 0;
	if (slot_value[slot_index] < amount)
		amount = slot_value[slot_index];
	slot_value[slot_index] -= amount;
}
