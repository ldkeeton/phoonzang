/* The 11 quest maps the roaming NPCs race for, six bytes each. */
#ifndef QUESTMAP_H
#define QUESTMAP_H

struct quest_map {
	unsigned char holder;		/* +0x00: carrying slot, or hiding location */
	unsigned char status;		/* +0x01: 0 = carried by holder */
	unsigned char site_location;	/* +0x02: where a carrier searches */
	char gate_key;			/* +0x03: path_edge key it opens; 0xff = none */
	char next_destination;		/* +0x04: after the search; -1 = none */
	char pad5;
};

#endif
