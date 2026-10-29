/* Load startup resources and prepare runtime buffers. */
extern long load_file_data(), app_malloc(), call_get_free_space();
extern char *aztec_malloc(), *data_file_path();
extern int startup_zero_word, scenario_header_fd, message_delay,
	startup_option, startup_hardware_flags;
extern int code_check_value, code_check_word, mouse_active, hotspot_hit;
extern int answer_check_word, msg_dbs_fd, message_block_current;
extern int message_cache_next, message_cache_ids[], saved_screen_kind[];
extern char saved_screen_file[][20];
extern long saved_screen_ref[];
extern int data_file_fd, loaded_sound_id, loaded_score_num,
	startup_sound_check;
extern long pointer_image_zero, mouse_pointer_shape, pointer_image_two;
extern long runtime_buffer_1k, runtime_buffer_4k_a, runtime_buffer_4k_b;
extern char *maze_data, *maze_tables, *runtime_buffer_3k,
	*runtime_near_buffer_1k;
extern int maze_data_size, maze_tables_size, startup_check_stage, game_state;
extern unsigned char startup_option_byte, hardware_mode_setting,
	sound_device_setting;
extern int sound_port_setting;
extern char palette_scale_setting, palette_base_setting, code_characters[];
extern char scenario_header_data[], record_size[], disk_header[],
	message_directory[];
extern char pc_file_record_size[];
extern char startup_scenario_header_name[];
extern char startup_vbfont0_name[];
extern char startup_vbfont1_name[];
extern char startup_vbfont2_name[];
extern char startup_vbfont3_name[];
extern char startup_vcfont1_name[];
extern char startup_vcport0_name[];
extern char startup_vcfont2_name[];
extern char startup_vcfont3_name[];
extern char startup_vmpntr0_name[];
extern char startup_vmpntr1_name[];
extern char startup_vmpntr2_name[];
extern char startup_base_data_name[];
extern char startup_master_header_name[];
extern char startup_disk_header_name[];
extern char startup_message_header_name[];
extern char startup_pcfile_name[];
extern char startup_misc_header_name[];
extern char startup_message_database_name[];
extern char startup_scenario_database_name[];
extern char startup_palette_definition_name[];

