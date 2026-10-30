/* Advance and redraw the active scene frame when it changes. */
extern int scene_index;
extern int advance_scene_frame();
extern int draw_scene_frame();
extern int call_show_area();

refresh_scene_frame_if_active()
{
	if (scene_index > 0 && advance_scene_frame() != 0) {
		draw_scene_frame();
		/* Show the 320-by-146 scene viewport. */
		call_show_area(0, 0, 319, 145);
	}
}
