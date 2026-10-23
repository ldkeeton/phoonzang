extern unsigned char picture_slot_number[], picture_slot_used[];
extern unsigned char slot_rec_first[][350];
extern char monster_pic_name[];

/* loads monster picture record num into picture slot n unless that slot
   already holds num */
load_monster_picture(num, n)
{
	int unused;
	int fd;
	char name[20];

	gfx_wait_sound(0);
	if (picture_slot_number[n] != num) {
		data_record_io(8, slot_rec_first[n], num, 0);	/* type 8: monsters */
		aztec_strcpy(name, monster_pic_name);	/* "MON00.PIC" */
		name[3] = num / 10 + '0';	/* patch the two digits */
		name[4] = num % 10 + '0';
		if ((fd = aztec_open(data_file_path(name, 1), 0)) == -1)
			release_and_exit(18);
		gfx_load_picture(fd, n);
		aztec_close(fd);
		picture_slot_number[n] = num;	/* slot's record number */
		picture_slot_used[n] = 1;	/* in use */
	}
}
