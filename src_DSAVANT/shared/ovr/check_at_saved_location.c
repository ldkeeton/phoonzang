/* Set the saved-location flag when the party still matches that location. */
extern int save_location_flag;
extern int current_level, saved_level;
extern int party_map_piece, saved_map_piece;
extern int party_cell_x, saved_cell_x;
extern int party_cell_y, saved_cell_y;

check_at_saved_location()
{
	save_location_flag = 0;
	/* All four coordinates must match before the flag is set. */
	if (current_level == saved_level &&
		party_map_piece == saved_map_piece &&
		party_cell_x == saved_cell_x &&
		party_cell_y == saved_cell_y)
		save_location_flag = 1;
}
