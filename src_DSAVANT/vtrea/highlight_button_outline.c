/* Draw the normal or selected button outline. */
extern int call_fill_area();
extern int draw_rect_outline();
extern int draw_rect_bevel();
extern int call_put_pixel();

/* Draw the normal or selected button outline. */
highlight_button_outline(left, top, right, bottom, selected)
int left, top, right, bottom, selected;
{
	call_fill_area(left, top, right, bottom,
		selected ? 194 : 192);
	draw_rect_outline(left, top, right, bottom);
	draw_rect_bevel(left, top, right, bottom,
		selected ? 196 : 176,
		selected ? 198 : 197);
	draw_rect_bevel(left - 2, top - 2, right + 2, bottom + 2,
		197, 180);
	call_put_pixel(left, top, selected ? 195 : 81);
	call_put_pixel(right, top, selected ? 197 : 182);
	call_put_pixel(left, bottom, selected ? 197 : 182);
	call_put_pixel(right, bottom, selected ? 199 : 198);
}
