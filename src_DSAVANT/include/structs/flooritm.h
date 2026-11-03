/* One entry in the 1024-byte floor item list. */

#ifndef FLOORITM_H
#define FLOORITM_H

struct floor_item {
	unsigned char map;		/* +0x00: game state; 0xff marks a free slot */
	unsigned char flags;		/* +0x01: bit 0x40 protects the slot from recycling */
	int position;			/* +0x02: map piece and packed cell coordinates */
	int item_id;			/* +0x04 */
	unsigned char level;		/* +0x06 */
	unsigned char glyph;		/* +0x07 */
};

#endif
