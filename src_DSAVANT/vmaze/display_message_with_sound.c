/* Display a message, play its effect, wait, and refresh the message strip. */
extern int show_message();
extern int flush_keyboard();
extern int play_sound_effect();
extern int wait_ticks_or_key();
extern int call_show_area();

display_message_with_sound(message_id, sound_id, wait_ticks)
int message_id;
int sound_id;
int wait_ticks;
{
	show_message(message_id);
	flush_keyboard();
	play_sound_effect(sound_id);
	wait_ticks_or_key(wait_ticks);
	/* Refresh the fixed 320-by-7 message strip. */
	call_show_area(0, 146, 319, 152);
}
