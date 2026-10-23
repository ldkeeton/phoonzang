extern long party_status_areas[];		/* one saved area per slot */
extern int party_status_frame, party_status_frame_step, party_status_frame_seen, party_status_heading;
extern int party_status_timer[];			/* six 4-byte records, +0 word first */
extern int party_tag;
extern gfx_restore_area();
extern gfx_draw_text();
extern gfx_show_area();

/* puts back each slot's saved screen area, then draws its one-glyph icon */
draw_party_status_glyphs()
{
	int slot, glyph, turn, x, y;
	char buf[10];

	for (slot = 0; slot < 6; slot++) {	/* six party slots */
		gfx_restore_area(party_status_areas[slot], 0);
		/* 25-pixel spacing, 40-pixel gap after the third slot */
		x = slot / 3 * 40 + slot * 25 + 0x45;
		y = 7;
		switch (slot) {
		case 0:
			glyph = party_status_frame + 1;
			break;
		case 1:
			glyph = party_status_frame + 1 + 1 + 1;
			break;
		case 2:
			glyph = party_status_frame + 5;
			break;
		case 3:
			glyph = party_status_frame * party_status_frame_step + 7;
			break;
		case 5:
			glyph = party_status_frame + 9;
			break;
		case 4:		/* heading icon: only moves on a new frame */
			if (party_status_frame != party_status_frame_seen) {
				party_status_frame_seen = party_status_frame;
				turn = party_tag * 2 - party_status_heading;
				if (turn) {
					/* one step for 1..4 and below -4, else seven */
					if (turn < -4 || (turn > 0 && turn < 5))
						party_status_heading = (party_status_heading + 1) % 8;
					else
						party_status_heading = (party_status_heading + 7) % 8;
				}
			}
			glyph = party_status_heading + 0xb;	/* heading glyphs 0xb..0x12 */
			break;
		}
		if (party_status_timer[2 * slot] > 0) {	/* positive timer: slot shows */
			buf[0] = glyph;
			buf[1] = 0;		/* NUL-terminate */
			/* clip to the full 320x200 screen (0..0x13f, 0..0xc7) */
			gfx_draw_text(8, x, y, 0, 0x13f, 0, 0xc7, 0,
				      buf, 0, 0);
		}
	}
	gfx_show_area(0x44, 6, 0xfc, 0x16);	/* reveal the icon strip */
}
