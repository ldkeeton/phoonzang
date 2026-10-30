/* Open and display a numbered VIDEOnn.PIC scene image. */
extern int call_wait_sound();
extern int aztec_strcpy();
extern int data_file_path();
extern int aztec_open();
extern int release_and_exit();
extern int call_load_picture();
extern int aztec_close();
extern char numbered_scene_picture_template[];

load_numbered_scene_picture(picture_number, picture_page)
int picture_number, picture_page;
{
	int file_handle;
	char path_buffer[20];

	call_wait_sound(0);
	aztec_strcpy(path_buffer, numbered_scene_picture_template);
	/* Replace the two digits in VIDEO00.PIC with the requested number. */
	path_buffer[5] = picture_number / 10 + '0';
	path_buffer[6] = picture_number % 10 + '0';
	file_handle = aztec_open(data_file_path(path_buffer, 1), 0);
	/* Report an unavailable file through the observed error code. */
	if (file_handle == -1)
		release_and_exit(18);
	call_load_picture(file_handle, picture_page);
	aztec_close(file_handle);
}
