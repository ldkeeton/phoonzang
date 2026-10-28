/* Update a bit assignment and the affected slot bitmaps. */

#include "structs/slotstat.h"

struct slot_bit_state {
	char slot;		/* +0x00 */
	char status;		/* +0x01 */
	char pad[4];
};

extern struct slot_bit_state slot_bit_states[];
extern struct slot_record slot_records[];

/* Move a bit's slot assignment and preserve the previous slot's selection. */
assign_slot_bit(new_slot, previous_slot, bit_index)
int new_slot, previous_slot, bit_index;
{
	int slot_index;

	slot_bit_states[bit_index].slot = new_slot;
	slot_bit_states[bit_index].status = 0;
	set_bitmap_bit(slot_records[new_slot].assigned_bits, bit_index, 1);
	set_bitmap_bit(slot_records[new_slot].marked_bits, bit_index, 1);
	for (slot_index = 0; slot_index < 22; slot_index++) {
		/* Remove the bit from all 22 selection maps. */
		set_bitmap_bit(slot_records[slot_index].selected_bits, bit_index, 0);
	}
	set_bitmap_bit(slot_records[new_slot].selected_bits, bit_index, 1);
	if (previous_slot != -1) {	/* -1 means no previous slot. */
		set_bitmap_bit(slot_records[previous_slot].assigned_bits, bit_index, 0);
		set_bitmap_bit(slot_records[previous_slot].selected_bits, bit_index, 1);
	}
}
