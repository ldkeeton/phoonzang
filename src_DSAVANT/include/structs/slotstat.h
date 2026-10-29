/* Roaming NPC records, 0x26 bytes each. */
#ifndef SLOTSTAT_H
#define SLOTSTAT_H

struct slot_record {
	char faction;			/* +0x00: row in target_weight */
	char home_location;		/* +0x01: retreat point */
	unsigned char activity;		/* +0x02: dispatch_slot_action case */
	char destination;		/* +0x03 */
	unsigned char location;		/* +0x04: < 25 means in use */
	unsigned char turn_count;	/* +0x05: turns on this path edge or activity */
	unsigned char target;		/* +0x06: NPC or item bit pursued */
	char path_step;			/* +0x07: < 0 means no path */
	unsigned char path[14];		/* +0x08: edges to the destination */
	unsigned char event_ring_next;	/* +0x16: next of 5 event records */
	char pad2;
	char health;			/* +0x18: 0 = dead */
	char max_health;		/* +0x19 */
	char assigned_bits[2];		/* +0x1a */
	char selected_bits[6];		/* +0x1c */
	char marked_bits[2];		/* +0x22 */
	char pad3[2];
};

#endif
