/* Roads between two locations for the roaming NPCs, four bytes each. */
#ifndef PATHEDGE_H
#define PATHEDGE_H

struct path_edge {
	unsigned char end_a;		/* +0x00: location */
	unsigned char end_b;		/* +0x01: location */
	char gate_key;			/* +0x02: searched map needed; -1 = none */
	unsigned char length;		/* +0x03: map pieces (turns) to cross */
};

#endif
