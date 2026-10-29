/* draws a scrollbar w px wide and 6 px per row at (x, y): panel, end
   frames with glyphs 1 and 2, and a frame at pixel offset pos */
draw_scrollbar(x, y, w, rows, pos)
{
	draw_inset_panel(x, y, x + w, 6 * rows + y);
	draw_bevel_frame(x, y, x + 8, y + 6, 0);	/* top button */
	draw_bevel_frame(x, 6 * rows + y - 6, x + 8, 6 * rows + y,
		0);	/* bottom button */
	call_set_text_color(0, 192);
	call_set_text_pos(x + 2, y + 1);
	draw_font_glyph(1, 0);	/* glyph 1 in the top end */
	call_set_text_pos(x + 2, 6 * rows + y - 5);
	draw_font_glyph(2, 0);	/* glyph 2 in the bottom end */
	draw_bevel_frame(x, y + pos + 8, x + 8, y + pos + 12,
		0);	/* thumb, below the top button */
}
