/* fills left,top..right,bottom, outlines it and bevels it inside; with
   outer set, adds a second bevel two pixels outside, then colours the
   four corner pixels */
draw_bevel_frame(left, top, right, bottom, outer)
{
	gfx_fill_area(left, top, right, bottom, 0xc0);
	draw_rect_outline(left, top, right, bottom);
	draw_rect_bevel(left, top, right, bottom, 0xb0, 0xc5);
	if (outer)	/* outer bevel lights with the inner bevel's dark colour */
		draw_rect_bevel(left - 2, top - 2, right + 2, bottom + 2, 0xc5, 0xb4);
	gfx_put_pixel(left, top, 0x51);
	gfx_put_pixel(right, top, 0xb6);
	gfx_put_pixel(left, bottom, 0xb6);
	gfx_put_pixel(right, bottom, 0xc6);
}
