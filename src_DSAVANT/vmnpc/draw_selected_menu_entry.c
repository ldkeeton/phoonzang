/* Draws the selected entry in a two-column NPC menu. */
extern long call_save_area();
extern int draw_bevel_frame();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int aztec_strlen();
extern int draw_text_glyphs();
extern int call_show_area();
extern int call_restore_area();

draw_selected_menu_entry(text, selected_index, first_page_left,
	second_page_left,
		    top, text_width, x_stride, y_stride, rows_per_column, color)
char *text;
int selected_index, first_page_left, second_page_left;
int top, text_width, x_stride, y_stride, rows_per_column, color;
{
	int x_offset;
	int y_offset;
	int page_left;
	int page_span;
	long saved_area;

	page_span = rows_per_column * 2;
	page_left = selected_index < page_span ? first_page_left : second_page_left;
	x_offset = (selected_index % page_span) / rows_per_column * x_stride;
	y_offset = (selected_index % page_span) % rows_per_column * y_stride;
	saved_area = call_save_area(page_left + x_offset - 1,
				    top + y_offset - 1,
				    page_left + x_offset + 6 * text_width + 1,
				    top + y_offset + 7);
	draw_bevel_frame(page_left + x_offset,
			 top + y_offset,
			 page_left + x_offset + 6 * text_width,
			 top + y_offset + 6, 0);
	call_set_text_color(color, 192);
	call_set_text_pos((text_width - aztec_strlen(text)) * 6 / 2 +
			  page_left + x_offset + 1,
			  top + y_offset + 1);
	draw_text_glyphs(text, 0);
	call_show_area(page_left + x_offset - 1,
		       top + y_offset - 1,
	       page_left + x_offset + 6 * text_width + 1,
	       top + y_offset + 7);
	call_restore_area(saved_area, 1);
}
