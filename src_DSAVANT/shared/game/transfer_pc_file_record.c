/* Fixed-size file record transfers. */
extern char pc_file_name[];
extern int pc_file_record_size;
extern long pc_file_record_base;
extern char *data_file_path();
extern int gfx_wait_sound(), aztec_open(), aztec_lseek();
extern int aztec_read(), aztec_write(), aztec_close();

/* Transfer one fixed-size record at the configured file offset. */
transfer_pc_file_record(buffer, record_index, operation)
char *buffer;
int record_index, operation;
{
	int record_fd;

	gfx_wait_sound(0);
	record_fd =
		aztec_open(data_file_path(pc_file_name, 0), 2);	/* Read/write mode. */
	aztec_lseek(record_fd,
		pc_file_record_base + (long)(record_index * pc_file_record_size),
		0);	/* Absolute seek. */
	if (operation == 0) {	/* 0 selects a read. */
		aztec_read(record_fd, buffer, pc_file_record_size);
	} else if (operation == 1) {	/* 1 selects a write. */
		aztec_write(record_fd, buffer, pc_file_record_size);
	}
	aztec_close(record_fd);
}
