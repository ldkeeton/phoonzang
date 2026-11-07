/* Center a text message in a narrow screen band, then restore the band. */
extern int call_show_area(), strlen(), call_set_text_color();
extern int call_set_text_pos(), draw_text_glyphs(), call_restore_area();
extern int flush_keyboard();
extern long call_save_area();

show_centered_text_band(text)
char *text;
{
	int text_left, text_right;
	long saved_area;

	/* The band runs from y=146 through y=152; glyphs occupy six pixels each. */
	call_show_area(0, 146, 319, 152);
	text_left = 161 - strlen(text) * 6 / 2;
	text_right = strlen(text) * 6 + text_left;
	saved_area = call_save_area(text_left, 146, text_right, 152);
	call_set_text_color(22, 0);
	call_set_text_pos(text_left, 146);
	draw_text_glyphs(text, 0);
	call_show_area(text_left, 146, text_right, 152);
	call_restore_area(saved_area, 1);
	flush_keyboard();
}
