/* Redraw the combat glyph strip, keeping message rows above upper_row and
   below lower_row. */
extern int save_screen_area(), restore_saved_screen();
extern int redraw_glyph_strip(), call_show_area();
extern int wait_for_combat_input();
extern char combat_glyph_upper_save_file[];
extern char combat_glyph_lower_save_file[];

refresh_combat_glyph_strip(upper_row, lower_row)
int upper_row, lower_row;
{
	int upper_saved_area, lower_saved_area;

	upper_saved_area = 0;
	lower_saved_area = 0;
	if (upper_row > 0)
		upper_saved_area = save_screen_area(8, 156, 314,
			155 + 7 * upper_row, combat_glyph_upper_save_file);
	if (lower_row < 4)
		lower_saved_area = save_screen_area(8, 162 + 7 * lower_row,
			314, 196, combat_glyph_lower_save_file);
	redraw_glyph_strip(0);
	if (lower_saved_area != 0)
		restore_saved_screen(lower_saved_area, 1);
	if (upper_saved_area != 0)
		restore_saved_screen(upper_saved_area, 1);
	call_show_area(8, 147, 314, 194);
	wait_for_combat_input(2);
}
