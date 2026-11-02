/* Draw a queued glyph as a three-part shape or three vertical copies. */
#include "structs/slotrec.h"

/* One 17-byte render row as queue_slot_glyph_render stores it.  The drawing
 * loop sends a row here when slot is 4 and shape_mode is 1. */
struct queued_shape {
	int x;			       /* +0x00 */
	int y;			       /* +0x02 */
	int clip_left;		       /* +0x04: parameter_4 */
	int clip_right;		       /* +0x06: parameter_5 */
	unsigned char glyph;	       /* +0x08: glyph_entry */
	unsigned char shape_mode;
		/* +0x09: parameter_1, 1 selects this routine */
	unsigned char repeat_mode;     /* +0x0a: parameter_2 */
	unsigned char column;	       /* +0x0b: parameter_3 */
	unsigned char slot;	       /* +0x0c: picture slot, always 4 here */
	unsigned char depth;	       /* +0x0d */
	unsigned char scale;	       /* +0x0e */
	unsigned char variant;	       /* +0x0f: glyph_column */
	unsigned char render_pass;     /* +0x10 */
};

extern struct slot_rec slot_recs[];
extern int shape_column_x[][5];
extern int shape_base_y[];
extern int shape_repeat_y_step[];
extern int call_draw_text();

draw_queued_glyph_shape(shape)
struct queued_shape *shape;
{
	int glyph_index;
	int repeat_index;
	int first_repeat;		/* always 0; kept for the original's frame */
	int repeat_count;
	int y_offset;
	int column;
	char glyph[10];

	column = shape->column;
	if (shape->repeat_mode == 0) {
		/* The middle glyph is repeated three times between the end caps. */
		for (glyph_index = shape->glyph;
			glyph_index < shape->glyph + 3; ++glyph_index) {
			y_offset = 0;
			glyph[0] = glyph_index;
			glyph[1] = 0;
			first_repeat = 0;
			repeat_count = shape->glyph + 1 == glyph_index ? 3 : 1;
			for (repeat_index = first_repeat;
				repeat_index < repeat_count; ++repeat_index) {
				/* Clip drawing to the view's vertical interval 32..144. */
				call_draw_text(shape->slot,
					shape_column_x[shape->depth][column] +
					slot_recs[4].glyph_x[glyph_index][shape->variant],
					slot_recs[4].glyph_y[glyph_index] + y_offset,
					shape->clip_left, shape->clip_right,
					32, 144, shape->variant, glyph, 0, 0);
				y_offset += shape_repeat_y_step[shape->depth];
			}
		}
	} else {
		/* Repeat the same glyph at three equally spaced heights. */
		y_offset = 0;
		glyph[0] = shape->glyph;
		glyph[1] = 0;
		repeat_index = 0;
		do {
			call_draw_text(shape->slot,
				slot_recs[4].glyph_x[shape->glyph][shape->variant],
				shape_base_y[shape->depth] + y_offset,
				shape->clip_left, shape->clip_right,
				32, 144, shape->variant, glyph, 0, 0);
			y_offset += shape_repeat_y_step[shape->depth];
		} while (++repeat_index < 3);
	}
}
