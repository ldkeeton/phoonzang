/* fills left,top..right,bottom, outlines it, and bevels two pixels outside
   with the light/dark colours swapped so the panel reads as recessed */
draw_inset_panel(left, top, right, bottom)
{
	gfx_fill_area(left, top, right, bottom, 195);	/* panel fill colour */
	draw_rect_outline(left, top, right, bottom);
	draw_rect_bevel(left - 2, top - 2, right + 2, bottom + 2, 197,
		180);	/* inverted bevel */
}
