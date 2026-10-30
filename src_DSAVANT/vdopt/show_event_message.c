/* Display a message string, wait for input or timeout, then restore the
   area. */
extern int pending_event_hi, message_delay;
extern void load_message_string();
extern void call_show_area();
extern long call_save_area();
extern void call_set_text_color();
extern void call_set_text_pos();
extern void draw_text_glyphs();
extern void play_sound_effect();
extern void wait_for_scene_input_or_timeout();
extern void call_restore_area();
extern int aztec_strlen();

show_event_message(message_id)
int message_id;
{
	int text_left, text_right;
	long saved_area;
	char message[80];

	load_message_string(message_id, message);
	/* Clear the full message strip before drawing its text. */
	call_show_area(0, 146, 319, 152);
	/* Six-pixel glyphs determine the centered text position and width. */
	text_left = 161 - (aztec_strlen(message) * 6) / 2;
	text_right = text_left + aztec_strlen(message) * 6;
	saved_area = call_save_area(text_left, 146, text_right, 152);
	call_set_text_color(22, 0);
	call_set_text_pos(text_left, 146);
	draw_text_glyphs(message, 0);
	call_show_area(text_left, 146, text_right, 152);
	/* Play the event sound only when the high pending-event word is set. */
	if (pending_event_hi != 0)
		play_sound_effect(0);
	wait_for_scene_input_or_timeout(message_delay / 2);
	call_restore_area(saved_area, 1);
	call_show_area(0, 146, 319, 152);
}
