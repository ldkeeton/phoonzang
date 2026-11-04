/* Clear the screen, draw up to three story glyphs at rest, and reveal it. */
extern int call_fill_area(), call_show_area();
extern int draw_transition_glyph(), wait_ticks_or_escape();

/* Draw the initial glyphs, then optionally wait for the requested ticks. */
show_glyph_frame(first_glyph, second_glyph, third_glyph, wait_ticks)
int first_glyph;
int second_glyph;
int third_glyph;
int wait_ticks;
{
	/* Clear the full 320 by 200 screen before drawing the glyphs. */
	call_fill_area(0, 0, 319, 199, 0);
	draw_transition_glyph(first_glyph, 0);
	/* The remaining glyph arguments are optional and use zero as absent. */
	if (second_glyph != 0)
		draw_transition_glyph(second_glyph, 0);
	if (third_glyph != 0)
		draw_transition_glyph(third_glyph, 0);
	call_show_area(0, 0, 319, 199);
	/* A zero wait skips the timer polling routine. */
	if (wait_ticks != 0)
		wait_ticks_or_escape(wait_ticks);
}
