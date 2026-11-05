/* Draw a random value, then wait ten milliseconds. */
extern int random_below();
extern void delay_ms();

/* Preserve both paths of the original random check. */
roll_random_then_wait_10_ms()
{
	if (random_below(80) > 0)
		delay_ms(10);
	else
		delay_ms(10);
}
