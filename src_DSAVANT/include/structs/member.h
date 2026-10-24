/* party member records: party_char[] and party_char_ext[] point at these */

#ifndef MEMBER_H
#define MEMBER_H

struct item_slot {			/* 0x2c bytes */
	char pad0[2];
	int charges;			/* +0x02 */
	int charge_cap;			/* +0x04 */
	int timer;			/* +0x06 */
	int timer_max;			/* +0x08 */
	char pad1[4];
	unsigned char counter[10];	/* +0x0e: per-cell counters */
	char pad2[10];
	char state;			/* +0x22: 3 idle after firing */
	unsigned char resist;		/* +0x23 */
	unsigned char countdown;	/* +0x24 */
	char pad3[4];
	char level;			/* +0x29: eases toward 0 */
	char cell;			/* +0x2a: cell held, -1 none */
	unsigned char phase;		/* +0x2b */
};

struct member_rec {
	struct item_slot item[9];	/* +0x000 */
	unsigned char charge[6];	/* +0x18c: per-action charge left */
	unsigned char delay[6];		/* +0x192: per-action delay counter */
	char pad0[6];
	unsigned char kind;		/* +0x19e */
	char slot;			/* +0x19f: slot_recs index, -1 none */
	unsigned char pad1;
	unsigned char item_count;	/* +0x1a1 */
};

struct member_ext {
	char pad0[215];
	char kind;			/* +0xd7 */
};

#endif
