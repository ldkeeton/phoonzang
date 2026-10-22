extern int scene_index, scene_tick, scene_running, scene_frame;
extern long scene_backdrop_ref;
extern int scene_cue_a, scene_cue_b, scene_cue_c, scene_cue_d, scene_cue_e, scene_step_a;
extern unsigned char scene_digit_cycle[];
extern int scroll_x[5];
extern int sprite_pos[2][8];	/* row 0 x, row 1 y */
extern int actor_x, trail_x, actor_y;
extern int scene_step_b, scene_step_c, scene_step_d, scene_clip_arg;

/* draws one frame of the scene selected by scene_index and advances its animation state */
draw_scene_frame()
{
	int slot, obj, cel, x_off, y_off;

	switch (scene_index) {	/* scenes 1..8; 0 and others draw nothing */
	case 1:
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		if (scene_cue_d < scene_tick)
			draw_char_clipped_top_zero(0x11, 6, 0xbd, 0x4f);
		draw_char_clipped_top_zero(0x11, scene_frame % 3 + 1, 0x74, 0x2b);
		draw_char_clipped_top_zero(0x11, scene_frame % 2 + 4, 0xa4, 0x3f);
		cel = scene_digit_cycle[scene_frame % 6] - '1';	/* table holds '1'-based digits */
		draw_char_clipped_top_zero(0x11, cel + 7, 0xa1, 6);
		cel = scene_digit_cycle[(scene_frame + 1) % 6] - '1';
		draw_char_clipped_top_zero(0x11, cel + 0xb, 0xbf, 0x1e);
		cel = scene_digit_cycle[(scene_frame + 2) % 6] - '1';
		draw_char_clipped_top_zero(0x11, cel + 0xf, 0xd0, 0x35);
		if (scene_cue_a < scene_tick) {
			draw_char_clipped_top_zero(0x10, 1, 0x85, 0x67);
			x_off = scene_frame < 6 ? scene_frame : 6 - scene_frame % 6;
			cel = (scene_frame + 3) % 12;
			y_off = cel < 6 ? 6 - cel : cel % 6;
			draw_char_clipped_top_zero(0x10, scene_frame % 2 + 2, x_off + 0x9f, y_off + 0x4c);
		}
		if (scene_cue_b < scene_tick) {
			if (scene_step_a < 0x10) {
				draw_char_clipped_top_zero(0x10, scene_step_a + 4, 0xbe, 0x2f);
				scene_step_a++;
			} else if (scene_step_a < 0x14) {
				draw_char_clipped_top_zero(0x10, 0x14, 0xbe, 0x2f);
				draw_char_clipped_top_zero(0x10, scene_step_a + 5, 0xbe, 0x2f);
				scene_step_a++;
			} else {
				scene_running = 0;
				draw_char_clipped_top_zero(0x10, 0x14, 0xbe, 0x2f);
				draw_char_clipped_top_zero(0x10, 0x18, 0xbe, 0x2f);
				draw_char_clipped_top_zero(0x10, scene_frame % 6 + 0x19, 0xbe, 0x2f);
				cel = scene_frame < 9 ? (random_below(7) ? 0 : 1) : scene_frame % 3 + 1;
				if (cel == 3)
					cel = 1;
				draw_char_clipped_top_zero(0x10, cel + 0x1f, 0xbe, 0x2f);
				draw_char_clipped_top_zero(0x10, random_below(4) + 0x22, 0xbe, 0x2f);
			}
		}
		if (scene_cue_c < scene_tick) {
			draw_char_clipped_top_zero(0xf, 1, 0x28, 0x15);
			draw_char_clipped_top_zero(0xf, 2, 0x85, 0x15);
			cel = scene_frame < 4 || scene_frame > 6 ? 3 : scene_frame;
			draw_char_clipped_top_zero(0xf, cel, 0x28, 0x15);
		}
		break;
	case 2:
		draw_char_clipped_top_zero(0x10, 1, scroll_x[0], 6);
		draw_char_clipped_top_zero(0x10, 2, scroll_x[1], 6);
		draw_char_clipped_top_zero(0x10, 3, scroll_x[2], 6);
		draw_char_clipped_top_zero(0x10, 4, scroll_x[3], 6);
		draw_char_clipped_top_zero(0x10, 5, scroll_x[4], 6);
		for (slot = 0; slot < 5; slot++) {	/* scroll left 10, wrap to x 320 */
			scroll_x[slot] -= 10;
			if (scroll_x[slot] <= -0x50)
				scroll_x[slot] = 0x140;
		}
		for (slot = 0; slot < 3; slot++) {	/* objects 1..3 */
			obj = slot + 1;
			if (sprite_pos[0][obj] < 0x140) {	/* on screen: x below 320 */
				draw_char_clipped_top_zero(0xf, slot + 6, sprite_pos[0][obj], sprite_pos[1][obj]);
				if (slot == 2)
					sprite_pos[0][obj] -= 10;
				else
					sprite_pos[0][obj] -= 20;
				if (sprite_pos[0][obj] < -0x10)
					sprite_pos[0][obj] = 0x140;
			} else if (random_below(0x28) == obj) {
				sprite_pos[0][obj] = 0x13e;	/* respawn at the right edge */
				sprite_pos[1][obj] = random_below(0x3c) + 0x28;
			}
		}
		if (scene_cue_a < scene_tick) {
			if (sprite_pos[0][0] < 0x104 && scene_step_b < 5)
				scene_step_b++;
			draw_char_clipped_top_zero(0xf, scene_step_b, sprite_pos[0][0], 0x4b);
			if (sprite_pos[0][0] > 0xc8)
				sprite_pos[0][0] -= 4;
		}
		if (scene_cue_b < scene_tick) {
			draw_char_clipped_top_zero(0x11, 1, actor_x, actor_y);
			draw_char_clipped_top_zero(0x11, random_below(4) + 2, actor_x, actor_y);
			if (actor_x < 0x50)
				actor_x += 6;
		}
		break;
	case 3:
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		for (slot = 0; slot < 2; slot++) {	/* objects 1..2 */
			obj = slot + 1;
			if (sprite_pos[0][obj] < 0x140) {
				draw_char_clipped_top_zero(0xf, slot + 6, sprite_pos[0][obj], sprite_pos[1][obj]);
				sprite_pos[0][obj] -= 20;
				if (sprite_pos[0][obj] < -0x10)
					sprite_pos[0][obj] = 0x140;
			} else if (random_below(0x28) == obj) {
				sprite_pos[0][obj] = 0x13e;
				sprite_pos[1][obj] = random_below(0x3c) + 0x28;
			}
		}
		if (scene_cue_b < scene_tick) {
			draw_char_clipped_top_zero(0x11, 1, actor_x, actor_y);
			draw_char_clipped_top_zero(0x11, 2, actor_x + 0x44, actor_y - 0x27);
			draw_char_clipped_top_zero(0x11, 3, actor_x + 0x88, actor_y - 0x2b);
			draw_char_clipped_top_zero(0x11, 4, actor_x + 0xcc, actor_y - 0x3b);
			if (scene_cue_d < scene_tick && scene_step_c < 6)
				scene_step_c++;
			draw_char_clipped_top_zero(0x11, scene_step_c + 5, actor_x, actor_y + 2);
			if (scene_cue_e < scene_tick) {
				if (actor_x - 5 > trail_x) {
					draw_char_clipped_top_zero(0x11, random_below(2) + 0x10, trail_x, actor_y + 0x18);
					trail_x++;
					trail_x++;
				} else {
					draw_char_clipped_top_zero(0x11, scene_step_d + 0x12, actor_x - 5, actor_y + 0x18);
					if (scene_step_d < 7)
						scene_step_d++;
					else {
						scene_running = 0;
						scene_cue_d = 0x63;	/* move both cues to tick 99 */
						scene_cue_e = 0x63;
						scene_step_c = 0;
						scene_step_d = 0;
					}
				}
			}
			draw_char_clipped_top_zero(0x11, random_below(4) + 0xc, actor_x + 0xd9, actor_y - 0x1c);
			draw_char_clipped_top_zero(0x11, scene_frame % 6 + 0x1a, actor_x + 0xcc, actor_y + 9);
			draw_char_clipped_top_zero(0x11, (scene_frame + 3) % 6 + 0x20, actor_x + 0x80, actor_y + 0x12);
			draw_char_clipped_top_zero(0x11, scene_frame / 3 + 0x26, actor_x + 0x97, actor_y - 0x1e);
			draw_char_clipped_top_zero(0x11, (scene_frame + 5) % 12 / 3 + 0x2a, actor_x + 0xa8, actor_y - 0xe);
			draw_char_clipped_top_zero(0x11, scene_frame % 4 + 0x2e, actor_x + 0xae, actor_y + 0x19);
			draw_char_clipped_top_zero(0x11, scene_frame / 2 % 4 + 0x32, actor_x + 0xd4, actor_y - 0x3e);
			draw_char_clipped_top_zero(0x11, scene_frame < 4 ? scene_frame + 0x36 : 0x36, actor_x + 0x82, actor_y - 0x29);
			draw_char_clipped_top_zero(0x11, scene_frame % 4 + 0x3a, actor_x + 0x6d, actor_y + 0x22);
			draw_char_clipped_top_zero(0x10, scene_frame % 6 + 1, actor_x + 0x7a, actor_y - 0x17);
			if (actor_x > 0x3c)
				actor_x -= 3;
			if (actor_x - 5 < trail_x)
				trail_x = actor_x - 5;
		}
		break;
	case 4:
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		draw_char_clipped_top_zero(0xf, scene_step_a, 0x70, 0x12);
		if (scene_cue_b < scene_tick && scene_clip_arg < 0x64) {
			draw_char_clipped_top(0x11, 6, actor_x, actor_y, scene_clip_arg);
			draw_char_clipped_top(0x11, random_below(2) + 7, actor_x, actor_y, scene_clip_arg);
			if (actor_x > 0x14) {
				scene_clip_arg++;
				scene_clip_arg++;
				if (scene_step_a < 8)
					scene_step_a++;
			}
			if (actor_x < 0xa0)
				actor_x = actor_x + scene_clip_arg / 10 + 5;
			if (actor_y > 0x32)
				actor_y = actor_y--;	/* net -1 */
		}
		break;
	case 5:
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		draw_char_clipped_top_zero(0xf, 3, scroll_x[0], 0);
		draw_char_clipped_top_zero(0xf, 4, scroll_x[1], 0);
		draw_char_clipped_top_zero(0xf, 3, scroll_x[2], 0);
		draw_char_clipped_top_zero(0xf, 4, scroll_x[3], 0);
		for (slot = 0; slot < 4; slot++) {	/* scroll left 1, wrap to x 480 */
			scroll_x[slot] -= 1;
			if (scroll_x[slot] <= -160)
				scroll_x[slot] = 0x1e0;
		}
		for (slot = 0; slot < 2; slot++) {
			obj = slot + 1;
			if (sprite_pos[0][obj] < 0x140) {
				draw_char_clipped_top_zero(0xf, slot + 5, sprite_pos[0][obj], sprite_pos[1][obj]);
				sprite_pos[0][obj] -= 3 - slot;
				if (sprite_pos[0][obj] < -0x50)
					sprite_pos[0][obj] = 0x140;
			} else if (random_below(0x1e) == obj &&
			    (sprite_pos[0][(slot + 1) % 2 + 1] == 0x140 || sprite_pos[0][(slot + 1) % 2 + 1] < 0xf0)) {
				sprite_pos[0][obj] = 0x13e;
				sprite_pos[1][obj] = random_below(0x10) + 4;
			}
		}
		draw_char_clipped_top_zero(0xf, 1, 0, 0);
		draw_char_clipped_top_zero(0xf, 2, 0xa0, 0);
		if (scene_cue_b < scene_tick && scene_clip_arg < 0x64) {
			draw_char_clipped_top(0x11, 6, actor_x, actor_y, scene_clip_arg);
			draw_char_clipped_top(0x11, random_below(2) + 7, actor_x, actor_y, scene_clip_arg);
			if (actor_x > 10) {
				scene_clip_arg++;
				scene_clip_arg++;
			}
			if (actor_x < 0xa0)
				actor_x = actor_x + scene_clip_arg / 10 + 5;
			if (actor_y > 0x28)
				actor_y = actor_y--;	/* net -1 */
		}
		break;
	case 6:
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		if (scene_cue_a < scene_tick) {
			draw_char_clipped_top_zero(0xf, 1, 0x4b, 1);
			draw_char_clipped_top_zero(0xf, 2, 0x93, 0x42);
			draw_char_clipped_top_zero(0xf, 3, 0x3d, 0x51);
			draw_char_clipped_top_zero(0xf, 4, 0x85, 0x51);
			draw_char_clipped_top_zero(0xf, 5, 0xcd, 0x5a);
			if (scene_step_a > 0 || scene_step_b == 0 && random_below(3) == 0) {
				draw_char_clipped_top_zero(0xf, scene_step_a + 6, 0xab, 0x1d);
				if (++scene_step_a == 9)
					scene_step_a = 0;
			} else if (scene_step_b > 0 || scene_step_a == 0 && random_below(5) == 0) {
				cel = scene_digit_cycle[scene_step_b % 6] - '1';
				draw_char_clipped_top_zero(0xf, cel + 0xe, 0xab, 0x1d);
				if (scene_frame % 2 || scene_step_b == 0)
					scene_step_b++;
				if (scene_step_b == 6)
					scene_step_b = 0;
			} else
				draw_char_clipped_top_zero(0xf, 0xe, 0xab, 0x1d);
		}
		break;
	case 7:
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		draw_char_clipped_top_zero(0xf, scene_step_c + 1, 7, 3);
		draw_char_clipped_top_zero(0xf, (scene_step_c + 3) % 7 + 8, 0x127, 3);
		scene_step_c = (scene_step_c + 1) % 7;
		slot = scene_frame < 6 ? random_below(4) : 0;
		draw_char_clipped_top_zero(0xf, slot + 0xf, 0, 0x26);
		slot = scene_frame > 5 ? random_below(4) : 0;
		draw_char_clipped_top_zero(0xf, slot + 0x13, 0x11e, 0x27);
		cel = random_below(4) ? scene_frame / 4 : 0;
		draw_char_clipped_top_zero(0xf, cel + 0x17, 0xbb, 0x49);
		draw_char_clipped_top_zero(0xf, scene_frame / 4 + 0x1a, 0x95, 0x4f);
		if (scene_step_a > 0 || scene_step_b == 0 && random_below(0xf) == 0) {
			cel = scene_digit_cycle[scene_step_a % 6] - '1';
			draw_char_clipped_top_zero(0xf, cel + 0x1d, 0x8a, 6);
			if (scene_frame % 2 || scene_step_a == 0)
				scene_step_a++;
			if (scene_step_a == 6)
				scene_step_a = 0;
		} else if (scene_step_b > 0 || scene_step_a == 0 && random_below(0xf) == 0) {
			cel = scene_digit_cycle[scene_step_b % 6] - '1';
			draw_char_clipped_top_zero(0xf, 0x1d, 0x8a, 6);
			draw_char_clipped_top_zero(0xf, cel + 0x21, 0x8d, 0x18);
			if (scene_frame % 2 || scene_step_b == 0)
				scene_step_b++;
			if (scene_step_b == 6)
				scene_step_b = 0;
		} else
			draw_char_clipped_top_zero(0xf, 0x1d, 0x8a, 6);
		draw_char_clipped_top_zero(0xf, scene_frame / 2 % 2 + 0x26, 0xdb, 0x66);
		draw_char_clipped_top_zero(0xf, scene_frame / 2 % 2 + 0x28, 0x54, 0x66);
		cel = scene_digit_cycle[scene_step_d % 6] - '1';
		draw_char_clipped_top_zero(0xf, cel + 0x2a, 0x6f, 0x41);
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
		gfx_restore_screen(scene_backdrop_ref, 0, 0);	/* backdrop */
		if (scene_cue_b < scene_tick) {
			draw_char_clipped_top_zero(0xf, 1, 0x38, 0x17);
			draw_char_clipped_top_zero(0xf, 2, 0x93, 0x27);
			draw_char_clipped_top_zero(0xf, 3, 0x23, 0x55);
			draw_char_clipped_top_zero(0xf, 4, 0x93, 0x55);
			if ((scene_step_c > 0 || random_below(3) == 0) && random_below(2))
				scene_step_c = random_below(3) + 1;
			if (random_below(8) == 0)
				scene_step_c = 0;
			draw_char_clipped_top_zero(0xf, scene_step_c + 5, 0x4f, 0x37);
			draw_char_clipped_top_zero(0xf, scene_step_d + 9, 0x57, 0x2a);
			if (random_below(2))
				scene_step_d = random_below(6);
		}
		if (scene_cue_c < scene_tick) {
			draw_char_clipped_top_zero(0x10, 1, 0x22, 0);
			draw_char_clipped_top_zero(0x10, 2, 0x72, 0x2a);
			draw_char_clipped_top_zero(0x10, 3, 0x37, 0x58);
			draw_char_clipped_top_zero(0x10, 4, 0x87, 0x55);
			draw_char_clipped_top_zero(0x10, scene_step_a + 5, 0xb2, 0x49);
			if (scene_step_b > 0) {
				switch (scene_step_b) {	/* steps 1..4 of a one-shot sequence */
				case 1:
					draw_char_clipped_top_zero(0x10, 9, 0xd0, 0x57);
					break;
				case 2:
					draw_char_clipped_top_zero(0x10, 0xa, 0xe4, 0x4d);
					break;
				case 3:
					draw_char_clipped_top_zero(0x10, 0xb, 0xfa, 0x42);
					break;
				case 4:
					draw_char_clipped_top_zero(0x10, 0xc, 0x118, 0x33);
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
