/* Briefly show the party's previous position in the maze view. */
extern int party_world_x, party_world_y, party_cell_x, party_cell_y;
extern int party_map_piece;
extern int previous_party_world_x, previous_party_world_y;
extern int previous_party_cell_x, previous_party_cell_y;
extern int previous_party_map_piece;
extern int party_status_frame;
extern int party_redraw_interval_elapsed();
extern void redraw_maze_view();
extern void wait_for_hotspot_timeout();

/* Draw and pause on the previous position, then restore the current one. */
show_previous_party_position()
{
	int saved_world_x, saved_world_y, saved_cell_x, saved_cell_y;
	int saved_map_piece;

	saved_world_x = party_world_x;
	saved_world_y = party_world_y;
	saved_cell_x = party_cell_x;
	saved_cell_y = party_cell_y;
	saved_map_piece = party_map_piece;
	party_world_x = previous_party_world_x;
	party_world_y = previous_party_world_y;
	party_cell_x = previous_party_cell_x;
	party_cell_y = previous_party_cell_y;
	party_map_piece = previous_party_map_piece;
	if (party_redraw_interval_elapsed())
		party_status_frame = (party_status_frame + 1) % 2;
	redraw_maze_view();
	wait_for_hotspot_timeout(2);
	party_world_x = saved_world_x;
	party_world_y = saved_world_y;
	party_cell_x = saved_cell_x;
	party_cell_y = saved_cell_y;
	party_map_piece = saved_map_piece;
}
