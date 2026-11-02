/* Draw a one-pixel outline just outside a rectangle (the keyboard selection
   highlight). */

extern int call_fill_area();

draw_frame_outline(left, top, right, bottom, color)
int left, top, right, bottom, color;
{
	call_fill_area(left - 1, top - 1, right + 1, top - 1, color);
	call_fill_area(right + 1, top - 1, right + 1, bottom + 1, color);
	call_fill_area(left - 1, bottom + 1, right + 1, bottom + 1, color);
	call_fill_area(left - 1, top - 1, left - 1, bottom + 1, color);
}
