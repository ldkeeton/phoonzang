/* Wait for treasure input or the requested tick deadline. */
extern long far *tick_counter_ptr;
extern int flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int poll_filtered_key();
extern unsigned char get_filtered_key();
extern int tick_treasure_animation();
extern void wait_10_ms();

wait_treasure_input_or_timeout(timeout_ticks)
int timeout_ticks;
{
	long deadline;

	flush_keyboard();
	deadline = *tick_counter_ptr + timeout_ticks;
	while (*tick_counter_ptr < deadline) {
		if (poll_fullscreen_hotspot())
			return;
		if (poll_filtered_key(1) && get_filtered_key(1) == 13)
			return;
		if (!tick_treasure_animation())
			wait_10_ms();
	}
}
