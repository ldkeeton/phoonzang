/* Replace the floor glyph of a cell whose four walls are the same kind. */
extern int map_floor_glyphs[][18], map_ns_wall_glyphs[][18];
extern int map_ew_wall_glyphs[][18];
extern int map_wall2_ns_glyph, map_wall2_ew_glyph;
extern int map_wall4_ns_glyph, map_wall4_ew_glyph;
extern int map_wall2_enclosed_glyph, map_wall4_enclosed_glyph;

apply_enclosed_cell_glyph(grid_x, grid_y)
int grid_x, grid_y;
{
	/* Four kind 2 walls select that enclosure's glyph. */
	if (map_ns_wall_glyphs[grid_x][grid_y] == map_wall2_ns_glyph &&
	    map_ew_wall_glyphs[grid_x][grid_y] == map_wall2_ew_glyph &&
	    map_ns_wall_glyphs[grid_x][grid_y + 1] == map_wall2_ns_glyph &&
	    map_ew_wall_glyphs[grid_x - 1][grid_y] == map_wall2_ew_glyph)
		map_floor_glyphs[grid_x][grid_y] = map_wall2_enclosed_glyph;

	/* Four kind 4 walls select that enclosure's glyph. */
	if (map_ns_wall_glyphs[grid_x][grid_y] == map_wall4_ns_glyph
		&&
	    map_ew_wall_glyphs[grid_x][grid_y] == map_wall4_ew_glyph
	    	&&
	    map_ns_wall_glyphs[grid_x][grid_y + 1] == map_wall4_ns_glyph
	    	&&
	    map_ew_wall_glyphs[grid_x - 1][grid_y]
	    	== map_wall4_ew_glyph)
		map_floor_glyphs[grid_x][grid_y] = map_wall4_enclosed_glyph;
}
