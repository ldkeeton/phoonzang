/* install a mouse pointer from a shape record, or the built-in pointer when
   the record is null, then flush the keyboard */
struct pointer_shape {
	unsigned char row_stride;	/* +0: image bytes per row */
	unsigned char row_count;	/* +1: pointer height */
	char bitmap[1];			/* +2: pointer image data */
};

extern call_set_mouse_pointer();
extern flush_keyboard();

set_mouse_pointer_shape(shape)
far struct pointer_shape *shape;
{
	int row_stride, row_count;

	if (shape) {
		row_stride = shape->row_stride;
		row_count = shape->row_count;
		/* -1, -1 keep the current pointer coordinates. */
		call_set_mouse_pointer(shape->bitmap, row_stride, row_count, -1, -1);
	} else {
		/* Null image fields select the driver's built-in pointer. */
		call_set_mouse_pointer((char far *)0, 0, 0, -1, -1);
	}
	flush_keyboard();
}
