/* Roaming NPC records, 0x26 bytes each; slot 21 is the party. */
#ifndef SLOTSTAT_H
#define SLOTSTAT_H

struct slot_record {
	unsigned char faction;		/* +0x00: row in faction_attitudes */
	unsigned char home_location;	/* +0x01: retreat point */
	unsigned char activity;		/* +0x02: dispatch_slot_action case */
	unsigned char destination;	/* +0x03: location it is heading for */
	unsigned char location;		/* +0x04: < 25 means in use */
	unsigned char map_piece;	/* +0x05: piece of the location's map; steps once a turn */
	unsigned char target;		/* +0x06: slot chased, or map searched */
	char path_step;			/* +0x07: < 0 means no path */
	unsigned char path[14];		/* +0x08: path_edges, walked from path_step down */
	unsigned char event_ring_next;	/* +0x16: next of 5 event records */
	char pad2;
	char health;			/* +0x18: 0 = dead */
	char max_health;		/* +0x19 */
	char held_maps[2];		/* +0x1a: quest maps carried */
	char known_maps[2];		/* +0x1c: quest maps it knows the place of */
	char visited_locations[4];	/* +0x1e */
	char map_history[4];		/* +0x22: held map m; bit 12+m: searched */
};

#endif
