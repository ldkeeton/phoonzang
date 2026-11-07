/* Open a startup font file, load it into its assigned slot, and close it. */
extern char *data_file_path();
extern int open(), load_font_file(), close(), release_and_exit();

load_startup_font(filename, font_index)
char *filename;
int font_index;
{
	int file_handle;

	/* A missing startup font is a fatal startup error. */
	if ((file_handle = open(data_file_path(filename, 0), 0)) == -1)
		release_and_exit(5);
	load_font_file(file_handle, font_index);
	close(file_handle);
}
