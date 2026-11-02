/* The terrain of the party's cell: 0 open, 1 water, 2 a fall, 3 wild
   orchids, 4 rock.  current_level is the current level. */
extern int party_map_piece;
extern int party_cell_x;
extern int party_cell_y;
extern char *maze_data;
extern int current_level;
extern int test_bit();

/* Each later bitmap with this cell's bit set overrides the earlier ones;
   what a set bit means depends on the level. */
get_cell_terrain()
{
	int cell_bit_index;
	int terrain;

	/* Each map piece has 64 cells and each row has 8 cells. */
	cell_bit_index = (party_map_piece << 6) + (party_cell_y << 3)
		+ party_cell_x;
	terrain = 0;

	/* The first bitmap starts at maze-data offset 0x9b0. */
	if (test_bit(maze_data + 2480, cell_bit_index)) {
		/* Levels 15 through 30 (a jump table): water. */
		switch (current_level) {
		case 29:
			if (party_map_piece > 12)
				terrain = 1;
			break;
		case 15:
		case 17:
		case 22:
		case 23:
		case 24:
		case 25:
		case 26:
		case 30:
			terrain = 1;
			break;
		}
	}
	/* The bitmap at offset 0x8b0: water, or a fall on level 27. */
	if (test_bit(maze_data + 2224, cell_bit_index)) {
		switch (current_level) {
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
			terrain = 1;
			break;
		case 27:
			terrain = 2;
			break;
		}
	}
	/* The bitmap at offset 0x930: orchids on level 0, rock by default. */
	if (test_bit(maze_data + 2352, cell_bit_index)) {
		switch (current_level) {
		case 0:
			terrain = 3;
			break;
		case 10:
		case 25:
			break;
		case 14:
		case 19:
		case 31:
			terrain = 1;
			break;
		case 23:
			terrain = 2;
			break;
		default:
			terrain = 4;
		}
	}

	return terrain;
}
