/* reads (dir 0) or writes (dir 1) record index of the given type in the data
   file; packed types are only ever read, then unpacked into buf */
#include "structs/filehdr.h"
extern struct disk_header disk_header;
extern struct master_header master_header;

extern int data_file_fd;

data_record_io(type, buf, index, dir)
char *buf;
{
	char packed[255];

	/* these types store records out of order: map logical index to file slot */
	switch (type) {
	case 2:
	case 3:
		index = disk_header.record_map_2[index];
		break;
	case 5:
		index = disk_header.record_map_5[index];
		break;
	case 7:
		index = disk_header.record_map_7[index];
		break;
	case 4:
		index = disk_header.record_map_4[index];
		break;
	case 8:
		index = disk_header.record_map_8[index];
		break;
	}
	call_wait_sound(0);
	/* each type is a fixed-size array starting at
	   disk_header.record_base[type] */
	aztec_lseek(data_file_fd,
		(long)index * master_header.sizes[type] + disk_header.record_base[type],
		0);
	if (master_header.packed[type] == 0) {
		if (dir == 0)
			aztec_read(data_file_fd, buf, master_header.sizes[type]);
		else if (dir == 1)
			aztec_write(data_file_fd, buf, master_header.sizes[type]);
	} else if (dir == 0) {
		aztec_read(data_file_fd, packed, master_header.sizes[type]);
		unpack_record(packed, buf);
	}
}
