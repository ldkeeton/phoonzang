/* the loaded maze object tables: 240 objects, one parallel array per field */

#ifndef MAZE_H
#define MAZE_H

struct maze_tables {
	int key[240];
	int party_mask[240];		/* 0: any party, else bit per party_tag */
	int flags[240];			/* packed bitfields, read via get_bits */
	unsigned char type[240];
	unsigned char x[240];
	unsigned char y[240];
	unsigned char map[240];
	unsigned char f960[240];
	unsigned char sound[240];	/* type-7 level, 0x13 sound, type-25 owner */
	unsigned char map_first[1];	/* indexed by map piece */
};

#endif
