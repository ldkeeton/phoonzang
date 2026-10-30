/* Draw a framed message box, center its text, then restore the saved area. */
extern long call_save_area();
extern int call_restore_area();
extern int draw_bevel_frame();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int call_show_area();
extern int aztec_strlen();

draw_message_box(text, row, left, top, columns, row_height, text_color)
char *text;
int row, left, top, columns, row_height, text_color;
{
	long saved_area;

	/* Save the rectangular area covered by this box. */
	/* The frame uses fixed margins; each text glyph occupies six pixels. */
	saved_area = call_save_area(left + 7, row * row_height + top + 6,
						   left + 6 * columns + 9,
						   row * row_height + top + 16);
	/* Draw the inset frame around the message area. */
	draw_bevel_frame(left + 8, row * row_height + top + 7,
				 left + 6 * columns + 8, row * row_height + top + 15, 0);
	call_set_text_color(text_color, 192);
	/* Center the text using six pixels per glyph. */
	call_set_text_pos((columns - aztec_strlen(text)) * 6 / 2 + left + 9,
				  row * row_height + top + 9);
	draw_text_glyphs(text, 0);
	call_show_area(left + 7, row * row_height + top + 6,
			   left + 6 * columns + 9,
			   row * row_height + top + 16);
	call_restore_area(saved_area, 1);
}
