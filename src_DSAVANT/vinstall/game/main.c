/* Draws the installer screen and collects its setup choices. */
extern char installer_title_border_top[], wizardry_title_line[],
	dark_savant_title_line[], installer_version_line[],
	installer_title_border_bottom[];
extern char version_separator[], copyright_line_0[],
	copyright_line_1[], copyright_line_2[],
	copyright_line_3[];
extern char copyright_line_4[],
	copyright_line_5[], copyright_line_6[],
	copyright_line_7[], copyright_line_8[];
extern char copyright_line_9[], empty_message_text[],
	press_return_to_begin[], setup_screen_border_top[],
	setup_screen_title_wizardry[];
extern char setup_screen_title_dark_savant[],
	setup_screen_title_installation[],
	setup_screen_border_bottom[], default_source_drive[], empty_drive_name[];
extern char drive_table_header[], drive_table_header_rule[],
	source_drive_row_label[], destination_drive_row_label[];
extern char memory_expansion_row[],
	graphic_mode_row[], video_adjustment_rule[],
	brightness_label[];
extern char contrast_label[], mouse_label[],
	sound_label[], action_row[];
extern char navigation_help_row[], no_video_card_error[],
	unable_to_complete_error[], navigation_help_message[];
extern char full_install_label[],
	config_only_label[], abort_install_label[],
	full_install_label_highlighted[];
extern char config_only_label_highlighted[],
	abort_install_label_highlighted[];
extern char source_drive_types_allowed[], bad_source_drive_error[],
	source_path_not_allowed_error[], destination_drive_types_allowed[];
extern char destination_drive_blank[], bad_destination_drive_error[],
	drive_conflict_warning[], bad_destination_path_error[];
extern char bad_ram_name_error[],
	drives_must_differ_error[], specify_new_drive_prompt[],
	disk_count_360k[];
extern char disk_count_1200k[], disk_count_720k[],
	disk_count_1440k[], empty_install_message_prefix[];
extern char install_requires_prefix[], install_requires_suffix[],
	formatted_disk_reminder[], filespec_list_init[];
extern char message_buffer_init[], source_dir_separator[],
	dest_dir_separator[], dest_path_separator[];
extern char full_install_path_separator[], archive_crus01_211c[],
	archive_crus01_2127[], unzip_all_files_2132[];
extern char archive_crus02_2133[], unzip_all_files_213e[],
	archive_crus04_213f[], unzip_all_files_214a[];
extern char archive_crus06_214b[], unzip_all_files_2156[],
	archive_crus03_2157[], archive_crus03_2162[];
extern char unzip_all_files_216d[], archive_crus05_216e[],
	unzip_all_files_2179[], archive_crus07_217a[];
extern char unzip_all_files_2185[], archive_crus08_2186[],
	unzip_all_files_2191[], archive_crus07_2192[];
extern char unzip_all_files_219d[], archive_crus02_219e[],
	archive_crus02_21a9[], unzip_all_files_21b4[];
extern char archive_crus04_21b5[], unzip_all_files_21c0[],
	archive_crus06_21c1[], unzip_all_files_21cc[];
extern char archive_crus03_21cd[], archive_crus03_21d8[],
	unzip_all_files_21e3[], archive_crus08_21e4[];
extern char unzip_all_files_21ef[], archive_crus05_21f0[],
	archive_crus05_21fb[], unzip_all_files_2206[];
extern char archive_crus02_2207[], unzip_all_files_2212[],
	archive_crus06_2213[], unzip_all_files_221e[];
extern char archive_crus03_221f[], archive_crus03_222a[],
	unzip_all_files_2235[], archive_crus04_2236[];
extern char unzip_all_files_2241[], archive_crus07_2242[],
	unzip_all_files_224d[], archive_crus08_224e[];
extern char unzip_all_files_2259[], archive_crus05_225a[],
	archive_crus05_2265[], unzip_all_files_2270[];
extern char scenario_header_filename[], installation_failure_message[],
	installation_success_message[], game_start_instruction[];
extern char *graphics_mode_label_table[], *no_yes_label_table[],
	*disk_drive_type_table[], *sound_device_names[];
extern int navigation_up_table[], navigation_down_table[],
	navigation_right_table[], navigation_left_table[];
extern char installer_message_buffer[], pkunzip_filespec_list[];
extern int vga_available, ega_available,
	cga_available, hercules_available;
extern int unused_flag_2af0, unused_flag_2af2,
	unused_flag_2af4, unused_flag_2af6,
	unused_flag_2af8, mouse_detected;

