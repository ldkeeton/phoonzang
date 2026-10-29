/* Advance the party redraw frame when its interval has elapsed. */
extern int party_status_frame;
extern party_redraw_interval_elapsed();
extern int redraw_maze_view();

advance_party_redraw_frame()
{
	/* Only advance the display frame when the interval helper reports elapsed. */
	if (party_redraw_interval_elapsed()) {
		/* Modulo two alternates between the two party status frames. */
		party_status_frame = (party_status_frame + 1) % 2;
		redraw_maze_view();
		return 1;
	}
	return 0;
}
