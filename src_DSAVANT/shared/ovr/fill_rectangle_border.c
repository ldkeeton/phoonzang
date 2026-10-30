/* Fill the four one-pixel strips around a rectangle. */
extern int call_fill_area();

fill_rectangle_border(left, top, right, bottom, color)
int left, top, right, bottom, color;
{
	/* The one-pixel offsets extend each side just outside the rectangle. */
	call_fill_area(left - 1, top - 1, right + 1, top - 1, color);
	call_fill_area(right + 1, top - 1, right + 1, bottom + 1, color);
	call_fill_area(left - 1, bottom + 1, right + 1, bottom + 1, color);
	call_fill_area(left - 1, top - 1, left - 1, bottom + 1, color);
}
