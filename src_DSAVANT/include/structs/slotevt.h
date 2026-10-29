/* Roaming NPC event logs: five 3-byte events per slot. */
#ifndef SLOTEVT_H
#define SLOTEVT_H

struct slot_event {
	char subject;			/* +0x00: map, slot or location */
	char kind;			/* +0x01: 3 won map, 4 took map, 5 met, 6 visited,
				   7 searched, 10 chases */
	char detail;			/* +0x02: location or slot */
};

#endif
