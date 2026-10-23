/* draws one character in a 7-pixel grid cell offset from the grid origin, clipped to 72..248 x 33..143 */
extern int grid_origin_y, grid_origin_x;

draw_grid_cell_char(col, row, ch, xoff, yoff)
char ch;
{
	char text[10];

	text[0] = ch;
	text[1] = 0;	/* NUL-terminate */
	gfx_draw_text(15, 7*col + grid_origin_x + xoff, 7*row + grid_origin_y + yoff,
		72, 248, 33, 143, 0, text, 0, 0);	/* 7-pixel cells; clip x 72..248, y 33..143 */
}
