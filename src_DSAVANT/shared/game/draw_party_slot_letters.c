extern char party_slot_glyphs[];
extern int party_slot_frame[];
extern int party_slot_x[][6];
extern int party_slot_y[][6];

/* draws one glyph per party member at the positions for layout row, offset by
   x, y; each member has a 20-byte glyph strip indexed by its current frame */
draw_party_slot_letters(x, y, row)
int x, y, row;
{
	int i;
	char buf[10];

	for (i = 0; i < 6; ++i) {	/* six party slots */
		buf[0] = party_slot_glyphs[20 * i + party_slot_frame[i] * 2];
		buf[1] = 0;
		/* clip to the full 320x200 screen (0..0x13f, 0..0xc7) */
		gfx_draw_text(2, party_slot_x[row][i] + x,
			party_slot_y[row][i] + y,
			0, 319, 0, 199, 0, buf, 0, 0);
	}
}
