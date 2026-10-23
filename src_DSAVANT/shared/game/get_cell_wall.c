extern unsigned char *maze_data;
extern int ds_leaf_loc_NPSL();
extern int loc_UOPP();
extern int loc_KHGO();

/* reads the 4-bit wall field on one side (selector 0..3) of the maze cell at
   (map, x, y) with world coords (wx, wy); sides 0/1 read the plane 0/1 field
   (at +0x90/+0x290), sides 2/3 resolve the shared edge's neighbour piece */
get_cell_wall(selector, map, x, y, wx, wy)
int selector, map, x, y, wx, wy;
{
	switch (selector) {
	case 0:
		return ds_leaf_loc_NPSL(maze_data + 144,
			(map << 6) + (y << 3) + x, 4);	/* 8x8 cells per piece, 4-bit field */
	case 1:
		return ds_leaf_loc_NPSL(maze_data + 656,
			(map << 6) + (y << 3) + x, 4);
	case 2:
		return loc_UOPP(wx, wy, x, y, map);
	case 3:
		return loc_KHGO(wx, wy, x, y, map);
	}
}
