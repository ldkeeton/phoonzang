/* Move the party through the wall ahead when the passage permits it. */
extern int party_facing, party_map_piece, party_cell_x, party_cell_y;
extern int party_world_x, party_world_y;
extern int get_cell_wall(), try_move_party_to_cell();

move_party_if_passable(visited_cells)
char *visited_cells;
{
	int wall_kind;

	wall_kind = get_cell_wall(party_facing, party_map_piece,
		party_cell_x, party_cell_y, party_world_x, party_world_y);
	if (wall_kind < 2 || wall_kind == 5)
		return try_move_party_to_cell(party_facing, visited_cells);
	return 1;
}
