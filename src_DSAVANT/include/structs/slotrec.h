/* the 350-byte monster records loaded per picture slot (slot_recs) */

#ifndef SLOTREC_H
#define SLOTREC_H

struct range_ent {			/* 4 bytes per target */
	unsigned char sort;
	unsigned char glyph;
	unsigned char base;
	unsigned char rand;
};

struct slot_rec {			/* 350 bytes */
	unsigned char first[4];		/* +0x00: first entry per group */
	unsigned char count[4];		/* +0x04: entries per group */
	unsigned char action[10];	/* +0x08: base action per entry */
	unsigned char action_rand[10];	/* +0x12: random spread per entry */
	char pad0[10];
	unsigned char target[10];	/* +0x26: base target per action */
	unsigned char target_rand[8];	/* +0x30: random spread per action */
	unsigned char glyph_x[36][2];	/* +0x38 */
	char pad1;
	unsigned char glyph_y[36];	/* +0x81 */
	struct range_ent range[40];	/* +0xa5 */
	char pad2;
	char cell_ofs[3][2];		/* +0x146: x, y per column */
	char pad3[15];
	unsigned char forced[3];	/* +0x15b */
};

#endif
