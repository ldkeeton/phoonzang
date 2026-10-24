/* draws a filled dialog panel over the corners left,top..right,bottom with
   an outline around it and a bevelled edge */
draw_dialog_box(left, top, right, bottom)
{
	gfx_fill_area(left, top, right, bottom, 194);	/* panel fill colour */
	draw_rect_outline(left, top, right, bottom);
	draw_rect_bevel(left, top, right, bottom, 180,
		197);	/* top/left, bottom/right edge colours */
}
