/* cycles to the next of the 8 sound devices and shows its name */

extern char *sound_device_names[];

next_sound_device(device)
{
	device = (device + 1) % 8;
	put_text_at(18, 41, sound_device_names[device]);
	return device;
}
