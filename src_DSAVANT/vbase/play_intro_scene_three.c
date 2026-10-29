/* Initialize scene 3, display its messages, and release its picture
   resources. */
extern int scroll_x[5], sprite_pos[2][8];
extern long scene_backdrop_ref, call_cache_area();
extern int scene_cue_b, scene_cue_d, scene_cue_e;
extern int actor_x, actor_y, trail_x;
extern int scene_step_c, scene_step_d, scene_frame, scene_index;
extern int scene_frame_delay_ticks;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern int load_numbered_scene_picture(), draw_char_clipped_top_zero(),
	free_scene_picture(), random_below(), draw_scene_frame(), call_reset_rgb(),
	call_show_area(), call_fade_in(), play_scene_message_sequence(),
	call_restore_screen(), blank_scene_screen();

play_intro_scene_three(first_message, cue_b, cue_d, cue_e)
int first_message, cue_b, cue_d, cue_e;
{
	int slot;

	load_numbered_scene_picture(5, 15);
	/* Tile five background pieces at 80-pixel intervals. */
	slot = 0;
	do {
		scroll_x[slot] = 80 * slot;
	} while (++slot < 5);
	draw_char_clipped_top_zero(15, 1, scroll_x[0], 6);
	draw_char_clipped_top_zero(15, 2, scroll_x[1], 6);
	draw_char_clipped_top_zero(15, 3, scroll_x[2], 6);
	draw_char_clipped_top_zero(15, 4, scroll_x[3], 6);
	draw_char_clipped_top_zero(15, 5, scroll_x[4], 6);
	free_scene_picture(15);
	/* Cache the 320 by 146 backdrop in picture mode 2. */
	scene_backdrop_ref = call_cache_area(0, 0, 319, 145, 2, 0);
	load_numbered_scene_picture(4, 15);
	load_numbered_scene_picture(8, 16);
	load_numbered_scene_picture(7, 17);
	scene_cue_b = cue_b;
	scene_cue_d = cue_d;
	scene_cue_e = cue_e;
	/* Start eight sprites at the right edge with randomized heights. */
	slot = 0;
	do {
		sprite_pos[0][slot] = 320;
		sprite_pos[1][slot] = random_below(60) + 40;
	} while (++slot < 8);
	sprite_pos[0][3] = 318;
	sprite_pos[1][3] = 42;
	actor_x = 320;
	actor_y = 70;
	trail_x = -30;
	scene_step_c = 0;
	scene_step_d = 0;
	scene_frame = 0;
	scene_index = 3;
	scene_frame_delay_ticks = 5;
	party_redraw_last_tick = *tick_counter_ptr;
	draw_scene_frame();
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199); /* Full 320 by 200 display. */
	call_fade_in(0);
	play_scene_message_sequence(first_message, 0);
	free_scene_picture(17);
	free_scene_picture(16);
	free_scene_picture(15);
	call_restore_screen(scene_backdrop_ref, 1, 0);
	blank_scene_screen();
}
