/* Band the percentage lost (100 - current/maximum) into 0..4 steps: mode 0
   returns 0/5/10/20/40, other modes 0/0/1/2/4. */
classify_percentage_band(mode, current_value, maximum_value)
int mode, current_value, maximum_value;
{
	long percentage;

	percentage = 100L - (current_value * 100L / maximum_value);
	if (percentage <= 50L)
		return 0;
	if (percentage <= 66L)
		return mode == 0 ? 5 : 0;
	if (percentage <= 75L)
		return mode == 0 ? 10 : 1;
	if (percentage <= 90L)
		return mode == 0 ? 20 : 2;
	return mode == 0 ? 40 : 4;
}
