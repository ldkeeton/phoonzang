/* Edits text through the NPC text-entry prompt. */
extern long call_save_area();
extern int call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), draw_font_glyph();
extern int call_show_area(), call_restore_area();
extern int poll_filtered_key(), get_filtered_key();
extern int run_npc_screen_animation(), delay_ms();
extern int play_sound_effect(), flush_keyboard();
extern int aztec_strlen();
extern int last_npc_text_entry_key;

edit_npc_text_entry(text, left, top, width, foreground, background,
		  input_mode, accept_when_full)
char *text;
int left, top, width;
int foreground, background;
int input_mode, accept_when_full;
{
	int key;
	int initial_left;
	int text_length;
	int cursor_visible;
	int blink_delay;
	int saved_text_x, saved_text_y;
	long initial_saved_area;
	long cursor_saved_area;

	initial_left = left;
	initial_saved_area = call_save_area(left, top, left + 6 * width,
		top + 5);
	call_set_text_color(foreground, background);
	call_set_text_pos(left, top);
	draw_text_glyphs(text, 0);
	call_show_area(left, top, left + 6 * width, top + 5);
	text_length = aztec_strlen(text);
	left += 6 * text_length;

	for (;;) {
		cursor_visible = 1;
		blink_delay = 0;
		cursor_saved_area = call_save_area(left, top, left + 5,
			top + 5);
		for (;;) {
			if (poll_filtered_key(1))
				break;
			if (blink_delay == 0) {
				run_npc_screen_animation();
				call_restore_area(cursor_saved_area, 0);
				if (cursor_visible) {
					call_set_text_pos(left, top);
					draw_font_glyph(3, 0);
				}
				call_show_area(left, top, left + 5, top + 5);
				cursor_visible = (cursor_visible + 1) % 2;
				blink_delay = 5;
			} else {
				delay_ms(10);
				blink_delay--;
			}
		}

		call_restore_area(cursor_saved_area, 1);
		call_show_area(left, top, left + 5, top + 5);
		key = (unsigned char)get_filtered_key(1);
		if (key == 13) {
			text[text_length] = 0;
			flush_keyboard();
			call_restore_area(initial_saved_area, 1);
			return 0;
		}
		if (key == 8) {
			if (text_length > 0) {
				text_length--;
				left -= 6;
				call_restore_area(initial_saved_area, 0);
				call_set_text_pos(initial_left, top);
				text[text_length] = 0;
				draw_text_glyphs(text, 0);
				call_show_area(initial_left, top,
					initial_left + 6 * width, top + 5);
			} else if (accept_when_full) {
				text[0] = 0;
				call_restore_area(initial_saved_area, 1);
				return -1;
			} else {
				play_sound_effect(0);
			}
		} else if (text_length >= width) {
			if (accept_when_full)
				play_sound_effect(0);
			else if ((input_mode == 0 && key >= 32 && key <= 127) ||
				(input_mode == 1 && key >= 48 && key <= 57)) {
				text[text_length] = 0;
				last_npc_text_entry_key = key;
				call_restore_area(initial_saved_area, 1);
				return 1;
			}
		} else if ((input_mode == 0 && key >= 32 && key <= 127) ||
			   (input_mode == 1 && key >= 48 && key <= 57)) {
			text[text_length] = key;
			text_length++;
			call_set_text_pos(left, top);
			draw_font_glyph((unsigned char)key, 0);
			call_show_area(left, top, left + 5, top + 5);
			left += 6;
		}
	}
}
