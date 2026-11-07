/* Draw a temporary beveled label at a position selected from an index. */

extern long call_save_area();
extern int draw_bevel_frame(), call_set_text_color(), call_set_text_pos();
extern int strlen(), draw_text_glyphs(), call_show_area();
extern int call_restore_area();

show_indexed_beveled_label(text, index, x, y, width, column_step, row_step,
	rows,
	color)
char *text;
int index, x, y, width, column_step, row_step, rows, color;
{
	int column_offset, row_offset;
	long saved_area;

	/* Split the index into a column and row displacement. */
	column_offset = index / rows * column_step;
	row_offset = index % rows * row_step;
	saved_area = call_save_area(x + column_offset - 1,
		y + row_offset - 1,
		6 * width + x + column_offset + 1,
		y + row_offset + 9);
	draw_bevel_frame(x + column_offset, y + row_offset,
		6 * width + x + column_offset,
		y + row_offset + 8, 0);
	call_set_text_color(color, 192);
	/* Six pixels per glyph; center the text inside the frame. */
	call_set_text_pos(x + column_offset + (width - strlen(
		text)) * 6 / 2 + 1,
		y + row_offset + 2);
	draw_text_glyphs(text, 0);
	call_show_area(x + column_offset - 1, y + row_offset - 1,
		6 * width + x + column_offset + 1, y + row_offset + 9);
	call_restore_area(saved_area, 1);
}
