extern struct { int num; int pad; long size; int pad2[2]; } bss_5576[];

draw_load_sound_file(num, n, flag)
{
	int load;
	int fd;
	char name[20];

	gfx_entry_47(0);
	ds_app_file_MPPM(9, &bss_5576[n], num, 0);
	load = 1;
	if (bss_5576[n].size == 0) {
		num = bss_5576[n].num;
		load = flag ? 0 : 1;
	}
	if (load) {
		aztec_strcpy(name, "SOUND00.SND");
		name[5] = num / 10 + '0';
		name[6] = num % 10 + '0';
		if ((fd = aztec_open(ds_app_string_UUHT(name, 1), 0)) == -1)
			ds_app_UKIP(11);
		if (gfx_load_sound(fd, n))
			ds_app_UKIP(12);
		aztec_close(fd);
	}
}
