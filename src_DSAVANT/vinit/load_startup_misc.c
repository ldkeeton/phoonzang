/* Load and close the startup miscellaneous table file. */
extern char *data_file_path();
extern int aztec_open(), aztec_close();
extern int release_and_exit(), read_misc_table();

/* Open the startup miscellaneous table, read it, and close its file. */
load_startup_misc(filename)
char *filename;
{
	int file_handle;

	file_handle = aztec_open(data_file_path(filename, 0), 0);
	if (file_handle == -1) {
		/* The startup misc file has its own exit code. */
		release_and_exit(8);
	}
	read_misc_table(file_handle);
	aztec_close(file_handle);
}
