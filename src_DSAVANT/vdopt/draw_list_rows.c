struct glyph_rec {
	unsigned char glyph;
	char pad;
};				/* 2-byte stride */

extern int list_row_marked[], list_row_count[];
extern struct glyph_rec list_row_glyph[];
extern char list_row_name[][22];

/* draw rows first..first+count-1 of the list, 14 pixels apart, highlighting the selected row */
draw_list_rows(x, y, width, count, first, selected)
int x, y, width, count, first, selected;
{
	int row, color;

	for (row = 0; row < count; row++) {
		if (first + row == selected) {	/* fill bar behind the selected row */
			gfx_fill_area(x + 0x1c, y + 14 * row + 1, x + 6 * width + 2, y + 14 * row + 0xd, 1);
			color = 0;
		} else
			color = 0xb4;
		gfx_set_text_pos(x + 2, y + 14 * row + 1);
		if (list_row_marked[first + row])
			draw_font_glyph(0x63, 4);	/* 'c' mark glyph */
		gfx_set_text_pos(x + 0xf, y + 14 * row + 1);
		draw_font_glyph(list_row_glyph[first + row].glyph, 4);
		api_idx_002a_SRJL(list_row_name[first + row], x + 0x1d, y + 14 * row + 2, color);
		if (list_row_count[first + row] > 0) {	/* only positive counts are shown */
			gfx_set_text_pos(x + 0x47, y + 14 * row + 8);
			gfx_set_text_color(first + row == selected ? color : 2, 0);
			ds_app_GUML(list_row_count[first + row], 3, 0);	/* 3-digit field */
		}
	}
}
