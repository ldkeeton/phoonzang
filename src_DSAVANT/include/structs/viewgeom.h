/* view_geometry: the y of each view depth, then the wall corner points. */
#ifndef VIEWGEOM_H
#define VIEWGEOM_H

struct view_point {
	int x, y;
};

struct view_geometry {
	int depth_y[5];			     /* 0x00: depth positions. */
	struct view_point walls[5][5][2][2]; /* 0x0a: kind, depth, side, mirror. */
};

#endif
