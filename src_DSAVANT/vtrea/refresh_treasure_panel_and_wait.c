/* refresh the treasure panel after the caption area changes */

extern char treasure_panel_top_save_file[], treasure_panel_bottom_save_file[];

refresh_treasure_panel_and_wait(top_line, bottom_line)
int top_line, bottom_line;
{
	int saved_top_area, saved_bottom_area;

	saved_top_area = 0;
	saved_bottom_area = 0;
	if (top_line > 0)
		saved_top_area = save_screen_area(25, 156, 295,
			7 * top_line + 155, treasure_panel_top_save_file);
	if (bottom_line < 4)
		saved_bottom_area = save_screen_area(25,
			7 * bottom_line + 162, 295, 196, treasure_panel_bottom_save_file);
	redraw_treasure_caption(0);
	if (saved_bottom_area != 0)
		restore_saved_screen(saved_bottom_area, 1);
	if (saved_top_area != 0)
		restore_saved_screen(saved_top_area, 1);
	call_show_area(25, 146, 295, 194);
	wait_treasure_input_or_timeout(1);
}
