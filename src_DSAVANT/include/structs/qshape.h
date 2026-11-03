#ifndef QSHAPE_H
#define QSHAPE_H

/* One 17-byte queued glyph record shared by the renderer and its drawer. */
struct queued_glyph_fields {
	unsigned char glyph;
	unsigned char shape_mode;
	unsigned char repeat_mode;
	unsigned char column;
};

union queued_glyph_payload {
	unsigned char bytes[4];
	struct queued_glyph_fields fields;
};

struct queued_shape {
	int x;                         /* +0x00 */
	int y;                         /* +0x02 */
	int clip_left;                 /* +0x04: parameter_4 */
	int clip_right;                /* +0x06: parameter_5 */
	union queued_glyph_payload payload; /* +0x08..0x0b */
	unsigned char slot;            /* +0x0c */
	unsigned char depth;           /* +0x0d */
	unsigned char scale;           /* +0x0e */
	unsigned char variant;         /* +0x0f: glyph_column */
	unsigned char render_pass;     /* +0x10 */
};

#endif
