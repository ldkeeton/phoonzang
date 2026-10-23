/* dissolves left,top..right,bottom into view, or shows it at once when
   no_dissolve is set; parks the mouse pointer at a fixed spot around the
   effect */
extern char no_dissolve;
extern int mouse_active;
extern char far *mouse_pointer_shape;
extern long set_mouse_pointer_shape();

dissolve_or_show_area(left, top, right, bottom)
int left, top, right, bottom;
{
	if (!no_dissolve) {			/* dissolve animation enabled */
		if (mouse_active) {			/* pointer is on: hide it while the screen changes */
			set_mouse_pointer_shape(mouse_pointer_shape);
			gfx_mouse_glide_to(302, 164, 0);
		}
		gfx_dissolve_area(left, top, right, bottom, 0);
		if (mouse_active) {
			gfx_mouse_glide_back(302, 164, 0);
			set_mouse_pointer_shape(0L);		/* no shape: restore the default pointer */
		}
	} else {
		gfx_show_area(left, top, right, bottom);
	}
	flush_keyboard();
}
