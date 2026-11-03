/* Draw a queued glyph as a three-part shape or three vertical copies. */
#include "structs/slotrec.h"
#include "structs/qshape.h"

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

	column = shape->payload.fields.column;
	if (shape->payload.fields.repeat_mode == 0) {
		/* The middle glyph is repeated three times between the end caps. */
		for (glyph_index = shape->payload.fields.glyph;
			glyph_index < shape->payload.fields.glyph + 3; ++glyph_index) {
			y_offset = 0;
			glyph[0] = glyph_index;
			glyph[1] = 0;
			first_repeat = 0;
			repeat_count = shape->payload.fields.glyph + 1 == glyph_index ? 3 : 1;
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
		glyph[0] = shape->payload.fields.glyph;
		glyph[1] = 0;
		repeat_index = 0;
		do {
			call_draw_text(shape->slot,
				slot_recs[4].glyph_x[shape->payload.fields.glyph][shape->variant],
				shape_base_y[shape->depth] + y_offset,
				shape->clip_left, shape->clip_right,
				32, 144, shape->variant, glyph, 0, 0);
			y_offset += shape_repeat_y_step[shape->depth];
		} while (++repeat_index < 3);
	}
}
