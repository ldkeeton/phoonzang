/* Draw a selected menu label inside a temporary beveled button. */

extern long call_save_area();
extern int load_message_string(), draw_bevel_frame();
extern int aztec_strlen(), call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs(), call_show_area(), call_restore_area();

draw_selected_button_label(message_id, selected_index, left, top, width,
	row_height)
int message_id;
int selected_index;
int left;
int top;
int width;
int row_height;
{
	char label[20];
	long saved_area;

	/* Save a one-pixel border around the selected row. */
	saved_area = call_save_area(left - 1,
		top + selected_index * row_height - 1,
		6 * width + left + 1,
		top + selected_index * row_height + 11);
	load_message_string(message_id, label);
	/* The frame is six pixels per text column and eight pixels high. */
	draw_bevel_frame(left, top + selected_index * row_height,
		6 * width + left, top + selected_index * row_height + 8, 0);
	/* Center the label using the six-pixel glyph width. */
	call_set_text_pos(left + (width - aztec_strlen(label)) * 6 / 2 + 1,
		top + selected_index * row_height + 2);
	call_set_text_color(26, 192);
	draw_text_glyphs(label, 0);
	call_show_area(left, top + selected_index * row_height,
		6 * width + left, top + selected_index * row_height + 8);
	call_restore_area(saved_area, 1);
}
