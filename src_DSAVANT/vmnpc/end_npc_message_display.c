/* Restores the NPC dialog area and resets the mouse pointer. */
extern int redraw_area_set(), show_area_set();
extern int call_mouse_glide_back(), set_mouse_pointer_shape();

/* Ends begin_npc_message_display: redraws the area and restores the
   pointer. */
end_npc_message_display()
{
	redraw_area_set(3);
	show_area_set(3);
	call_mouse_glide_back(302, 164, 0);
	set_mouse_pointer_shape((char far *)0L);
}
