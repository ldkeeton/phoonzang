/* Pause through delay_ms for ten milliseconds. */

extern int delay_ms();

void wait_10_ms()
{
	/* This wrapper always uses the same ten-millisecond interval. */
	delay_ms(10);
}
