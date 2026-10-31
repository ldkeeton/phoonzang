/* Move one volume setting by one without crossing its bounds. */
extern unsigned char volume_settings[];

step_volume_setting(volume_index, direction, upper_limit)
int volume_index, direction, upper_limit;
{
	if (direction < 0) {
		/* Decrement only when the setting is nonzero. */
		if (volume_settings[volume_index] > 0)
			volume_settings[volume_index]--;
	} else if (direction > 0) {
		/* Increment only while the setting remains below its limit. */
		if (volume_settings[volume_index] < upper_limit)
			volume_settings[volume_index]++;
	}
}
