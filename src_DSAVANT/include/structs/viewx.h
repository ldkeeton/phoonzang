/* View-cell x positions stored in adjoining five-column grids. */
struct view_x_grid {
	int cell_x[6][5];	/* 0x00: maze cell x offsets. */
	int marker_x[5][5];	/* 0x3c: marker x offsets. */
};
