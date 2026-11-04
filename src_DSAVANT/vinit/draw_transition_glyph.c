/* Draw one glyph along its transition path. */
#include "structs/slotrec.h"
extern struct slot_rec slot_recs[];
extern int call_draw_text();

/* Draw one glyph at a position interpolated toward a fixed screen point. */
draw_transition_glyph(glyph, progress)
int glyph;
int progress;
{
	int x;
	int y;
	char text[10];

	text[0] = glyph;
	text[1] = 0;
	x = slot_recs[15].glyph_x[glyph][0];
	y = slot_recs[15].glyph_y[glyph];
	if (progress != 0) {
		/* Move each slot 15 coordinate toward the fixed endpoint by progress
		   percent. */
		x += (160 - x) * progress / 100;
		y += (49 - y) * progress / 100;
	}
	/* Draw within the full 320 by 200 screen bounds. */
	call_draw_text(15, x, y, 0, 319, 0, 199, 0, text, 0, progress);
}
