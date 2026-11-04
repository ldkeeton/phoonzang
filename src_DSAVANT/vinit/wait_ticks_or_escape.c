/* Wait until the tick deadline, polling Escape between short delays. */
extern long far *tick_counter_ptr;
extern int poll_escape_key();
extern int delay_ms();

wait_ticks_or_escape(ticks)
int ticks;
{
	long deadline;

	/* Add the requested interval to the current timer value. */
	deadline = ticks + *tick_counter_ptr;
	/* Poll input every 10 ms until the timer reaches the deadline. */
	while (*tick_counter_ptr < deadline) {
		if (poll_escape_key())
			return;
		delay_ms(10);
	}
}
