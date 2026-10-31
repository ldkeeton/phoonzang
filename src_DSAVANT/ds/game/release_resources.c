/* Release resources selected by the current game state. */

extern int floor_items, runtime_buffer_3k, maze_tables, maze_data;
extern int runtime_buffer_4k_b_seg, runtime_buffer_4k_b;
extern int runtime_buffer_4k_a_seg, runtime_buffer_4k_a;
extern int runtime_buffer_1k_seg, runtime_buffer_1k;
extern int data_file_fd, msg_dbs_fd;
extern int pointer_image_two_seg, pointer_image_two;
extern int mouse_pointer_shape_seg, mouse_pointer_shape;
extern int pointer_image_zero_seg, pointer_image_zero;
extern int mouse_active;
extern aztec_free(), app_free(), aztec_close();
extern call_wait_sound(), call_stop_sound(), call_mouse_off();
extern restore_video_and_release_mem();

release_resources(status)
int status;
{
	int released_resources;

	released_resources = 0;
	switch (status) {
	/* State 0 and states 13 through 30 release the shared buffers. */
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
		/* Keep segment allocation checks before the pointer checks. */
		if (floor_items)
			aztec_free(floor_items);
		if (runtime_buffer_3k)
			aztec_free(runtime_buffer_3k);
		if (maze_tables)
			aztec_free(maze_tables);
		if (maze_data)
			aztec_free(maze_data);
	buffer_b_check:
		/* The segment word follows the far pointer; skip its zero test when
		   nonzero. */
		#asm
		cmp word [runtime_buffer_4k_b], 0
		db 117, 5
		#endasm
		if (runtime_buffer_4k_b)
			app_free(runtime_buffer_4k_b, runtime_buffer_4k_b_seg);
	buffer_b_end:
		/* Repeat the same segment and pointer check for the other buffers. */
		#asm
		cmp word [runtime_buffer_4k_a], 0
		db 117, 5
		#endasm
		if (runtime_buffer_4k_a)
			app_free(runtime_buffer_4k_a, runtime_buffer_4k_a_seg);
	buffer_a_end:
		#asm
		cmp word [runtime_buffer_1k], 0
		db 117, 5
		#endasm
		if (runtime_buffer_1k)
			app_free(runtime_buffer_1k, runtime_buffer_1k_seg);
	buffer_1k_end:
		/* States 11 and 12 close both data files. */
	case 11:
	case 12:
		aztec_close(data_file_fd);
	case 10:
		aztec_close(msg_dbs_fd);
	case 7:
	case 8:
	case 9:
		/* These states also release pointer images and the mouse shape. */
	image_two_check:
		#asm
		cmp word [pointer_image_two], 0
		db 117, 5
		#endasm
		if (pointer_image_two)
			app_free(pointer_image_two, pointer_image_two_seg);
	image_two_end:
		#asm
		cmp word [mouse_pointer_shape], 0
		db 117, 5
		#endasm
		if (mouse_pointer_shape)
			app_free(mouse_pointer_shape, mouse_pointer_shape_seg);
	mouse_shape_end:
		#asm
		cmp word [pointer_image_zero], 0
		db 117, 5
		#endasm
		if (pointer_image_zero)
			app_free(pointer_image_zero, pointer_image_zero_seg);
	image_zero_end:
		/* States 4 through 9 wait for and stop sound before restoring video. */
	case 4:
	case 5:
	case 6:
		released_resources = 1;
		call_wait_sound(1);
		call_stop_sound();
		if (mouse_active)
			call_mouse_off();
	}

	if (released_resources == 1)
		restore_video_and_release_mem();
}
