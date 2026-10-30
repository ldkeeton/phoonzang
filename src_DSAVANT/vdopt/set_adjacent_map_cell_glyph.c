/* Store a floor glyph in the view cell one step in the given direction. */
extern int map_floor_glyphs[][18];

set_adjacent_map_cell_glyph(direction, glyph, grid_x, grid_y)
int direction;
int glyph;
int grid_x;
int grid_y;
{
	/* Directions 0 through 3 are north, east, south and west. */
	switch (direction) {
	case 0: --grid_y; break;
	case 1: ++grid_x; break;
	case 2: ++grid_y; break;
	case 3: --grid_x; break;
	}

	/* The grid accepts coordinates from 0 through 16. */
	if (grid_x >= 0 && grid_x < 17 &&
	    grid_y >= 0 && grid_y < 17)
		map_floor_glyphs[grid_x][grid_y] = glyph;
}
