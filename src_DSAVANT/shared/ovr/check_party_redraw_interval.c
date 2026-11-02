/* Check whether enough ticks have passed for a party redraw. */

extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern long party_redraw_current_tick, party_redraw_elapsed_ticks;

check_party_redraw_interval()
{
	/* Save the current tick and calculate elapsed ticks. */
	party_redraw_current_tick = *tick_counter_ptr;
	party_redraw_elapsed_ticks =
		party_redraw_current_tick - party_redraw_last_tick;

	/* Record the current tick only after the configured interval elapsed. */
	if (party_redraw_elapsed_ticks >= party_redraw_interval) {
		party_redraw_last_tick = party_redraw_current_tick;
		return 1;
	}
	return 0;
}
