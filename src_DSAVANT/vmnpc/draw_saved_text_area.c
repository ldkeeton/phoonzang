/* Draws text over a saved area, then restores the area. */
extern long call_save_area();
extern int call_fill_area(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), call_show_area(), call_restore_area();
extern int flush_keyboard();

draw_saved_text_area(left, top, right, bottom, text_x, text_y,
		    foreground, background, fill_color, text)
int left, top, right, bottom;
int text_x, text_y;
int foreground, background, fill_color;
char *text;
{
	long saved_area;

	saved_area = call_save_area(left, top, right, bottom);
	if (fill_color != -1)
		call_fill_area(left, top, right, bottom, fill_color);
	call_set_text_color(foreground, background);
	call_set_text_pos(text_x, text_y);
	draw_text_glyphs(text, 0);
	call_show_area(left, top, right, bottom);
	call_restore_area(saved_area, 1);
	flush_keyboard();
}
