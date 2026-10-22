/* reads the whole file at path into a far heap buffer and returns it */

extern long aztec_lseek();
extern char far *app_malloc();
extern char *aztec_malloc();
extern long app_memmove();

char far *
load_file_data(path)
char *path;
{
	int fd;
	long file_size;
	char far *data;
	char *temp;

	if ((fd = aztec_open(data_file_path(path, 0), 0)) == -1)
		release_and_exit(6);
	file_size = aztec_lseek(fd, 0L, 2);	/* size: seek to end */
	data = app_malloc(file_size);
	temp = aztec_malloc((unsigned)file_size);
	if (data == 0 || temp == 0)
		release_and_exit(6);
	aztec_lseek(fd, 0L, 0);			/* rewind for the read */
	aztec_read(fd, temp, (unsigned)file_size);
	aztec_close(fd);
	/* the read buffer is near; move it out to the far block */
	app_memmove((char far *)temp, data, (unsigned)file_size);
	aztec_free(temp);
	return data;
}
