/* reads (dir 0) or writes (dir 1) record index of the given type in the data
   file; packed types are only ever read, then unpacked into buf */

extern int data_file_fd;
extern long record_base[];
extern unsigned char record_map_2[], record_map_5[], record_map_7[];
extern unsigned char record_map_4[], record_map_8[];
extern int record_size[];
extern char record_packed[];

data_record_io(type, buf, index, dir)
char *buf;
{
	char packed[255];

	/* these types store records out of order: map logical index to file slot */
	switch (type) {
	case 2:
	case 3:
		index = record_map_2[index];
		break;
	case 5:
		index = record_map_5[index];
		break;
	case 7:
		index = record_map_7[index];
		break;
	case 4:
		index = record_map_4[index];
		break;
	case 8:
		index = record_map_8[index];
		break;
	}
	gfx_wait_sound(0);
	/* each type is a fixed-size array starting at record_base[type] */
	aztec_lseek(data_file_fd, (long)index * record_size[type] + record_base[type],
		0);
	if (record_packed[type] == 0) {
		if (dir == 0)
			aztec_read(data_file_fd, buf, record_size[type]);
		else if (dir == 1)
			aztec_write(data_file_fd, buf, record_size[type]);
	} else if (dir == 0) {
		aztec_read(data_file_fd, packed, record_size[type]);
		unpack_record(packed, buf);
	}
}
