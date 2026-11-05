/* Display a fountain result, play its sound, then refresh the scene. */
extern void show_message();
extern void play_sound_effect();
extern int message_delay;
extern void wait_for_scene_input_or_timeout();
extern void call_show_area();

/* Show the selected fountain message and restore the view after its delay. */
show_fountain_result(message)
int message;
{
	show_message(message);
	play_sound_effect(0);
	wait_for_scene_input_or_timeout(message_delay);
	call_show_area(0, 146, 319, 152);
}
