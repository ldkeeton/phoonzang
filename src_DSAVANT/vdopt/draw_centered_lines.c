/* Draw up to three centered lines, then wait and restore the report area. */
extern int message_delay;
extern char no_dissolve;
extern int aztec_strlen();
extern int measure_text_width();
extern void call_set_text_color();
extern void call_set_text_pos();
extern void draw_text_glyphs();
extern void dissolve_or_show_area();
extern void wait_for_scene_input_or_timeout();
extern void restore_area_a_draw_glyph();

draw_centered_lines(title, line1, line2)
char *title;
char *line1;
char *line2;
{
	int text_x;

	call_set_text_color(85, 0);
	/* Add one pixel before halving the measured width to find the left edge. */
	text_x = 160 - (measure_text_width(title, 2) + 1) / 2;
	call_set_text_pos(text_x, 158);
	draw_text_glyphs(title, 2);

	/* Empty optional lines are skipped. */
	if (aztec_strlen(line1) > 0) {
		text_x = 160 - (measure_text_width(line1, 2) + 1) / 2;
		call_set_text_pos(text_x, 170);
		draw_text_glyphs(line1, 2);
		if (aztec_strlen(line2) > 0) {
			text_x = 160 - (measure_text_width(line2, 2) + 1) / 2;
			call_set_text_pos(text_x, 182);
			draw_text_glyphs(line2, 2);
		}
	}

	dissolve_or_show_area(55, 146, 265, 198);
	/* Keep the display interval twice as long when the effect is disabled. */
	wait_for_scene_input_or_timeout(no_dissolve != 0 ?
		message_delay * 2 : message_delay);
	restore_area_a_draw_glyph();
}
