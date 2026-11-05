/* Set the party world coordinates and find the containing map piece. */
extern int party_world_x, party_world_y;
extern int party_map_piece, party_cell_y, party_cell_x;
extern int find_map_piece();

/* Store the coordinates, then update the party's map position fields. */
set_party_world_position(world_x, world_y)
int world_x, world_y;
{
	party_world_x = world_x;
	party_world_y = world_y;
	find_map_piece(&party_cell_x, &party_cell_y, &party_map_piece,
		party_world_x, party_world_y);
}
