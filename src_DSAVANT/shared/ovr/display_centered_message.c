/* Display centered text over a saved screen area, then restore the area. */
extern long call_save_area();
extern int strlen(), call_set_text_pos(), call_set_text_color();
extern int draw_text_glyphs(), call_show_area(), play_sound_effect();
extern int wait_for_hotspot_timeout(), call_restore_area();
extern int message_delay;

display_centered_message(text, beep)
char *text;
int beep;
{
	long saved_area;

	/* Preserve the fixed message rectangle before drawing over it. */
	saved_area = call_save_area(0, 188, 319, 194);
	/* Six-pixel glyphs are centered around x=160 at y=188. */
	call_set_text_pos(160 - (strlen(text) * 6) / 2, 188);
	call_set_text_color(85, 0);
	draw_text_glyphs(text, 0);
	call_show_area(0, 188, 319, 194);
	if (beep > 0) {
		play_sound_effect(0);
	}
	wait_for_hotspot_timeout(message_delay);
	call_restore_area(saved_area, 1);
	call_show_area(0, 188, 319, 194);
}
