/* expand treasure text tokens, sound cues, and glyph labels */
extern char treasure_glyph_text_buffer[];
extern int maze_message_row;
extern int loaded_sound_id;
extern int message_delay;
extern char treasure_text_token_codes[];
extern char treasure_text_separator[];

extern int strpos();
extern int flush_glyph_buffer();
extern int dissolve_or_show_area();
extern int wait_treasure_input_or_timeout();
extern int redraw_treasure_caption();
extern int show_treasure_area();
extern int load_monster_picture();
extern int call_draw_text();
extern int free_picture_slot();
extern int play_sound_effect();
extern int ensure_sound_loaded();
extern int wait_and_free_sound();
extern char *aztec_strcpy();
extern char *aztec_strcat();
extern int measure_text_width();

/* process tokenized text and display its expanded message */
process_treasure_text(text)
char *text;
{
	int text_width;
	int token_index;
	int sound_code;
	char prompt[128];
	char unused_frame[8];
	char glyph_label[2];

	for (;;) {
		token_index = strpos(treasure_text_token_codes, (unsigned char)*text);
		if (token_index < 0)
			break;
		switch (token_index) {
		case 0:
			text++;
			flush_glyph_buffer(treasure_glyph_text_buffer);
			break;
		case 1:
			text++;
			flush_glyph_buffer(treasure_glyph_text_buffer);
			dissolve_or_show_area(55, 146, 265, 198);
			wait_treasure_input_or_timeout(message_delay);
			break;
		case 2:
			text++;
			flush_glyph_buffer(treasure_glyph_text_buffer);
			dissolve_or_show_area(55, 146, 265, 198);
			break;
		case 3:
			text++;
			redraw_treasure_caption(0);
			maze_message_row = 0;
			break;
		case 4:
			text++;
			flush_glyph_buffer(treasure_glyph_text_buffer);
			show_treasure_area(0);
			break;
		case 5:
			text++;
			load_monster_picture(10, 16);
			glyph_label[0] = 1;
			glyph_label[1] = 0;
			call_draw_text(16, 89, 146, 0, 319, 0, 199,
				0, glyph_label, 0, 0);
			free_picture_slot(16);
			break;
		case 6:
			text++;
			sound_code = (unsigned char)*text;
			if (sound_code == 99)
				sound_code = 32;
			if (sound_code > 0) {
				if (sound_code < 5 || sound_code == 8 || sound_code == 9)
					play_sound_effect(sound_code);
				else {
					ensure_sound_loaded(sound_code);
					play_sound_effect(16);
					wait_and_free_sound(16);
					loaded_sound_id = -1;
				}
			}
			text++;
			break;
		}
	}

	if (treasure_glyph_text_buffer[0] != 0) {
		aztec_strcpy(prompt, treasure_glyph_text_buffer);
		aztec_strcat(prompt, treasure_text_separator);
		aztec_strcat(prompt, text);
	} else
		aztec_strcpy(prompt, text);

	text_width = measure_text_width(prompt, 2);
	if (text_width > 184) {
		flush_glyph_buffer(treasure_glyph_text_buffer);
		aztec_strcpy(treasure_glyph_text_buffer, text);
	} else
		aztec_strcpy(treasure_glyph_text_buffer, prompt);
}