/* Load startup resources and allocate the buffers required before play. */
initialize_runtime_resources()
{
	int hardware_mode, palette_fd, index, reserved_word;
	int sound_device, sound_port;
	char reserved_space[14]; /* preserve the compiler frame before RGB data */
	char palette[768];

	startup_zero_word = 0;
	pointer_image_zero = 0L;
	mouse_pointer_shape = 0L;
	pointer_image_two = 0L;
	if ((scenario_header_fd = aztec_open(startup_scenario_header_name, 0)) == -1)
		release_and_exit(1);
	aztec_read(scenario_header_fd, scenario_header_data, 844);
	aztec_close(scenario_header_fd);
	message_delay = 54; /* initial message timing */
	startup_option = startup_option_byte;
	switch (hardware_mode_setting) {
	case 255: /* rejected hardware setting */ release_and_exit(2); break;
	case 1: hardware_mode = 1; break;
	case 2: hardware_mode = 2; break;
	default: release_and_exit(2); break;
	}
	startup_hardware_flags = init_system_hardware(hardware_mode);
	if ((startup_hardware_flags & 1) || (startup_hardware_flags & 2)) {
		/* either flag suffices */
	} else
		release_and_exit(3);
	code_check_value = (unsigned)36956; /* startup check sentinel */
	if ((sound_device = sound_device_setting) == 6)
		/* normalize device selector */
		sound_device = 4;
	sound_port = sound_device == 0 ? 0 : sound_port_setting;
	call_play_select_device(sound_port, sound_device);
	code_check_word = (unsigned)36956; /* startup check sentinel */
	mouse_active = 0;
	hotspot_hit = 0;
	for (index = 0; index < 100; index++) /* seed the check character pool */
		code_characters[index] = random_below(100);
	set_code_check_value();
	if (call_get_free_space(0, 0) < 90624L) /* minimum driver free space */
		release_and_exit(4);
	load_startup_font(startup_vbfont0_name, 0);
	load_startup_font(startup_vbfont1_name, 1);
	load_startup_font(startup_vbfont2_name, 2);
	load_startup_font(startup_vbfont3_name, 3);
	load_startup_font(startup_vcfont1_name, 4);
	load_startup_font(startup_vcport0_name, 5);
	load_startup_font(startup_vcfont2_name, 6);
	load_startup_font(startup_vcfont3_name, 7);
	pick_code_char();
	pointer_image_zero = load_file_data(startup_vmpntr0_name);
	mouse_pointer_shape = load_file_data(startup_vmpntr1_name);
	pointer_image_two = load_file_data(startup_vmpntr2_name);
	load_startup_maze(startup_base_data_name, 3);
	answer_check_word = (unsigned)36956; /* startup check sentinel */
	read_startup_file(startup_master_header_name, record_size, 82);
	read_startup_file(startup_disk_header_name, disk_header, 780);
	read_startup_file(startup_message_header_name, message_directory, 11774);
	read_startup_file(startup_pcfile_name, pc_file_record_size, 24);
	load_startup_misc(startup_misc_header_name);
	if ((msg_dbs_fd = aztec_open(data_file_path(startup_message_database_name, 0),
		0)) == -1)
		release_and_exit(9);
	message_block_current = -1;
	for (message_cache_next = 0; message_cache_next < 4; message_cache_next++)
		/* invalidate cache slots */
		message_cache_ids[message_cache_next] = -1;
	message_cache_next = 0;
	for (index = 0; index < 5; index++) { /* no saved screens yet */
		saved_screen_kind[index] = -1;
		saved_screen_file[index][0] = 0;
		saved_screen_ref[index] = 0L;
	}
	if ((data_file_fd = aztec_open(data_file_path(
		startup_scenario_database_name, 0), 0)) == -1)
		release_and_exit(10);
	prepare_code_answer();
	load_sound_file(0, 0, 1);
	load_sound_file(1, 1, 1);
	load_sound_file(2, 2, 1);
	load_sound_file(3, 3, 1);
	load_sound_file(4, 4, 1);
	load_sound_file(8, 8, 1);
	load_sound_file(9, 9, 1);
	loaded_sound_id = -1;
	loaded_score_num = -1;
	startup_sound_check = (unsigned)36956; /* startup check sentinel */
	runtime_buffer_1k = 0L;
	runtime_buffer_4k_a = 0L;
	runtime_buffer_4k_b = 0L;
	maze_data = 0;
	maze_tables = 0;
	runtime_buffer_3k = 0;
	runtime_near_buffer_1k = 0;
	runtime_buffer_1k = app_malloc(1024L);
	if (runtime_buffer_1k == 0L)
		release_and_exit(13);
	runtime_buffer_4k_a = app_malloc(4096L);
	if (runtime_buffer_4k_a == 0L)
		release_and_exit(13);
	runtime_buffer_4k_b = app_malloc(4096L);
	if (runtime_buffer_4k_b == 0L)
		release_and_exit(13);
	maze_data = aztec_malloc(maze_data_size);
	if (maze_data == 0)
		release_and_exit(13);
	maze_tables = aztec_malloc(maze_tables_size);
	if (maze_tables == 0)
		release_and_exit(13);
	runtime_buffer_3k = aztec_malloc(3072);
	if (runtime_buffer_3k == 0)
		release_and_exit(13);
	runtime_near_buffer_1k = aztec_malloc(1024);
	if (runtime_near_buffer_1k == 0)
		release_and_exit(13);
	startup_check_stage = 0;
	if ((palette_fd = aztec_open(data_file_path(
		startup_palette_definition_name, 0), 0)) == -1)
		release_and_exit(14);
	aztec_read(palette_fd, palette, 768);
	aztec_close(palette_fd);
	build_palette_map(palette_base_setting, palette_scale_setting, palette);
	game_state = 1;
}
