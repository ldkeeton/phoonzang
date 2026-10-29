/* Items the roaming NPCs carry, six bytes each, indexed by bitmap bit. */
#ifndef SLOTBIT_H
#define SLOTBIT_H

struct slot_bit_state {
	char slot;			/* +0x00: NPC holding the item */
	char status;			/* +0x01: 0 = unused */
	unsigned char location;		/* +0x02: where the item lies */
	char flag_index;		/* +0x03: 0xff = none */
	unsigned char goal_location;	/* +0x04: 0xff = none */
	char pad5;
};

#endif
