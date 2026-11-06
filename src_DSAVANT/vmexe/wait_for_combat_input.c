/* Wait for combat input or the requested tick deadline. */
extern long far *tick_counter_ptr;
extern int flush_keyboard();
extern int poll_fullscreen_hotspot();
extern int poll_filtered_key();
extern unsigned char get_filtered_key();
extern int step_combat_screen_animation();
extern int combat_wait_occurred;

wait_for_combat_input(timeout_ticks)
int timeout_ticks;
{
	long deadline;

	combat_wait_occurred = 1;
	flush_keyboard();
	deadline = *tick_counter_ptr + timeout_ticks;
	while (*tick_counter_ptr < deadline) {
		if (poll_fullscreen_hotspot())
			return;
		if (poll_filtered_key(1) && get_filtered_key(1) == 13)
			return;
		step_combat_screen_animation();
	}
}
