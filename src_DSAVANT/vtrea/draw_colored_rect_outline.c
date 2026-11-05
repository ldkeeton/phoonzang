/* Fill the four one-pixel edges around a rectangle. */
extern int call_fill_area();

/* Draw a colored outline around the supplied rectangle. */
draw_colored_rect_outline(left, top, right, bottom, color)
int left, top, right, bottom, color;
{
	call_fill_area(left - 1, top - 1, right + 1, top - 1, color);
	call_fill_area(right + 1, top - 1, right + 1, bottom + 1, color);
	call_fill_area(left - 1, bottom + 1, right + 1, bottom + 1, color);
	call_fill_area(left - 1, top - 1, left - 1, bottom + 1, color);
}
