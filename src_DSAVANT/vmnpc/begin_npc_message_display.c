/* Clears the NPC text lines and readies the screen before NPC message
   output. */
extern char text_line_buffer[];
extern int text_line_color[];
extern int text_line_index;
extern char far *mouse_pointer_shape;
extern int set_mouse_pointer_shape();
extern int call_mouse_glide_to();
extern int redraw_area_set(), show_area_set();

begin_npc_message_display()
{
	for (text_line_index = 0; text_line_index < 4; text_line_index++) {
		text_line_buffer[text_line_index << 7] = 0;
		text_line_color[text_line_index] = 0;
	}
	text_line_index = 0;
	set_mouse_pointer_shape(mouse_pointer_shape);
	call_mouse_glide_to(302, 164, 0);
	redraw_area_set(3);
	show_area_set(3);
}
