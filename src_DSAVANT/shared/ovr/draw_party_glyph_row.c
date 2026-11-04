/* Draw a marker glyph row selected relative to the party's facing. */
#include "structs/slotrec.h"

extern int marker_mode;
extern int party_facing;
extern struct slot_rec slot_recs[];
extern int call_draw_text();

draw_party_glyph_row()
{
	int facing;
	int variant;
	unsigned char glyph[10];

	if (marker_mode > 0) {
		/* Add six to keep the relative facing nonnegative before modulo four. */
		facing = (party_facing - (marker_mode - 1) + 6) % 4;
		switch (facing) {
		case 0:
		case 2:
			/* Side-facing rows use glyphs 1, 2, then 4 or 5. */
			glyph[0] = 1;
			glyph[1] = 2;
			glyph[2] = facing == 0 ? 4 : 5;
			glyph[3] = 0;
			variant = 0;
			break;
		case 1:
		case 3:
			/* The other two facings use glyph 3 and select its x variant. */
			glyph[0] = 3;
			glyph[1] = 0;
			variant = facing == 3;
			break;
		}

		/* Place it at slot 3's glyph position; clip to the view. */
		call_draw_text(3, slot_recs[3].glyph_x[glyph[0]][variant] + 1,
			slot_recs[3].glyph_y[glyph[0]] + 1, 72, 248, 33, 143, variant,
			glyph, 0, 0);
	}
}
