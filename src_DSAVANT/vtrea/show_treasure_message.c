/* Draw a centered treasure message and wait for its response. */
/* Display a centered message in the treasure panel and wait for input. */
extern int message_delay;
extern int refresh_treasure_panel_and_wait();
extern int call_set_text_color();
extern int aztec_strlen();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int call_show_area();
extern int play_sound_effect();
extern int wait_treasure_input_or_timeout();

/* Draw a message row, play its sound, and wait before returning. */
/* Show one treasure message in the selected row. */
show_treasure_message(message, row, sound, text_color)
char *message;
int row, sound, text_color;
{
	refresh_treasure_panel_and_wait(row, row);
	call_set_text_color(text_color, 0);
	call_set_text_pos(160 - (aztec_strlen(message) * 6) / 2,
		156 + 7 * row);
	draw_text_glyphs(message, 0);
	call_show_area(25, 156 + 7 * row, 295, 162 + 7 * row);
	if (sound > 0)
		play_sound_effect(sound - 1);
	wait_treasure_input_or_timeout(message_delay);
	if (sound != -1)
		refresh_treasure_panel_and_wait(row, row);
}
