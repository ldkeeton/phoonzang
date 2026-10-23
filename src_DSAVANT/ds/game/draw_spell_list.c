extern char known_spell_names[];

/* draws count spell-name rows from first at x,y, cols cells wide, with the
   row matching selected highlighted */
draw_spell_list(x, y, cols, count, first, selected)
int x, y, cols, count, first, selected;
{
	int row;

	for (row = 0; row < count; row++) {
		if (first + row == selected) {
			/* 6-pixel cells; fill one row and colour it as selected */
			gfx_fill_area(x, 6 * row + y, 6 * cols + x + 2, 6 * row + y + 6, 1);
			gfx_set_text_color(0, 1);
		} else
			gfx_set_text_color(180, 195);
		gfx_set_text_pos(x + 2, 6 * row + y + 1);
		draw_text_glyphs(known_spell_names + (first + row) * 20, 0);	/* 20-byte names */
	}
}
