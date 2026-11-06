/* the 350-byte records loaded per picture slot (slot_recs[18]): a monster
   slot's actions, and every slot's glyph positions.  call_draw_text's first
   argument is the slot whose glyph_x/glyph_y place its glyphs. */

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
	unsigned char glyph_x[36][2];	/* +0x38: [glyph][variant] x, less 1 */
	char pad1;
	unsigned char glyph_y[36];	/* +0x81: [glyph] y, less 1 */
	struct range_ent range[40];	/* +0xa5 */
	char pad2;
	char cell_ofs[3][3][2];	/* +0x146: x, y per row and column */
	char pad3[3];
	unsigned char forced;		/* +0x15b: forced action/target, 0 none */
	unsigned char last_glyph;	/* +0x15c: the slot's last glyph */
	char pad4;
};

#endif
