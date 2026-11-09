/* A screen rectangle, eight bytes: a movement area in
   screen_area_rectangles or a view box in boundary_box_bounds. */
#ifndef AREARECT_H
#define AREARECT_H

struct area_rectangle {
	int left;
	int top;
	int right;
	int bottom;
};

#endif
