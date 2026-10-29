/* Per-location records for the roaming NPCs, four bytes each. */
#ifndef LOCATION_H
#define LOCATION_H

struct location_record {
	unsigned char owner_faction;	/* +0x00: 0 = none */
	char rumored_map;		/* +0x01: quest map learnable here; 0xff = none */
	unsigned char reveals_location;	/* +0x02: reachable once this is visited */
	char game_state;		/* +0x03: map (game_state_arg) it belongs to */
};

#endif
