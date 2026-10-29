/* Initialize scene 5, play its messages, and release its cached pictures. */
extern char scene_five_screen_filename[];
extern long scene_backdrop_ref, call_cache_area();
extern int scene_cue_b, scene_frame, scene_index;
extern int scroll_x[5], sprite_pos[2][8];
extern int actor_x, actor_y, scene_clip_arg, scene_frame_delay_ticks;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern int load_screen_file(), load_numbered_scene_picture(), random_below(),
	draw_scene_frame(), call_reset_rgb(), call_show_area(), call_fade_in(),
	play_scene_message_sequence(), free_scene_picture(), call_restore_screen(),
	blank_scene_screen();

play_intro_scene_five(first_message, cue_b)
int first_message, cue_b;
{
	int slot;

	load_screen_file(scene_five_screen_filename, 0);
	scene_backdrop_ref = call_cache_area(0, 0, 319, 145, 2, 0);
	load_numbered_scene_picture(10, 15);
	load_numbered_scene_picture(6, 17);
	scene_cue_b = cue_b;
	scene_frame = 0;
	scene_index = 5;
	/* Space the four scrolling elements 160 pixels apart. */
	scroll_x[0] = 0;
	scroll_x[1] = 160;
	scroll_x[2] = 320;
	scroll_x[3] = 480;
	slot = 0;
	do { /* Start sprites at the right edge, at heights from 4 to 19. */
		sprite_pos[0][slot] = 320;
		sprite_pos[1][slot] = random_below(16) + 4;
	} while (++slot < 8);
	actor_x = -100;
	actor_y = 110;
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
