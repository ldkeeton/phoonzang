/* queues the marker glyph string(s) selected by marker_mode as overlay
   items */
#include "structs/slotrec.h"

extern int marker_mode;
extern int party_facing;
extern struct slot_rec slot_recs[];

queue_marker_overlay()
{
	int facing;
	int variant;
	unsigned char glyph[10];

	if (marker_mode > 0) {
		facing = (party_facing - (marker_mode - 1) + 6) % 4;
			/* relative to the party facing */
		switch (facing) {
		case 0:
		case 2:
			glyph[0] = 1;
			glyph[1] = 2;
			glyph[2] = facing == 0 ? 4 : 5;
			glyph[3] = 0;	/* NUL-terminate */
			variant = 0;
			break;
		case 1:
		case 3:
			glyph[0] = 3;
			glyph[1] = 0;		/* NUL-terminate */
			variant = facing == 3;	/* second x-table column */
			break;
		}
		add_overlay_item(27, 3, slot_recs[3].glyph_x[glyph[0]][variant] + 1,
			slot_recs[3].glyph_y[glyph[0]] + 1, 72, 248, variant, 0, glyph);
	}
	if (marker_mode == -1) {	/* slot 12 glyph 1's position, unadjusted */
		glyph[0] = 1;
		glyph[1] = 0;	/* NUL-terminate */
		add_overlay_item(28, 12, slot_recs[12].glyph_x[1][0],
			slot_recs[12].glyph_y[1], 72, 248, 0, 0, glyph);
	}
}
