/* draws two animated two-glyph strings at slot 3 and slot 15 glyph
   positions */

#include "structs/slotrec.h"
extern struct slot_rec slot_recs[];

extern int animation_frame;

draw_animated_glyph_pair()
{
	unsigned char glyphs[10];

	glyphs[0] = 1;		/* fixed first glyph */
	glyphs[1] = 4;		/* fixed second glyph */
	glyphs[2] = 0;		/* NUL terminate */
	call_draw_text(3, slot_recs[3].glyph_x[glyphs[0]][0] + 1,
		slot_recs[3].glyph_y[glyphs[0]] + 1,
		72, 248, 33, 143, 0, glyphs, 0, 0);
	glyphs[0] = 1;
	glyphs[1] = animation_frame + 2;	/* frame counter selects the second glyph */
	glyphs[2] = 0;
	call_draw_text(15, slot_recs[15].glyph_x[glyphs[0]][0] + 1,
		slot_recs[15].glyph_y[glyphs[0]] + 1,
		72, 248, 33, 143, 0, glyphs, 0, 0);
}
