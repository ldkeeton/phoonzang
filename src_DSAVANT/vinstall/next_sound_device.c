extern char *sound_device_names[];

next_sound_device(device)
{
	device = (device + 1) % 8;
	put_text_at(0x12, 0x29, sound_device_names[device]);
	return device;
}
