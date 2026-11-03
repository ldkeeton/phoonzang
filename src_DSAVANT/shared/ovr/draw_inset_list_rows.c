/* Draw an inset panel around the requested list rows, then draw the rows. */

extern int draw_inset_panel(), draw_list_rows();

draw_inset_list_rows(x, y, column_count, panel_row_count, first_row,
	selected_row, visible_row_count)
int x, y, column_count, panel_row_count, first_row, selected_row;
int visible_row_count;
{
	/* Each text column is six pixels wide; the panel adds a two-pixel edge. */
	draw_inset_panel(x, y, x + 6 * column_count + 2,
		y + 6 * panel_row_count);
	/* Render the requested visible rows inside the panel. */
	draw_list_rows(x, y, column_count, visible_row_count, first_row,
		selected_row);
}
