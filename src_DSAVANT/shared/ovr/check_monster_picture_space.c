/* Check whether the screen file can be held in the configured storage. */
extern char monster_picture_template[];	/* "MON00.PIC" */
extern char *data_file_path();
extern long call_get_free_space();
extern int aztec_strcpy(), aztec_open(), aztec_close();
extern long aztec_lseek();
extern unsigned char picture_slot_number[];
extern unsigned char screen_store_1_enabled, screen_store_disk_enabled;
extern unsigned char screen_store_drive;

/* Return zero when the picture is already slotted or storage has room. */
check_monster_picture_space(picture_number)
int picture_number;
{
	int slot_index;
	int file_handle;
	long file_size;
	long extra_space;
	int drive_index;
	char file_path[80];

	/* Slots 15 through 17 already hold pictures that need no file space. */
	for (slot_index = 15; slot_index < 18; ++slot_index) {
		if (picture_slot_number[slot_index] == picture_number)
			return 0;
	}

	/* Add two decimal digits to the file name template. */
	aztec_strcpy(file_path, monster_picture_template);
	file_path[3] = (char)('0' + picture_number / 10);
	file_path[4] = (char)('0' + picture_number % 10);
	file_handle = aztec_open(data_file_path(file_path, 1), 0);
	if (file_handle == -1)
		return -1;
	file_size = aztec_lseek(file_handle, 0L, 2);
	aztec_close(file_handle);

	/* Initially reserve 0x2800 bytes in addition to the existing file. */
	extra_space = 10240L;
	if (call_get_free_space(2, 0) > file_size + extra_space)
		return 0;

	/* A large first screen store removes the extra reserve requirement. */
	if (screen_store_1_enabled == 1
		&& call_get_free_space(1, 0) > extra_space) {
		extra_space = 0L;
	} else if (screen_store_disk_enabled == 1) {
		/* Check the configured disk only for a valid drive letter. */
		drive_index = screen_store_drive - 64;
		if (drive_index >= 1 && drive_index <= 26 &&
		    call_get_free_space(3, drive_index) > extra_space)
			extra_space = 0L;
	}

	/* Recheck the main storage using the remaining reserve requirement. */
	if (call_get_free_space(2, 0) > file_size + extra_space)
		return 0;
	return -1;
}
