/* draws the inset panel for a cols x rows grid of text, then the count spell
   names starting at first, with selected highlighted */
draw_text_list(x, y, cols, rows, first, selected, count)
int x, y, cols, rows, first, selected, count;
{
	/* glyph cells are 6 pixels wide */
	draw_inset_panel(x, y, cols * 6 + x + 2, rows * 6 + y);
	draw_spell_list(x, y, cols, count, first, selected);
}
