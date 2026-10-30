/* Initialize intro scene one, display its messages, and release its
   pictures. */
extern char scene_one_screen_filename[], scene_one_digit_cycle[],
	scene_digit_cycle[];
extern long scene_backdrop_ref, party_redraw_last_tick;
extern int scene_cue_a, scene_cue_b, scene_cue_c, scene_cue_d;
extern int scene_frame, scene_index, scene_step_a, scene_frame_delay_ticks;
extern long far *tick_counter_ptr;
extern int load_screen_file(), load_numbered_scene_picture();
extern long call_cache_area();
extern int aztec_strcpy(), draw_scene_frame(), call_reset_rgb();
extern int call_show_area(), call_fade_in(), play_scene_message_sequence();
extern int free_scene_picture(), call_restore_screen(), blank_scene_screen();

play_intro_scene_one(first_message, cue_a, cue_b, cue_c, cue_d)
int first_message, cue_a, cue_b, cue_c, cue_d;
{
	load_screen_file(scene_one_screen_filename, 0);
	/* Save the full 320 by 146 backdrop in picture mode 2. */
	scene_backdrop_ref = call_cache_area(0, 0, 319, 145, 2, 0);
	load_numbered_scene_picture(1, 15);
	load_numbered_scene_picture(2, 16);
	load_numbered_scene_picture(3, 17);
	scene_cue_a = cue_a;
	scene_cue_b = cue_b;
	scene_cue_c = cue_c;
	scene_cue_d = cue_d;
	scene_frame = 0;
	scene_index = 1;
	/* The first step starts at 20 when the second cue is zero. */
	scene_step_a = cue_b == 0 ? 20 : 0;
	aztec_strcpy(scene_digit_cycle, scene_one_digit_cycle);
	scene_frame_delay_ticks = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	draw_scene_frame();
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199);
	call_fade_in(0);
	play_scene_message_sequence(first_message, 0);
	free_scene_picture(17);
	free_scene_picture(16);
	free_scene_picture(15);
	call_restore_screen(scene_backdrop_ref, 1, 0);
	blank_scene_screen();
}
