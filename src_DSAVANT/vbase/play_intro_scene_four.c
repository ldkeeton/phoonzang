/* Initialize scene 4, play its messages, and release its cached pictures. */
extern char scene_four_screen_filename[];
extern long scene_backdrop_ref, call_cache_area();
extern int scene_cue_b, scene_step_a, scene_frame, scene_index;
extern int actor_x, actor_y, scene_clip_arg, scene_frame_delay_ticks;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern int load_screen_file(), load_numbered_scene_picture(),
	draw_scene_frame(), call_reset_rgb(), call_show_area(), call_fade_in(),
	play_scene_message_sequence(), free_scene_picture(), call_restore_screen(),
	blank_scene_screen();

play_intro_scene_four(first_message, cue_b)
int first_message, cue_b;
{
	load_screen_file(scene_four_screen_filename, 0);
	/* Cache the top 320 by 146 pixels of the backdrop (rows 0-145). */
	scene_backdrop_ref = call_cache_area(0, 0, 319, 145, 2, 0);
	load_numbered_scene_picture(9, 15);
	load_numbered_scene_picture(6, 17);
	scene_cue_b = cue_b;
	scene_step_a = 1;
	scene_frame = 0;
	scene_index = 4;
	/* Start the actor off the left edge. */
	actor_x = -100;
	actor_y = 85;
	scene_clip_arg = 0;
	scene_frame_delay_ticks = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	draw_scene_frame();
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199); /* Full 320 by 200 display. */
	call_fade_in(0);
	play_scene_message_sequence(first_message, 0);
	free_scene_picture(17);
	free_scene_picture(15);
	call_restore_screen(scene_backdrop_ref, 1, 0);
	blank_scene_screen();
}
