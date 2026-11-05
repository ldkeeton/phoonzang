/* Draw a selected item entry, its quantity when counted, and its marker. */
extern int selected_item_list_index;
extern unsigned char selected_item_list_glyph;
extern int selected_item_list_color;
extern char selected_item_list_text[];
extern int selected_item_type;
extern int selected_item_count;
extern unsigned char item_type_counted[];
extern int call_set_text_pos(), draw_font_glyph();
extern int draw_split_two_line_text(), call_set_text_color();
extern int draw_number_field();

/* Draw the selected entry from the inventory list. */
draw_selected_item_list_entry()
{
	int text_x;
	int text_y;

	if (selected_item_list_index == -1)
		return;

	text_x = (0, selected_item_list_index / 5 * 13) * 6 +
		selected_item_list_index / 5 + 6;
	text_y = selected_item_list_index % 5 * 2 * 6 +
		selected_item_list_index % 5 * 2 + 116;
	call_set_text_pos(text_x, text_y);
	draw_font_glyph(selected_item_list_glyph, 4);
	draw_split_two_line_text(selected_item_list_text, text_x + 14,
		text_y, selected_item_list_color);
	if (item_type_counted[selected_item_type] == 1) {
		call_set_text_pos(text_x + 56, text_y + 6);
		call_set_text_color(2, 0);
		draw_number_field(selected_item_count, 3, 0);
	}
	call_set_text_color(21, 255);
	call_set_text_pos(text_x - 2, text_y - 1);
	draw_font_glyph(4, 0);
}
