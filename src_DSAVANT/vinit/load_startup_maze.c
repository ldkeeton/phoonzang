/* Open the startup maze file, load it using the supplied mode, and close
   it. */
extern char *data_file_path();
extern int aztec_open(), call_load_maze(), aztec_close(), release_and_exit();

load_startup_maze(filename, load_mode)
char *filename;
int load_mode;
{
	int file_handle;

	/* The maze path uses selector 1; failure exits with startup code 7. */
	if ((file_handle = aztec_open(data_file_path(filename, 1), 0)) == -1)
		release_and_exit(7);
	call_load_maze(file_handle, load_mode, 0);
	aztec_close(file_handle);
}
