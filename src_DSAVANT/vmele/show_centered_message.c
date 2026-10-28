/* draws a message line centred on the screen and reloads the sound that
   was playing before its message sound */

extern int loaded_sound_id;
extern measure_text_width(), gfx_set_text_color(), gfx_set_text_pos(),
	draw_text_glyphs(), gfx_show_area(), play_sound_effect(),
	ensure_sound_loaded(), wait_and_free_sound(), redraw_glyph_strip(),
	flush_keyboard();

show_centered_message(text, sound_id)
char *text;
int sound_id;
{
	int left, right, width, unused1, unused2, old_sound;

	redraw_glyph_strip(1);			/* show the message strip */
	width = measure_text_width(text, 2);	/* 2: font slot */
	left = 160 - (width + 1) / 2;		/* screen centre column */
	right = left + width;
	gfx_set_text_color(85, 0);
	gfx_set_text_pos(left, 164);		/* text row */
	draw_text_glyphs(text, 2);
	old_sound = loaded_sound_id;
	ensure_sound_loaded(sound_id);
	gfx_show_area(left, 164, right, 176);	/* message box */
	play_sound_effect(16);			/* message sound slot */
	if (old_sound != -1)			/* -1: nothing was loaded */
		ensure_sound_loaded(old_sound);
	else {
		wait_and_free_sound(16);
		loaded_sound_id = -1;
	}
	redraw_glyph_strip(0);		/* drop the strip again */
	flush_keyboard();
}
