extern int marker_mode;
extern int party_tag;
extern unsigned char glyph_y_table[];
extern unsigned char glyph_x_table[][2];
extern unsigned char marker_y, marker_x;

/* queues the marker glyph string(s) selected by marker_mode as overlay items */
queue_marker_overlay()
{
	int facing;
	int variant;
	unsigned char glyph[10];

	if (marker_mode > 0) {
		facing = (party_tag - (marker_mode - 1) + 6) % 4;	/* relative to party_tag, 4 directions */
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
			glyph[1] = 0;	/* NUL-terminate */
			variant = facing == 3;	/* second x-table column */
			break;
		}
		add_overlay_item(27, 3, glyph_x_table[glyph[0]][variant] + 1,
			glyph_y_table[glyph[0]] + 1, 72, 248, variant, 0, glyph);
	}
	if (marker_mode == -1) {	/* fixed position from marker_x/marker_y */
		glyph[0] = 1;
		glyph[1] = 0;	/* NUL-terminate */
		add_overlay_item(28, 12, marker_x, marker_y, 72, 248, 0, 0, glyph);
	}
}
