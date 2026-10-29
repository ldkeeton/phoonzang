/* Initialize scene 7, display its messages, and release its cached picture. */
extern char scene_seven_screen_filename[], scene_seven_digit_cycle[],
	scene_digit_cycle[];
extern long scene_backdrop_ref, call_cache_area();
extern int scene_step_a, scene_step_b, scene_step_c, scene_step_d;
extern int scene_frame, scene_index, scene_frame_delay_ticks;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern int load_screen_file(), load_numbered_scene_picture(), aztec_strcpy(),
	draw_scene_frame(), call_reset_rgb(), call_show_area(), call_fade_in(),
	play_scene_message_sequence(), free_scene_picture(), call_restore_screen(),
	blank_scene_screen();

play_intro_scene_seven(first_message)
int first_message;
{
	int reserved_scene_state;

	load_screen_file(scene_seven_screen_filename, 0);
	/* Cache the 320 by 146 backdrop in picture mode 2. */
	scene_backdrop_ref = call_cache_area(0, 0, 319, 145, 2, 0);
	load_numbered_scene_picture(12, 15);
	aztec_strcpy(scene_digit_cycle, scene_seven_digit_cycle);
	scene_step_c = 0;
	scene_step_a = 0;
	scene_step_b = 0;
	scene_step_d = 0;
	scene_frame = 0;
	scene_index = 7;
	scene_frame_delay_ticks = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	draw_scene_frame();
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199); /* Full 320 by 200 display. */
	call_fade_in(0);
	play_scene_message_sequence(first_message, 0);
	free_scene_picture(15);
	call_restore_screen(scene_backdrop_ref, 1, 0);
	blank_scene_screen();
}
