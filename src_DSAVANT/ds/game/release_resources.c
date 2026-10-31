/* Release the resources held when exiting with the given status: each case
   falls through to the cleanup of the cases below it. */

extern int floor_items, runtime_buffer_3k, maze_tables, maze_data;
extern char far *runtime_buffer_4k_b;
extern char far *runtime_buffer_4k_a;
extern char far *runtime_buffer_1k;
extern int data_file_fd, msg_dbs_fd;
extern char far *pointer_image_two;
extern char far *mouse_pointer_shape;
extern char far *pointer_image_zero;
extern int mouse_active;
extern aztec_free(), app_free(), aztec_close();
extern call_wait_sound(), call_stop_sound(), call_mouse_off();
extern restore_video_and_release_mem();

release_resources(exit_status)
int exit_status;
{
	int video_needs_restore;

	video_needs_restore = 0;
	switch (exit_status) {
	/* Status 0 and statuses 13 through 30 free the work buffers first. */
	case 0:
	case 13:
	case 14:
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
	case 20:
	case 21:
	case 22:
	case 23:
	case 24:
	case 25:
	case 26:
	case 27:
	case 28:
	case 29:
	case 30:
		if (floor_items)
			aztec_free(floor_items);
		if (runtime_buffer_3k)
			aztec_free(runtime_buffer_3k);
		if (maze_tables)
			aztec_free(maze_tables);
		if (maze_data)
			aztec_free(maze_data);
		if (runtime_buffer_4k_b)
			app_free(runtime_buffer_4k_b);
		if (runtime_buffer_4k_a)
			app_free(runtime_buffer_4k_a);
		if (runtime_buffer_1k)
			app_free(runtime_buffer_1k);
	/* Statuses 11 and 12 start by closing the data file. */
	case 11:
	case 12:
		aztec_close(data_file_fd);
	/* Status 10 starts by closing the message database. */
	case 10:
		aztec_close(msg_dbs_fd);
	/* Statuses 7 through 9 start by freeing the pointer images and shape. */
	case 7:
	case 8:
	case 9:
		if (pointer_image_two)
			app_free(pointer_image_two);
		if (mouse_pointer_shape)
			app_free(mouse_pointer_shape);
		if (pointer_image_zero)
			app_free(pointer_image_zero);
	/* Statuses 4 through 6 start by shutting down sound and the mouse. */
	case 4:
	case 5:
	case 6:
		video_needs_restore = 1;
		call_wait_sound(1);
		call_stop_sound();
		if (mouse_active)
			call_mouse_off();
	/* Statuses 1 through 3 release nothing. */
	case 1:
	case 2:
	case 3:
		break;
	}

	/* Restore video only if the sound and mouse shutdown ran. */
	if (video_needs_restore == 1)
		restore_video_and_release_mem();
}
