/* Wait for ticks while servicing fullscreen input and party animation. */
extern long far *tick_counter_ptr;
extern int flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int poll_filtered_key();
extern unsigned char get_filtered_key();
extern int step_party_screen_animation();

wait_ticks_with_events(ticks)
int ticks;
{
	long deadline;

	flush_keyboard();
	deadline = *tick_counter_ptr + ticks;
	/* Poll input and advance animation until the deadline. */
	while (*tick_counter_ptr < deadline) {
		/* A fullscreen hotspot ends the wait immediately. */
		if (poll_fullscreen_hotspot())
			return;
		/* Mode 1 polls for a key; carriage return ends the wait. */
		if (poll_filtered_key(1) && get_filtered_key(1) == 13)
			return;
		step_party_screen_animation();
	}
}