main()
{
	int unused_02, unused_04;
	int startup_status, key;
	int unused_0a, unused_0c;
	int source_drive_type, dest_drive_type;
	char source_drive_name[12], source_path[22];
	char dest_drive_name[12], dest_path[22];
	char source_dir[80], game_dir[80];
	char message_text[80], disk_count_text[80];
	int graphics_mode, sound_device, mouse_enabled;
	int current_field, previous_field;
	int ems_enabled, ramdisk_enabled;
	char ram_name[22];
	int brightness, contrast, graphics_list_row;
	int setup_done, input_invalid, unused_1c4;
	int proceed_install, installer_version, full_install;
	char unused_buffer_a[96];
	int disk_layout;
	char unused_buffer_b[167];
	char version_minor_text[3];
	int text_length;

	set_text_attributes();
	installer_version = 120;
	clear_screen_home_cursor();
	put_text_at(0, 14, installer_title_border_top);
	put_text_at(1, 14, wizardry_title_line);
	put_text_at(2, 14, dark_savant_title_line);
	put_text_at(3, 14, installer_version_line);
	put_text_at(4, 14, installer_title_border_bottom);
	put_int_at(3, 59, installer_version / 100);
	bios_put_text(version_separator);
	int_to_str(installer_version % 100, version_minor_text);
	if (strlen(version_minor_text) == 1) {
		version_minor_text[1] = version_minor_text[0];
		version_minor_text[0] = '0';
		version_minor_text[2] = 0;
	}
	bios_put_text(version_minor_text);
	put_text_at(7, 5, copyright_line_0);
	put_text_at(8, 5, copyright_line_1);
	put_text_at(10, 5, copyright_line_2);
	put_text_at(11, 5, copyright_line_3);
	put_text_at(13, 5, copyright_line_4);
	put_text_at(14, 5, copyright_line_5);
	put_text_at(15, 5, copyright_line_6);
	put_text_at(16, 5, copyright_line_7);
	put_text_at(17, 5, copyright_line_8);
	put_text_at(18, 5, copyright_line_9);
	strcpy(installer_message_buffer, empty_message_text);
	show_message_wait_for_enter(press_return_to_begin);
	clear_screen_home_cursor();
	put_text_at(0, 14, setup_screen_border_top);
	put_text_at(1, 14, setup_screen_title_wizardry);
	put_text_at(2, 14, setup_screen_title_dark_savant);
	put_text_at(3, 14, setup_screen_title_installation);
	put_text_at(4, 14, setup_screen_border_bottom);
	startup_status = detect_video_and_mouse();
	vga_available = 0;
	ega_available = 0;
	cga_available = 0;
	unused_flag_2af0 = 0;
	hercules_available = 0;
	unused_flag_2af2 = 0;
	unused_flag_2af4 = 0;
	unused_flag_2af6 = 0;
	unused_flag_2af8 = 0;
	mouse_detected = 0;
	if (startup_status & 1)
		vga_available = 1;
	if (startup_status & 2)
		ega_available = 1;
	if (startup_status & 4096)
		mouse_detected = 1;
	source_drive_type = 3;
	strcpy(source_drive_name, default_source_drive);
	strcpy(source_path, empty_drive_name);
	dest_drive_type = 4;
	set_install_drive_defaults(dest_drive_type, dest_drive_name,
		dest_path);
	put_text_at(6, 2, drive_table_header);
	put_text_at(7, 2, drive_table_header_rule);
	draw_drive_setup_row(8, 2, source_drive_row_label, source_drive_type,
		source_drive_name, source_path);
	draw_drive_setup_row(9, 2, destination_drive_row_label, dest_drive_type,
		dest_drive_name, dest_path);
	ems_enabled = 0;
	ramdisk_enabled = 0;
	ram_name[0] = 0;
	put_text_at(11, 2, memory_expansion_row);
	put_text_at(11, 27, no_yes_label_table[ems_enabled]);
	put_text_at(11, 41, no_yes_label_table[ramdisk_enabled]);
	put_text_at(11, 58, ram_name);
	put_text_at(13, 2, graphic_mode_row);
	put_text_at(14, 2, video_adjustment_rule);
	graphics_mode = 0;
	graphics_list_row = 15;
	if (vga_available != 0) {
		graphics_mode = 1;
		put_text_at(graphics_list_row, 10, graphics_mode_label_table[1]);
		graphics_list_row++;
	}
	if (ega_available != 0) {
		if (graphics_mode == 0)
			graphics_mode = 2;
		put_text_at(graphics_list_row, 10, graphics_mode_label_table[2]);
		graphics_list_row++;
	}
	put_text_at(13, 16, graphics_mode_label_table[graphics_mode]);
	brightness = 0;
	contrast = 0;
	put_text_at(15, 52, brightness_label);
	put_int_at(15, 62, brightness);
	put_text_at(16, 52, contrast_label);
	put_int_at(16, 62, contrast);
	mouse_enabled = mouse_detected;
	put_text_at(18, 20, mouse_label);
	put_text_at(18, 27, no_yes_label_table[mouse_enabled]);
	sound_device = 0;
	put_text_at(18, 34, sound_label);
	put_text_at(18, 41, sound_device_names[sound_device]);
	put_text_at(20, 18, action_row);
	put_text_at(22, 20, navigation_help_row);
	if (graphics_mode == 0) {
		show_message_wait_for_enter(no_video_card_error);
		show_message_wait_for_enter(unable_to_complete_error);
		set_video_mode(3);
		exit(0);
	}
	current_field = 0;
	previous_field = -1;
	setup_done = 0;
	/* Keep the displayed fields in sync with the menu's current selections. */
	do {
		strcpy(installer_message_buffer, navigation_help_message);
		switch (previous_field) {
		case 0:
			put_text_at(8, 22, disk_drive_type_table[source_drive_type]);
			break;
		case 1:
			put_text_at(8, 46, source_drive_name);
			break;
		case 2:
			put_text_at(8, 58, source_path);
			break;
		case 3:
			put_text_at(9, 22, disk_drive_type_table[dest_drive_type]);
			break;
		case 4:
			put_text_at(9, 46, dest_drive_name);
			break;
		case 5:
			put_text_at(9, 58, dest_path);
			break;
		case 6:
			put_text_at(11, 27, no_yes_label_table[ems_enabled]);
			break;
		case 7:
			put_text_at(11, 41, no_yes_label_table[ramdisk_enabled]);
			break;
		case 8:
			put_text_at(11, 58, ram_name);
			break;
		case 9:
			put_text_at(13, 16, graphics_mode_label_table[graphics_mode]);
			break;
		case 10:
			put_int_at(15, 62, brightness);
			break;
		case 11:
			put_int_at(16, 62, contrast);
			break;
		case 12:
			put_text_at(18, 27, no_yes_label_table[mouse_enabled]);
			break;
		case 13:
			put_text_at(18, 41, sound_device_names[sound_device]);
			break;
		case 14:
			put_text_at(20, 18, full_install_label);
			break;
		case 15:
			put_text_at(20, 33, config_only_label);
			break;
		case 16:
			put_text_at(20, 48, abort_install_label);
			break;
		case -1:
			break;
		}
		/* Refresh the selected value before reading the next menu key. */
		switch (current_field) {
		case 0:
			put_text_at_highlight_attr(8, 22,
				disk_drive_type_table[source_drive_type]);
			break;
		case 1:
			put_text_at_highlight_attr(8, 46, source_drive_name);
			break;
		case 2:
			put_text_at_highlight_attr(8, 58, source_path);
			break;
		case 3:
			put_text_at_highlight_attr(9, 22,
				disk_drive_type_table[dest_drive_type]);
			break;
		case 4:
			put_text_at_highlight_attr(9, 46, dest_drive_name);
			break;
		case 5:
			put_text_at_highlight_attr(9, 58, dest_path);
			break;
		case 6:
			put_text_at_highlight_attr(11, 27,
				no_yes_label_table[ems_enabled]);
			break;
		case 7:
			put_text_at_highlight_attr(11, 41,
				no_yes_label_table[ramdisk_enabled]);
			break;
		case 8:
			put_text_at_highlight_attr(11, 58, ram_name);
			break;
		case 9:
			put_text_at_highlight_attr(13, 16,
				graphics_mode_label_table[graphics_mode]);
			break;
		case 10:
			put_int_at_highlight_attr(15, 62, brightness);
			break;
		case 11:
			put_int_at_highlight_attr(16, 62, contrast);
			break;
		case 12:
			put_text_at_highlight_attr(18, 27,
				no_yes_label_table[mouse_enabled]);
			break;
		case 13:
			put_text_at_highlight_attr(18, 41, sound_device_names[sound_device]);
			break;
		case 14:
			put_text_at_highlight_attr(20, 18, full_install_label_highlighted);
			break;
		case 15:
			put_text_at_highlight_attr(20, 33, config_only_label_highlighted);
			break;
		case 16:
			put_text_at_highlight_attr(20, 48, abort_install_label_highlighted);
			break;
		}
		key = normalize_input_key(dos_con_in_noecho());
		/* Arrow keys move the active field; Enter edits the active selection. */
		switch (key) {
		case 8:
			previous_field = current_field;
			current_field = navigation_up_table[current_field];
			break;
		case 9:
			previous_field = current_field;
			current_field = navigation_right_table[current_field];
			break;
		case 10:
			previous_field = current_field;
			current_field = navigation_down_table[current_field];
			break;
		case 11:
			previous_field = current_field;
			current_field = navigation_left_table[current_field];
			break;
		case 13:
			previous_field = -1;
			switch (current_field) {
			case 0:
				source_drive_type =
					cycle_drive_type_choice(8, source_drive_type,
						source_drive_types_allowed);
				break;
			case 1:
				do {
					read_text_at(8, 46, source_drive_name, 2);
					input_invalid =
						(source_drive_name[0] < 'A' || source_drive_name[0] > 'Z' ||
						 source_drive_name[1] != ':') ? 1 : 0;
					if (input_invalid == 1)
						show_message_wait_for_enter(bad_source_drive_error);
				} while (input_invalid == 1);
				break;
			case 2:
				show_message_wait_for_enter(source_path_not_allowed_error);
				break;
			case 3:
				dest_drive_type =
					cycle_drive_type_choice(9, dest_drive_type,
						destination_drive_types_allowed);
				set_install_drive_defaults(dest_drive_type, dest_drive_name,
					dest_path);
				put_text_at(9, 46, destination_drive_blank);
				put_text_at(9, 46, dest_drive_name);
				put_text_at(9, 58, dest_path);
				break;
			case 4:
				do {
					read_text_at(9, 46, dest_drive_name, 2);
					input_invalid =
						(dest_drive_name[0] < 'A' || dest_drive_name[0] > 'Z' ||
						 dest_drive_name[1] != ':') ? 1 : 0;
					if (input_invalid == 1)
						show_message_wait_for_enter(bad_destination_drive_error);
					else if (dest_drive_name[0] == source_drive_name[0])
						show_message_wait_for_enter(drive_conflict_warning);
				} while (input_invalid == 1);
				break;
			case 5:
				do {
					read_text_at(9, 58, dest_path, 20);
					if (dest_drive_type == 0) {
						input_invalid =
							(dest_path[0] < 'A' || dest_path[0] > 'Z' ||
							 dest_path[1] != ':' ||
							 strlen(dest_path) > 2) ? 1 : 0;
						if (input_invalid == 1)
							show_message_wait_for_enter(bad_destination_path_error);
					} else
						input_invalid = 0;
				} while (input_invalid == 1);
				break;
			case 6:
				ems_enabled =
					toggle_yes_no_choice(11, 27, ems_enabled);
				break;
			case 7:
				ramdisk_enabled =
					toggle_yes_no_choice(11, 41, ramdisk_enabled);
				break;
			case 8:
				do {
					read_text_at(11, 58, ram_name, 20);
					text_length = strlen(ram_name);
					input_invalid =
						(text_length < 2 ||
						 ram_name[text_length - 1] != ':') ? 1 : 0;
					if (input_invalid == 1)
						show_message_wait_for_enter(bad_ram_name_error);
				} while (input_invalid == 1);
				break;
			case 9:
				graphics_mode =
					advance_graphics_mode_choice(graphics_mode);
				break;
			case 10:
				brightness = prompt_int_at(brightness, 15,
					62, 3, 99, -99);
				break;
			case 11:
				contrast = prompt_int_at(contrast, 16,
					62, 3, 99, -99);
				break;
			case 12:
				mouse_enabled =
					toggle_yes_no_choice(18, 27, mouse_enabled);
				break;
			case 13:
				sound_device = next_sound_device(sound_device);
				break;
			case 14:
				if (source_drive_name[0] == dest_drive_name[0]) {
					show_message_wait_for_enter(drives_must_differ_error);
					show_message_wait_for_enter(specify_new_drive_prompt);
				} else {
					switch (dest_drive_type) {
					case 0: strcpy(disk_count_text,
						disk_count_360k); break;
					case 1: strcpy(disk_count_text,
						disk_count_1200k); break;
					case 2: strcpy(disk_count_text,
						disk_count_720k); break;
					case 3: strcpy(disk_count_text,
						disk_count_1440k); break;
					}
					strcpy(installer_message_buffer, empty_install_message_prefix);
					if (dest_drive_type != 4) {
						strcpy(message_text, install_requires_prefix);
						strcat(message_text, disk_count_text);
						strcat(message_text, install_requires_suffix);
						show_message_wait_for_enter(message_text);
						show_message_wait_for_enter(formatted_disk_reminder);
					}
					proceed_install = 1;
					setup_done = 1;
					full_install = 1;
				}
				break;
			case 15:
				proceed_install = 1;
				setup_done = 1;
				full_install = 0;
				break;
			case 16:
				proceed_install = 0;
				setup_done = 1;
				full_install = 0;
				break;
			}
			break;
		}
	} while (setup_done == 0);
	if (proceed_install) {
		/* Assemble the selected destination and installation options. */
		strcpy(pkunzip_filespec_list, filespec_list_init);
		strcpy(installer_message_buffer, message_buffer_init);
		strcpy(source_dir, source_drive_name);
		strcat(source_dir, source_dir_separator);
		strcpy(game_dir, dest_drive_name);
		strcat(game_dir, dest_dir_separator);
		if (full_install == 0 && dest_drive_type == 4) {
			strcat(game_dir, dest_path);
			if (strlen(dest_path) > 0)
				strcat(game_dir, dest_path_separator);
		}
		if (full_install == 1 && dest_drive_type == 4) {
			strcat(game_dir, dest_path);
			enter_destination_directory(dest_drive_name, game_dir, 1);
			if (strlen(dest_path) > 0)
				strcat(game_dir, full_install_path_separator);
			prompt_for_archive_disk(source_drive_name, source_dir, 1,
				archive_crus01_211c);
			run_pkunzip_archive(source_dir, game_dir,
				archive_crus01_2127, unzip_all_files_2132);
			if (source_drive_type == 3) {
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus02_2133, unzip_all_files_213e);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus04_213f, unzip_all_files_214a);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus06_214b, unzip_all_files_2156);
				prompt_for_archive_disk(source_drive_name, source_dir, 2,
					archive_crus03_2157);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus03_2162, unzip_all_files_216d);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus05_216e, unzip_all_files_2179);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus07_217a, unzip_all_files_2185);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus08_2186, unzip_all_files_2191);
			}
			if (source_drive_type == 2) {
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus07_2192, unzip_all_files_219d);
				prompt_for_archive_disk(source_drive_name, source_dir, 2,
					archive_crus02_219e);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus02_21a9, unzip_all_files_21b4);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus04_21b5, unzip_all_files_21c0);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus06_21c1, unzip_all_files_21cc);
				prompt_for_archive_disk(source_drive_name, source_dir, 3,
					archive_crus03_21cd);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus03_21d8, unzip_all_files_21e3);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus08_21e4, unzip_all_files_21ef);
				prompt_for_archive_disk(source_drive_name, source_dir, 4,
					archive_crus05_21f0);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus05_21fb, unzip_all_files_2206);
			}
			if (source_drive_type == 1) {
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus02_2207, unzip_all_files_2212);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus06_2213, unzip_all_files_221e);
				prompt_for_archive_disk(source_drive_name, source_dir, 2,
					archive_crus03_221f);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus03_222a, unzip_all_files_2235);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus04_2236, unzip_all_files_2241);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus07_2242, unzip_all_files_224d);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus08_224e, unzip_all_files_2259);
				prompt_for_archive_disk(source_drive_name, source_dir, 3,
					archive_crus05_225a);
				run_pkunzip_archive(source_dir, game_dir,
					archive_crus05_2265, unzip_all_files_2270);
			}
		}
		switch (dest_drive_type) {
		case 0: disk_layout = 5; break;
		case 1: disk_layout = 2; break;
		case 2: disk_layout = 4; break;
		case 3: disk_layout = 2; break;
		case 4: disk_layout = 1; break;
		}
		if (dest_drive_type != 4)
			prompt_for_archive_disk(dest_drive_name, game_dir, -1,
				scenario_header_filename);
		if (update_scenario_header(dest_drive_name, game_dir,
			dest_path, disk_layout, graphics_mode,
			sound_device, mouse_enabled, ems_enabled,
			ramdisk_enabled, ram_name,
			brightness, contrast, installer_version)) {
			show_message_wait_for_enter(installation_failure_message);
		} else {
			show_message_wait_for_enter(installation_success_message);
			show_message_wait_for_enter(game_start_instruction);
		}
	}
	set_video_mode(3);
	exit(0);
}
