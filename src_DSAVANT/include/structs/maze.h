/* the loaded maze object tables: 240 objects, one parallel array per field */

#ifndef MAZE_H
#define MAZE_H

struct maze_tables {
	int key[240];			/* +0x000: also the region flag value */
	int party_mask[240];		/* +0x1e0: 0: any party, else bit per party_tag;
					   destination argument when arg is 99 */
	int flags[240];			/* +0x3c0: packed bitfields, read via get_bits;
					   destinations: x:3 y:3 piece:4 bits:2 */
	unsigned char type[240];
	unsigned char x[240];
	unsigned char y[240];
	unsigned char map[240];
	unsigned char f960[240];
	unsigned char arg[240];		/* +0xa50: per type: level (type 7, region
					   moves; 99 = none), sound, or owner */
	unsigned char map_first[16];	/* first object indexed by map piece */
};

#endif
