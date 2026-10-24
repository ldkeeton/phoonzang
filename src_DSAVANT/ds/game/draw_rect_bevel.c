/* draws a one-pixel bevel inside left,top..right,bottom: top and left
   edges in light, right and bottom edges in dark */
draw_rect_bevel(left, top, right, bottom, light, dark)
{
	gfx_fill_area(left, top, right, top, light);
	gfx_fill_area(right, top + 1, right, bottom,
		dark);	/* below the top edge's corner */
	gfx_fill_area(left + 1, bottom, right, bottom,
		dark);	/* right of the left edge's corner */
	gfx_fill_area(left, top, left, bottom, light);
}
