/* waits up to timeout_ticks timer ticks for a full-screen hotspot key,
   polling every 10 ms and returning as soon as one is hit */
extern long far *tick_counter_ptr;

wait_for_hotspot_timeout(timeout_ticks)
int timeout_ticks;
{
	long deadline;

	deadline = timeout_ticks + *tick_counter_ptr;
	while (*tick_counter_ptr < deadline) {
		if (poll_fullscreen_hotspot())
			return;			/* key hit before the deadline */
		delay_ms(10);			/* 10 ms per poll */
	}
}
