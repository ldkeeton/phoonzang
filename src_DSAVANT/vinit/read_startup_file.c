/* Open a startup data file, read the requested bytes, and close it. */
extern char *data_file_path();
extern int open(), read(), close(), release_and_exit();

read_startup_file(filename, destination, byte_count)
char *filename;
char *destination;
int byte_count;
{
	int file_handle;

	file_handle = open(data_file_path(filename, 0), 0);
	if (file_handle == -1) {
		/* Exit code 8 identifies this startup file open failure. */
		release_and_exit(8);
	}
	read(file_handle, destination, byte_count);
	close(file_handle);
}
