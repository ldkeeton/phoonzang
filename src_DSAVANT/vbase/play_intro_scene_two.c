/* Initialize scene 2, display its message sequence, and release its
   pictures. */
extern int scene_cue_a, scene_cue_b, scene_cue_c;
extern int scroll_x[5], sprite_pos[2][8];
extern int actor_x, actor_y, scene_frame, scene_index, scene_step_b;
extern int scene_frame_delay_ticks;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern int load_numbered_scene_picture(), random_below(), draw_scene_frame(),
	call_reset_rgb(), call_show_area(), call_fade_in(),
		play_scene_message_sequence(),
	free_scene_picture(), blank_scene_screen();

play_intro_scene_two(first_message, cue_a, cue_b, cue_c)
int first_message, cue_a, cue_b, cue_c;
{
	int slot;

	load_numbered_scene_picture(4, 15);
	load_numbered_scene_picture(5, 16);
	load_numbered_scene_picture(6, 17);
	scene_cue_a = cue_a;
	scene_cue_b = cue_b;
	scene_cue_c = cue_c;
	slot = 0;
	do { /* space the five scrolling elements 80 pixels apart */
		scroll_x[slot] = 80 * slot;
	} while (++slot < 5);
	slot = 0;
	do { /* start sprites at the right edge with heights from 40 to 99 */
		sprite_pos[0][slot] = 320;
		sprite_pos[1][slot] = random_below(60) + 40;
	} while (++slot < 8);
	sprite_pos[0][3] = 318;
	sprite_pos[1][3] = 42;
	actor_x = -176;
	actor_y = 60;
	scene_frame = 0;
	scene_index = 2;
	scene_step_b = 1;
	scene_frame_delay_ticks = 3;
	party_redraw_last_tick = *tick_counter_ptr;
	draw_scene_frame();
	call_reset_rgb(0, 0, 0);
	call_show_area(0, 0, 319, 199); /* full 320 by 200 display */
	call_fade_in(0);
	play_scene_message_sequence(first_message, 0);
	free_scene_picture(17);
	free_scene_picture(16);
	free_scene_picture(15);
	blank_scene_screen();
}
