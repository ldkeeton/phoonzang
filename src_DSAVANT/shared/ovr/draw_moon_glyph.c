/* Draw the moon in the maze view's sky while it is up and the party faces
   it.  Moonrise moves one hour later each day, and its phase glyph steps
   every three days through an eight-step cycle. */

extern long game_time;
extern int party_facing;
extern call_draw_text();

draw_moon_glyph()
{
	int facing, moon_day, rise_hour, minutes_up, arc_x, arc_step, arc_height;
	int sky_x[4], phase, waning;
	char glyph[10];

	moon_day = game_time / 1440 + 1;
	rise_hour = (moon_day + 18) % 24;
	/* Before noon, a late rise hour still belongs to yesterday's moon. */
	if (game_time % 1440 / 60 < 12 && rise_hour > 12) {
		--moon_day;
		rise_hour = (moon_day + 18) % 24;
	}
	minutes_up = (game_time - 60 * rise_hour) % 1440;
	/* The moon stays up for 480 minutes after it rises. */
	if (minutes_up < 0 || minutes_up >= 480)
		return;
	arc_x = minutes_up / 2;
	/* Each facing sees a different stretch of the moon's path. */
	for (facing = 0; facing < 4; ++facing)
		sky_x[facing] = (unsigned)65281;
	if (arc_x < 62)
		sky_x[1] = arc_x + 114;
	if (arc_x >= 16 && arc_x <= 208)
		sky_x[2] = arc_x - 32;
	if (arc_x >= 162 && arc_x <= 240)
		sky_x[3] = arc_x - 178;
	if (sky_x[party_facing] == (unsigned)65281)
		return;
	/* The moon climbs for 240 minutes and then sinks. */
	arc_step = minutes_up % 240 / 7;
	arc_height = minutes_up / 240 ? 34 - arc_step : arc_step;
	/* Phases 0-4 use glyphs 1-5; phases 5-7 mirror glyphs 4-2 (waning). */
	phase = moon_day / 3 % 8;
	waning = phase < 5 ? 0 : 1;
	glyph[0] = phase < 5 ? phase + 1 : 8 - phase + 1;
	glyph[1] = 0;
	call_draw_text(6, sky_x[party_facing] + 72, 68 - arc_height,
		72, 248, 32, 144, waning, glyph, 0, 0);
}
