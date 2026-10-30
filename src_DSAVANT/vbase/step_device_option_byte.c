/* Move one device option byte by one without crossing its bounds. */
extern unsigned char device_option_bytes[];

step_device_option_byte(option_index, direction, upper_limit)
int option_index, direction, upper_limit;
{
	if (direction < 0) {
		/* Decrement only when the byte is nonzero. */
		if (device_option_bytes[option_index] > 0)
			device_option_bytes[option_index]--;
	} else if (direction > 0) {
		/* Increment only while the byte remains below its limit. */
		if (device_option_bytes[option_index] < upper_limit)
			device_option_bytes[option_index]++;
	}
}
