/* draws one frame of the scene selected by scene_index and advances its
   animation state */

extern int scene_index, scene_tick, scene_running, scene_frame;
extern long scene_backdrop_ref;
extern int scene_cue_a, scene_cue_b, scene_cue_c, scene_cue_d, scene_cue_e,
	scene_step_a;
extern unsigned char scene_digit_cycle[];
extern int scroll_x[5];
extern int sprite_pos[2][8];	/* row 0 x, row 1 y */
extern int actor_x, trail_x, actor_y;
extern int scene_step_b, scene_step_c, scene_step_d, scene_clip_arg;

draw_scene_frame()
{
	int slot, obj, cel, x_off, y_off;

	switch (scene_index) {	/* scenes 1..8; 0 and others draw nothing */
	case 1:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		if (scene_cue_d < scene_tick)
			draw_char_clipped_top_zero(17, 6, 189, 79);
		draw_char_clipped_top_zero(17, scene_frame % 3 + 1, 116, 43);
		draw_char_clipped_top_zero(17, scene_frame % 2 + 4, 164, 63);
		cel = scene_digit_cycle[scene_frame % 6] - '1';	/* '1'-based */
		draw_char_clipped_top_zero(17, cel + 7, 161, 6);
		cel = scene_digit_cycle[(scene_frame + 1) % 6] - '1';
		draw_char_clipped_top_zero(17, cel + 11, 191, 30);
		cel = scene_digit_cycle[(scene_frame + 2) % 6] - '1';
		draw_char_clipped_top_zero(17, cel + 15, 208, 53);
		if (scene_cue_a < scene_tick) {
			draw_char_clipped_top_zero(16, 1, 133, 103);
			x_off = scene_frame < 6 ? scene_frame : 6 - scene_frame % 6;
			cel = (scene_frame + 3) % 12;
			y_off = cel < 6 ? 6 - cel : cel % 6;
			draw_char_clipped_top_zero(16, scene_frame % 2 + 2, x_off + 159,
				y_off + 76);
		}
		if (scene_cue_b < scene_tick) {
			if (scene_step_a < 16) {
				draw_char_clipped_top_zero(16, scene_step_a + 4, 190, 47);
				scene_step_a++;
			} else if (scene_step_a < 20) {
				draw_char_clipped_top_zero(16, 20, 190, 47);
				draw_char_clipped_top_zero(16, scene_step_a + 5, 190, 47);
				scene_step_a++;
			} else {
				scene_running = 0;
				draw_char_clipped_top_zero(16, 20, 190, 47);
				draw_char_clipped_top_zero(16, 24, 190, 47);
				draw_char_clipped_top_zero(16, scene_frame % 6 + 25, 190, 47);
				cel = scene_frame < 9 ? (random_below(7) ? 0 : 1) : scene_frame % 3 + 1;
				if (cel == 3)
					cel = 1;
				draw_char_clipped_top_zero(16, cel + 31, 190, 47);
				draw_char_clipped_top_zero(16, random_below(4) + 34, 190, 47);
			}
		}
		if (scene_cue_c < scene_tick) {
			draw_char_clipped_top_zero(15, 1, 40, 21);
			draw_char_clipped_top_zero(15, 2, 133, 21);
			cel = scene_frame < 4 || scene_frame > 6 ? 3 : scene_frame;
			draw_char_clipped_top_zero(15, cel, 40, 21);
		}
		break;
	case 2:
		draw_char_clipped_top_zero(16, 1, scroll_x[0], 6);
		draw_char_clipped_top_zero(16, 2, scroll_x[1], 6);
		draw_char_clipped_top_zero(16, 3, scroll_x[2], 6);
		draw_char_clipped_top_zero(16, 4, scroll_x[3], 6);
		draw_char_clipped_top_zero(16, 5, scroll_x[4], 6);
		for (slot = 0; slot < 5; slot++) {	/* scroll left 10, wrap to x 320 */
			scroll_x[slot] -= 10;
			if (scroll_x[slot] <= -0x50)
				scroll_x[slot] = 320;
		}
		for (slot = 0; slot < 3; slot++) {	/* objects 1..3 */
			obj = slot + 1;
			if (sprite_pos[0][obj] < 320) {	/* on screen: x below 320 */
				draw_char_clipped_top_zero(15, slot + 6, sprite_pos[0][obj],
					sprite_pos[1][obj]);
				if (slot == 2)
					sprite_pos[0][obj] -= 10;
				else
					sprite_pos[0][obj] -= 20;
				if (sprite_pos[0][obj] < -0x10)
					sprite_pos[0][obj] = 320;
			} else if (random_below(40) == obj) {
				sprite_pos[0][obj] = 318;	/* respawn at the right edge */
				sprite_pos[1][obj] = random_below(60) + 40;
			}
		}
		if (scene_cue_a < scene_tick) {
			if (sprite_pos[0][0] < 260 && scene_step_b < 5)
				scene_step_b++;
			draw_char_clipped_top_zero(15, scene_step_b, sprite_pos[0][0], 75);
			if (sprite_pos[0][0] > 200)
				sprite_pos[0][0] -= 4;
		}
		if (scene_cue_b < scene_tick) {
			draw_char_clipped_top_zero(17, 1, actor_x, actor_y);
			draw_char_clipped_top_zero(17, random_below(4) + 2, actor_x, actor_y);
			if (actor_x < 80)
				actor_x += 6;
		}
		break;
	case 3:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		for (slot = 0; slot < 2; slot++) {		/* objects 1..2 */
			obj = slot + 1;
			if (sprite_pos[0][obj] < 320) {
				draw_char_clipped_top_zero(15, slot + 6, sprite_pos[0][obj],
					sprite_pos[1][obj]);
				sprite_pos[0][obj] -= 20;
				if (sprite_pos[0][obj] < -0x10)
					sprite_pos[0][obj] = 320;
			} else if (random_below(40) == obj) {
				sprite_pos[0][obj] = 318;
				sprite_pos[1][obj] = random_below(60) + 40;
			}
		}
		if (scene_cue_b < scene_tick) {
			draw_char_clipped_top_zero(17, 1, actor_x, actor_y);
			draw_char_clipped_top_zero(17, 2, actor_x + 68, actor_y - 39);
			draw_char_clipped_top_zero(17, 3, actor_x + 136, actor_y - 43);
			draw_char_clipped_top_zero(17, 4, actor_x + 204, actor_y - 59);
			if (scene_cue_d < scene_tick && scene_step_c < 6)
				scene_step_c++;
			draw_char_clipped_top_zero(17, scene_step_c + 5, actor_x, actor_y + 2);
			if (scene_cue_e < scene_tick) {
				if (actor_x - 5 > trail_x) {
					draw_char_clipped_top_zero(17, random_below(2) + 16, trail_x,
						actor_y + 24);
					trail_x++;
					trail_x++;
				} else {
					draw_char_clipped_top_zero(17, scene_step_d + 18, actor_x - 5,
						actor_y + 24);
					if (scene_step_d < 7)
						scene_step_d++;
					else {
						scene_running = 0;
						scene_cue_d = 99;	/* move both cues to tick 99 */
						scene_cue_e = 99;
						scene_step_c = 0;
						scene_step_d = 0;
					}
				}
			}
			draw_char_clipped_top_zero(17, random_below(4) + 12, actor_x + 217,
				actor_y - 28);
			draw_char_clipped_top_zero(17, scene_frame % 6 + 26, actor_x + 204,
				actor_y + 9);
			draw_char_clipped_top_zero(17, (scene_frame + 3) % 6 + 32, actor_x + 128,
				actor_y + 18);
			draw_char_clipped_top_zero(17, scene_frame / 3 + 38, actor_x + 151,
				actor_y - 30);
			draw_char_clipped_top_zero(17, (scene_frame + 5) % 12 / 3 + 42,
				actor_x + 168, actor_y - 14);
			draw_char_clipped_top_zero(17, scene_frame % 4 + 46, actor_x + 174,
				actor_y + 25);
			draw_char_clipped_top_zero(17, scene_frame / 2 % 4 + 50, actor_x + 212,
				actor_y - 62);
			draw_char_clipped_top_zero(17, scene_frame < 4 ? scene_frame + 54
				: 54, actor_x + 130, actor_y - 41);
			draw_char_clipped_top_zero(17, scene_frame % 4 + 58, actor_x + 109,
				actor_y + 34);
			draw_char_clipped_top_zero(16, scene_frame % 6 + 1, actor_x + 122,
				actor_y - 23);
			if (actor_x > 60)
				actor_x -= 3;
			if (actor_x - 5 < trail_x)
				trail_x = actor_x - 5;
		}
		break;
	case 4:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		draw_char_clipped_top_zero(15, scene_step_a, 112, 18);
		if (scene_cue_b < scene_tick && scene_clip_arg < 100) {
			draw_char_clipped_top(17, 6, actor_x, actor_y, scene_clip_arg);
			draw_char_clipped_top(17, random_below(2) + 7, actor_x, actor_y,
				scene_clip_arg);
			if (actor_x > 20) {
				scene_clip_arg++;
				scene_clip_arg++;
				if (scene_step_a < 8)
					scene_step_a++;
			}
			if (actor_x < 160)
				actor_x = actor_x + scene_clip_arg / 10 + 5;
			if (actor_y > 50)
				actor_y = actor_y--;	/* net -1 */
		}
		break;
	case 5:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		draw_char_clipped_top_zero(15, 3, scroll_x[0], 0);
		draw_char_clipped_top_zero(15, 4, scroll_x[1], 0);
		draw_char_clipped_top_zero(15, 3, scroll_x[2], 0);
		draw_char_clipped_top_zero(15, 4, scroll_x[3], 0);
		for (slot = 0; slot < 4; slot++) {	/* scroll left 1, wrap to x 480 */
			scroll_x[slot] -= 1;
			if (scroll_x[slot] <= -160)
				scroll_x[slot] = 480;
		}
		for (slot = 0; slot < 2; slot++) {
			obj = slot + 1;
			if (sprite_pos[0][obj] < 320) {
				draw_char_clipped_top_zero(15, slot + 5, sprite_pos[0][obj],
					sprite_pos[1][obj]);
				sprite_pos[0][obj] -= 3 - slot;
				if (sprite_pos[0][obj] < -0x50)
					sprite_pos[0][obj] = 320;
			} else if (random_below(30) == obj &&
			    (sprite_pos[0][(slot + 1) % 2 + 1] == 320
			    	|| sprite_pos[0][(slot + 1) % 2 + 1] < 240)) {
				sprite_pos[0][obj] = 318;
				sprite_pos[1][obj] = random_below(16) + 4;
			}
		}
		draw_char_clipped_top_zero(15, 1, 0, 0);
		draw_char_clipped_top_zero(15, 2, 160, 0);
		if (scene_cue_b < scene_tick && scene_clip_arg < 100) {
			draw_char_clipped_top(17, 6, actor_x, actor_y, scene_clip_arg);
			draw_char_clipped_top(17, random_below(2) + 7, actor_x, actor_y,
				scene_clip_arg);
			if (actor_x > 10) {
				scene_clip_arg++;
				scene_clip_arg++;
			}
			if (actor_x < 160)
				actor_x = actor_x + scene_clip_arg / 10 + 5;
			if (actor_y > 40)
				actor_y = actor_y--;	/* net -1 */
		}
		break;
	case 6:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		if (scene_cue_a < scene_tick) {
			draw_char_clipped_top_zero(15, 1, 75, 1);
			draw_char_clipped_top_zero(15, 2, 147, 66);
			draw_char_clipped_top_zero(15, 3, 61, 81);
			draw_char_clipped_top_zero(15, 4, 133, 81);
			draw_char_clipped_top_zero(15, 5, 205, 90);
			if (scene_step_a > 0 || scene_step_b == 0 && random_below(3) == 0) {
				draw_char_clipped_top_zero(15, scene_step_a + 6, 171, 29);
				if (++scene_step_a == 9)
					scene_step_a = 0;
			} else if (scene_step_b > 0 || scene_step_a == 0 && random_below(5) == 0) {
				cel = scene_digit_cycle[scene_step_b % 6] - '1';
				draw_char_clipped_top_zero(15, cel + 14, 171, 29);
				if (scene_frame % 2 || scene_step_b == 0)
					scene_step_b++;
				if (scene_step_b == 6)
					scene_step_b = 0;
			} else
				draw_char_clipped_top_zero(15, 14, 171, 29);
		}
		break;
	case 7:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		draw_char_clipped_top_zero(15, scene_step_c + 1, 7, 3);
		draw_char_clipped_top_zero(15, (scene_step_c + 3) % 7 + 8, 295, 3);
		scene_step_c = (scene_step_c + 1) % 7;
		slot = scene_frame < 6 ? random_below(4) : 0;
		draw_char_clipped_top_zero(15, slot + 15, 0, 38);
		slot = scene_frame > 5 ? random_below(4) : 0;
		draw_char_clipped_top_zero(15, slot + 19, 286, 39);
		cel = random_below(4) ? scene_frame / 4 : 0;
		draw_char_clipped_top_zero(15, cel + 23, 187, 73);
		draw_char_clipped_top_zero(15, scene_frame / 4 + 26, 149, 79);
		if (scene_step_a > 0 || scene_step_b == 0 && random_below(15) == 0) {
			cel = scene_digit_cycle[scene_step_a % 6] - '1';
			draw_char_clipped_top_zero(15, cel + 29, 138, 6);
			if (scene_frame % 2 || scene_step_a == 0)
				scene_step_a++;
			if (scene_step_a == 6)
				scene_step_a = 0;
		} else if (scene_step_b > 0 || scene_step_a == 0 && random_below(15) == 0) {
			cel = scene_digit_cycle[scene_step_b % 6] - '1';
			draw_char_clipped_top_zero(15, 29, 138, 6);
			draw_char_clipped_top_zero(15, cel + 33, 141, 24);
			if (scene_frame % 2 || scene_step_b == 0)
				scene_step_b++;
			if (scene_step_b == 6)
				scene_step_b = 0;
		} else
			draw_char_clipped_top_zero(15, 29, 138, 6);
		draw_char_clipped_top_zero(15, scene_frame / 2 % 2 + 38, 219, 102);
		draw_char_clipped_top_zero(15, scene_frame / 2 % 2 + 40, 84, 102);
		cel = scene_digit_cycle[scene_step_d % 6] - '1';
		draw_char_clipped_top_zero(15, cel + 42, 111, 65);
		if (scene_step_d > 0 || random_below(10) == 0) {
			if (random_below(3) == 0)
				scene_step_d++;
			if (scene_step_d == 6)
				scene_step_d = 0;
			if (scene_step_d == 4 && random_below(2))
				scene_step_d = 0;
		}
		break;
	case 8:
		call_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		if (scene_cue_b < scene_tick) {
			draw_char_clipped_top_zero(15, 1, 56, 23);
			draw_char_clipped_top_zero(15, 2, 147, 39);
			draw_char_clipped_top_zero(15, 3, 35, 85);
			draw_char_clipped_top_zero(15, 4, 147, 85);
			if ((scene_step_c > 0 || random_below(3) == 0) && random_below(2))
				scene_step_c = random_below(3) + 1;
			if (random_below(8) == 0)
				scene_step_c = 0;
			draw_char_clipped_top_zero(15, scene_step_c + 5, 79, 55);
			draw_char_clipped_top_zero(15, scene_step_d + 9, 87, 42);
			if (random_below(2))
				scene_step_d = random_below(6);
		}
		if (scene_cue_c < scene_tick) {
			draw_char_clipped_top_zero(16, 1, 34, 0);
			draw_char_clipped_top_zero(16, 2, 114, 42);
			draw_char_clipped_top_zero(16, 3, 55, 88);
			draw_char_clipped_top_zero(16, 4, 135, 85);
			draw_char_clipped_top_zero(16, scene_step_a + 5, 178, 73);
			if (scene_step_b > 0) {
				switch (scene_step_b) {	/* steps 1..4 of a one-shot sequence */
				case 1:
					draw_char_clipped_top_zero(16, 9, 208, 87);
					break;
				case 2:
					draw_char_clipped_top_zero(16, 10, 228, 77);
					break;
				case 3:
					draw_char_clipped_top_zero(16, 11, 250, 66);
					break;
				case 4:
					draw_char_clipped_top_zero(16, 12, 280, 51);
					break;
				}
				if (++scene_step_b > 4)
					scene_step_b = 0;
			}
			if (scene_step_a > 0 || random_below(10) == 0) {
				if (++scene_step_a == 2)
					scene_step_b = 1;
				if (scene_step_a > 3)
					scene_step_a = 0;
			}
		}
		break;
	}
}
