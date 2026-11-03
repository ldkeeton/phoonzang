/* Rotate a relative map offset, then resolve its map piece. */
extern int party_facing;
extern int find_map_piece();

offset_relative_map_position(world_x, world_y, cell_x, cell_y, map_piece,
			     lateral_offset, forward_offset)
int *world_x;
int *world_y;
int *cell_x;
int *cell_y;
int *map_piece;
int lateral_offset;
int forward_offset;
{
	/* Rotate the lateral and forward offsets into world coordinates. */
	switch (party_facing) {
	case 0:
		*world_x += lateral_offset;
		*world_y += forward_offset;
		break;
	case 1:
		*world_x += forward_offset;
		*world_y -= lateral_offset;
		break;
	case 2:
		*world_x -= lateral_offset;
		*world_y -= forward_offset;
		break;
	case 3:
		*world_x -= forward_offset;
		*world_y += lateral_offset;
		break;
	}

	/* Return whether the adjusted world position is outside the map pieces. */
	return find_map_piece(cell_x, cell_y, map_piece, *world_x, *world_y);
}
