/* draw one of the seven animation glyphs in slot 7 */
#include "structs/slotrec.h"

extern struct slot_rec slot_recs[];

draw_animation_frame(animation_index)
int animation_index;
{
	int slot_number;
	int glyph_index;
	char glyph[12];

	if (animation_index < 0 || animation_index > 6)
		return -1;
	slot_number = 7;
	glyph_index = animation_index + 1;
	glyph[0] = glyph_index;
	glyph[1] = 0;
	call_draw_text(slot_number,
		slot_recs[slot_number].glyph_x[glyph_index][0],
		slot_recs[slot_number].glyph_y[glyph_index] + 32,
		72, 248, 33, 143, 0, glyph, 0, 0);
	return animation_index;
}
