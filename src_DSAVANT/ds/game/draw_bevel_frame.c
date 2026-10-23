/* fills left,top..right,bottom, outlines it and bevels it inside; with
   outer set, adds a second bevel two pixels outside, then colours the
   four corner pixels */
draw_bevel_frame(left, top, right, bottom, outer)
{
	gfx_fill_area(left, top, right, bottom, 192);
	draw_rect_outline(left, top, right, bottom);
	draw_rect_bevel(left, top, right, bottom, 176, 197);
	if (outer)	/* outer bevel lights with the inner bevel's dark colour */
		draw_rect_bevel(left - 2, top - 2, right + 2, bottom + 2, 197, 180);
	gfx_put_pixel(left, top, 81);
	gfx_put_pixel(right, top, 182);
	gfx_put_pixel(left, bottom, 182);
	gfx_put_pixel(right, bottom, 198);
}
