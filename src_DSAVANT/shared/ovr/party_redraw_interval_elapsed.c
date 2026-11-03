/* Check whether the party redraw interval has elapsed. */

extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;

party_redraw_interval_elapsed()
{
	/* Compare elapsed ticks with the configured interval. */
	if ((*tick_counter_ptr - party_redraw_last_tick) >=
		party_redraw_interval) {
		/* Refresh the baseline only when the interval has elapsed. */
		party_redraw_last_tick = *tick_counter_ptr;
		return 1; /* Report that the redraw interval elapsed. */
	}
	return 0; /* Report that the interval is still pending. */
}
