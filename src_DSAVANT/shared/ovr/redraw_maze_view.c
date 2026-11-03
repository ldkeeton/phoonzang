/* Refresh the maze display and reveal the full map viewport. */

extern int draw_first_person_maze_view();
extern int call_show_area();

redraw_maze_view()
{
	draw_first_person_maze_view();
	/* These bounds cover the full 248-by-144 maze view. */
	call_show_area(72, 32, 247, 143);
}
