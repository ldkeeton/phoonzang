#ifndef MAZECELL_H
#define MAZECELL_H

struct maze_cells {
	unsigned char pad_0000[144];
	unsigned char wall_a[512];	/* 0x0090: packed 4-bit walls */
	unsigned char wall_b[512];	/* 0x0290: packed 4-bit walls */
	unsigned char origin_x[16];	/* 0x0490: piece world origins */
	unsigned char origin_y[16];	/* 0x04a0 */
	unsigned char cell_kind[768];	/* 0x04b0: packed 6-bit values */
	unsigned char cell_direction[256]; /* 0x07b0: packed 2-bit values */
	unsigned char cell_flags[128];	/* 0x08b0: one bit per cell */
	unsigned char cell_flags_third[128]; /* 0x0930: third cell bit set */
	unsigned char cell_flags_secondary[128]; /* 0x09b0: second cell bit set */
};

#endif
