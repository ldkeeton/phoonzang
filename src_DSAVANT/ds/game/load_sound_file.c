extern struct { int num; int pad; long size; int pad2[2]; } sound_slot_info[];

/* fetches sound record num into slot n, then loads SOUNDnn.SND into the
   driver; a zero-size record redirects to another sound number, and flag
   skips the load in that case */
load_sound_file(num, n, flag)
{
	int load;
	int fd;
	char name[20];

	gfx_entry_47(0);
	data_record_io(9, &sound_slot_info[n], num, 0);
	load = 1;
	if (sound_slot_info[n].size == 0) {
		num = sound_slot_info[n].num;
		load = flag ? 0 : 1;
	}
	if (load) {
		aztec_strcpy(name, "SOUND00.SND");
		/* patch the two "00" digits with num */
		name[5] = num / 10 + '0';
		name[6] = num % 10 + '0';
		if ((fd = aztec_open(data_file_path(name, 1), 0)) == -1)
			fatal_error(11);
		if (gfx_load_sound(fd, n))
			fatal_error(12);
		aztec_close(fd);
	}
}
