/* Display a centered NPC text message and refresh its text area. */
extern int redraw_area_set();
extern int show_area_set();
extern int call_set_text_color();
extern int aztec_strlen();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int call_show_area();
extern int play_sound_effect();
extern int message_delay;
extern int wait_ticks_abortable();

display_npc_text_message(text, line_index, play_sound, text_color)
char *text;
int line_index;
int play_sound;
int text_color;
{
	redraw_area_set(3);
	show_area_set(3);
	call_set_text_color(text_color, 0);
	call_set_text_pos(160 - (aztec_strlen(text) * 6) / 2,
		7 * line_index + 156);
	draw_text_glyphs(text, 0);
	call_show_area(25, 7 * line_index + 156, 295,
		7 * line_index + 162);
	if (play_sound)
		play_sound_effect(0);
	wait_ticks_abortable(message_delay, 0);
	redraw_area_set(3);
	show_area_set(3);
}
