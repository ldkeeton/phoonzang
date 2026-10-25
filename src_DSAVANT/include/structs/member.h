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
	unsigned char state;		/* +0x22: 3 idle after firing */
	unsigned char resist;		/* +0x23 */
	unsigned char countdown;	/* +0x24 */
	char pad3[4];
	signed char level;		/* +0x29: eases toward 0 */
	signed char cell;		/* +0x2a: cell held, -1 none */
	unsigned char phase;		/* +0x2b */
};

struct member_rec {
	struct item_slot item[9];	/* +0x000 */
	unsigned char charge[6];	/* +0x18c: per-action charge left */
	unsigned char delay[6];		/* +0x192: per-action delay counter */
	char pad0[6];
	unsigned char kind;		/* +0x19e */
	char slot;			/* +0x19f: slot_recs index, -1 none */
	unsigned char name_row;		/* +0x1a0: 32-byte name row in member_ext */
	unsigned char item_count;	/* +0x1a1 */
};

struct member_ext {			/* 0xe8 bytes */
	char name[2][2][16];		/* +0x00: [row][singular/plural] names */
	long reward;			/* +0x40: paid out when the action fires */
	char pad0[0xd7 - 0x44];
	char kind;			/* +0xd7: 0x47 when the member has a picture */
	char pad1[0xdd - 0xd8];
	unsigned char attack;		/* +0xdd: attack charged to the action */
	char pad2[2];
	unsigned char bitmap_bit;	/* +0xe0: bit set in action_bitmap */
	char pad3;
	unsigned char flags;		/* +0xe2: bit 0 sets bitmap_bit */
	char pad4;
	unsigned char f_e4;		/* +0xe4 */
	unsigned char class_id;	/* +0xe5 */
	char pad5[2];
};

#endif
