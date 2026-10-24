/* draws the clock dial's party marker glyph for the current time of day */

extern long game_time;			/* 0x8f1c: 32-bit clock, minutes */
extern int party_tag;
extern gfx_draw_text();

/* places the marker by three-minute notch, one x per party slot, and draws
   it; a slot whose marker is unset (0xff01) is not drawn */
draw_clock_marker_glyph()
{
	int slot, day_base, minute, notch, step, glyph_y_off;
	int marker_x[4];
	char glyph[10];

	day_base = 330;				/* 330: minute the count starts from */
	minute = (game_time - day_base) % 1440;	/* 1440: minutes per day */
	if (minute < 0 || minute >= 876)	/* 876: past the last notch */
		return;
	notch = minute / 3;		/* 3: minutes per notch */
	for (slot = 0; slot < 4; ++slot)
		marker_x[slot] = (unsigned)65281;	/* unset marker */
	if (notch <= 104)
		marker_x[1] = 88 - notch;
	if (notch >= 58 && notch <= 250)
		marker_x[0] = 176 - (notch - 58);
	if (notch >= 204 && notch <= 292)
		marker_x[3] = 176 - (notch - 204);
	if (marker_x[party_tag] == (unsigned)65281)
		return;			/* no marker for the active slot */
	if (minute < 270)
		glyph_y_off = minute / 10 + 5;
	else if (minute >= 630)
		glyph_y_off = 32 - (minute - 630) / 9;
	else {
		step = (minute - 270) % 180 / 36;
		glyph_y_off = ((minute - 270) / 180) ? 36 - step : step + 32;
	}
	glyph[0] = 6;			/* 6: marker glyph */
	glyph[1] = 0;			/* NUL-terminate */
	gfx_draw_text(6, marker_x[party_tag] + 72, 70 - glyph_y_off, 72, 248,
		32, 144, 0, glyph, 0, 0);	/* clip 72..248 x 32..144 */
}
