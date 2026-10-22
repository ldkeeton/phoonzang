/* draws a one-pixel colour-0 outline just outside left,top..right,bottom */
draw_rect_outline(left, top, right, bottom)
{
	gfx_fill_area(left - 1, top - 1, right + 1, top - 1, 0);	/* above */
	gfx_fill_area(right + 1, top - 1, right + 1, bottom + 1, 0);	/* right */
	gfx_fill_area(left - 1, bottom + 1, right + 1, bottom + 1, 0);	/* below */
	gfx_fill_area(left - 1, top - 1, left - 1, bottom + 1, 0);	/* left */
}
