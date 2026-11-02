/* Single-line text entry with a blinking cursor. */
extern unsigned char get_filtered_key();
extern int call_set_text_color(), aztec_strlen(), poll_filtered_key();
extern int call_fill_area(), call_set_text_pos(), draw_font_glyph();
extern int call_show_area(), delay_ms(), flush_keyboard();
extern int play_sound_effect();

/* Read up to max_len characters into buf at x,y until Enter; mode 0 takes
   printable characters, mode 1 only digits. */
input_text_field(buf, x, y, max_len, color, background, mode)
char *buf;
int x, y, max_len, color, background, mode;
{
	int key;
	int len;
	int cursor_on;
	int wait;

	call_set_text_color(color, background);
	x += (len = aztec_strlen(buf)) * 6;	/* Six pixels per character. */
	for (;;) {
		cursor_on = 0;
		wait = 0;
		while (!poll_filtered_key(1)) {
			if (wait == 0) {
				call_fill_area(x, y, x + 5, y + 5, background);
				if (cursor_on) {
					call_set_text_pos(x, y);
					draw_font_glyph(3, 0);	/* Glyph 3 is the cursor. */
				}
				call_show_area(x, y, x + 5, y + 5);
				cursor_on = (cursor_on + 1) % 2;
				wait = 10;
			} else {
				delay_ms(10);
				wait--;
			}
		}
		key = get_filtered_key(1);
		call_fill_area(x, y, x + 5, y + 5, background);
		call_show_area(x, y, x + 5, y + 5);
		if (key == '\r') {
			buf[len] = 0;
			flush_keyboard();
			return;
		}
		if (key == '\b') {
			if (len > 0) {
				len--;
				x -= 6;
			} else
				play_sound_effect(0);
		} else if (len >= max_len)
			play_sound_effect(0);
		else if (mode == 0 && key >= ' ' && key <= 127
				|| mode == 1 && key >= '0' && key <= '9') {
			buf[len] = key;
			len++;
			call_set_text_pos(x, y);
			draw_font_glyph((unsigned char)key, 0);
			call_show_area(x, y, x + 5, y + 5);
			x += 6;
		}
	}
}
