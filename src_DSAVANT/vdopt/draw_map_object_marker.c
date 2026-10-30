/* Draw the object marker at the center of one map view cell. */
extern int grid_origin_y, grid_origin_x;
extern void call_put_pixel();

draw_map_object_marker(grid_x, grid_y)
int grid_x;
int grid_y;
{
	/* Cells are seven pixels wide; the marker is offset three pixels in. */
	call_put_pixel(7 * grid_x + grid_origin_x + 3,
		7 * grid_y + grid_origin_y + 3, 85);
}
