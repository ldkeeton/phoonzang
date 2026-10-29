/* one entry in the code-ordered 12-slot overlay table (overlay_list) */

#ifndef OVLITEM_H
#define OVLITEM_H

struct overlay_item {			/* 24 bytes */
	int x;				/* +0x00: text position */
	int y;				/* +0x02 */
	int clip_left;			/* +0x04: call_draw_text clip bounds */
	int clip_right;			/* +0x06 */
	char text[12];			/* +0x08: glyph string */
	unsigned char code;		/* +0x14: sort key, 0xff marks a free slot */
	unsigned char color;		/* +0x15 */
	unsigned char variant;		/* +0x16 */
	unsigned char flag;		/* +0x17 */
};

#endif
