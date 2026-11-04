/* Locals used by the installer screen and setup prompts. */
struct installer_locals {
	int text_length;			    /* bp-0x2d8 */
	char version_minor_text[3];		    /* bp-0x2d6 */
	char gap_before_menu[167];
	int disk_layout;                     /* bp-0x22c */
	char gap_before_page_state[96];
	int full_install;			   /* bp-0x1ca */
	int installer_version;			   /* bp-0x1c8 */
	int proceed_install;			   /* bp-0x1c6 */
	int page_state_1c4;
	int input_invalid;
	int setup_done;
	int graphics_list_row;
	int contrast;
	int brightness;
	char ram_name[2];                  /* bp-0x1b8 */
	int page_state_1b6;
	int page_state_1b4;
	int page_state_1b2;
	int page_state_1b0;
	int page_state_1ae;
	int page_state_1ac;
	int page_state_1aa;
	int page_state_1a8;
	int page_state_1a6;
	int page_state_1a4;
	int ramdisk_enabled;
	int ems_enabled;
	int previous_field;
	int current_field;
	int mouse_enabled;
	int sound_device;
	int graphics_mode;
	char disk_count_text[80];			   /* bp-0x194 */
	char message_text[80];				   /* bp-0x144 */
	char game_dir[80];				   /* bp-0xf4 */
	char source_dir[80];				   /* bp-0xa4 */
	char dest_path[22];				   /* bp-0x54 */
	char dest_drive_name[12];			   /* bp-0x3e */
	char source_path[22];				   /* bp-0x32 */
	char source_drive_name[12];			   /* bp-0x1c */
	int dest_drive_type;				   /* bp-0x10 */
	int source_drive_type;				   /* bp-0xe */
	int local_0c;
	int local_0a;
	int local_08;
	int startup_status;                /* bp-0x6 */
	int local_04;
	int local_02;
};

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
extern int graphics_mode_label_vga, graphics_mode_label_ega;
extern char installer_message_buffer[], pkunzip_filespec_list[];
extern int vga_available, ega_available,
	cga_available, hercules_available;
extern int unused_flag_2af0, unused_flag_2af2,
	unused_flag_2af4, unused_flag_2af6,
	unused_flag_2af8, mouse_detected;

main()
{
	struct installer_locals local;

	set_text_attributes();
	local.installer_version = 120;
	clear_screen_home_cursor();
	put_text_at(0, 14, installer_title_border_top);
	put_text_at(1, 14, wizardry_title_line);
	put_text_at(2, 14, dark_savant_title_line);
	put_text_at(3, 14, installer_version_line);
	put_text_at(4, 14, installer_title_border_bottom);
	put_int_at(3, 59, local.installer_version / 100);
	bios_put_text(version_separator);
	int_to_str(local.installer_version % 100, local.version_minor_text);
	if (aztec_strlen(local.version_minor_text) == 1) {
		local.version_minor_text[1] = local.version_minor_text[0];
		local.version_minor_text[0] = '0';
		local.version_minor_text[2] = 0;
	}
	bios_put_text(local.version_minor_text);
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
	aztec_strcpy(installer_message_buffer, empty_message_text);
	show_message_wait_for_enter(press_return_to_begin);
	clear_screen_home_cursor();
	put_text_at(0, 14, setup_screen_border_top);
	put_text_at(1, 14, setup_screen_title_wizardry);
	put_text_at(2, 14, setup_screen_title_dark_savant);
	put_text_at(3, 14, setup_screen_title_installation);
	put_text_at(4, 14, setup_screen_border_bottom);
	local.startup_status = detect_video_and_mouse();
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
	if (local.startup_status & 1)
		vga_available = 1;
	if (local.startup_status & 2)
		ega_available = 1;
	if (local.startup_status & 4096)
		mouse_detected = 1;
	local.source_drive_type = 3;
	aztec_strcpy(local.source_drive_name, default_source_drive);
	aztec_strcpy(local.source_path, empty_drive_name);
	local.dest_drive_type = 4;
	set_install_drive_defaults(local.dest_drive_type, local.dest_drive_name,
		local.dest_path);
	put_text_at(6, 2, drive_table_header);
	put_text_at(7, 2, drive_table_header_rule);
	draw_drive_setup_row(8, 2, source_drive_row_label, local.source_drive_type,
		local.source_drive_name, local.source_path);
	draw_drive_setup_row(9, 2, destination_drive_row_label, local.dest_drive_type,
		local.dest_drive_name, local.dest_path);
	local.ems_enabled = 0;
	local.ramdisk_enabled = 0;
	local.ram_name[0] = 0;
	put_text_at(11, 2, memory_expansion_row);
	put_text_at(11, 27, no_yes_label_table[local.ems_enabled]);
	put_text_at(11, 41, no_yes_label_table[local.ramdisk_enabled]);
	put_text_at(11, 58, local.ram_name);
	put_text_at(13, 2, graphic_mode_row);
	put_text_at(14, 2, video_adjustment_rule);
	local.graphics_mode = 0;
	local.graphics_list_row = 15;
	if (vga_available != 0) {
		local.graphics_mode = 1;
		put_text_at(local.graphics_list_row, 10, graphics_mode_label_vga);
		local.graphics_list_row++;
	}
	if (ega_available != 0) {
		if (local.graphics_mode == 0)
			local.graphics_mode = 2;
		put_text_at(local.graphics_list_row, 10, graphics_mode_label_ega);
		local.graphics_list_row++;
	}
	put_text_at(13, 16, graphics_mode_label_table[local.graphics_mode]);
	local.brightness = 0;
	local.contrast = 0;
	put_text_at(15, 52, brightness_label);
	put_int_at(15, 62, local.brightness);
	put_text_at(16, 52, contrast_label);
	put_int_at(16, 62, local.contrast);
	local.mouse_enabled = mouse_detected;
	put_text_at(18, 20, mouse_label);
	put_text_at(18, 27, no_yes_label_table[local.mouse_enabled]);
	local.sound_device = 0;
	put_text_at(18, 34, sound_label);
	put_text_at(18, 41, sound_device_names[local.sound_device]);
	put_text_at(20, 18, action_row);
	put_text_at(22, 20, navigation_help_row);
	if (local.graphics_mode == 0) {
		show_message_wait_for_enter(no_video_card_error);
		show_message_wait_for_enter(unable_to_complete_error);
		set_video_mode(3);
		aztec_exit(0);
	}
	local.current_field = 0;
	local.previous_field = -1;
	local.setup_done = 0;
	/* Keep the displayed fields in sync with the menu's current selections. */
	do {
		aztec_strcpy(installer_message_buffer, navigation_help_message);
	switch (local.previous_field) {
	case 0:
		put_text_at(8, 22, disk_drive_type_table[local.source_drive_type]);
		break;
	case 1:
		put_text_at(8, 46, local.source_drive_name);
		break;
	case 2:
		put_text_at(8, 58, local.source_path);
		break;
	case 3:
		put_text_at(9, 22, disk_drive_type_table[local.dest_drive_type]);
		break;
	case 4:
		put_text_at(9, 46, local.dest_drive_name);
		break;
	case 5:
		put_text_at(9, 58, local.dest_path);
		break;
	case 6:
		put_text_at(11, 27, no_yes_label_table[local.ems_enabled]);
		break;
	case 7:
		put_text_at(11, 41, no_yes_label_table[local.ramdisk_enabled]);
		break;
	case 8:
		put_text_at(11, 58, local.ram_name);
		break;
	case 9:
		put_text_at(13, 16, graphics_mode_label_table[local.graphics_mode]);
		break;
	case 10:
		put_int_at(15, 62, local.brightness);
		break;
	case 11:
		put_int_at(16, 62, local.contrast);
		break;
	case 12:
		put_text_at(18, 27, no_yes_label_table[local.mouse_enabled]);
		break;
	case 13:
		put_text_at(18, 41, sound_device_names[local.sound_device]);
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
	switch (local.current_field) {
	case 0:
		put_text_at_highlight_attr(8, 22,
			disk_drive_type_table[local.source_drive_type]);
		break;
	case 1:
		put_text_at_highlight_attr(8, 46, local.source_drive_name);
		break;
	case 2:
		put_text_at_highlight_attr(8, 58, local.source_path);
		break;
	case 3:
		put_text_at_highlight_attr(9, 22,
			disk_drive_type_table[local.dest_drive_type]);
		break;
	case 4:
		put_text_at_highlight_attr(9, 46, local.dest_drive_name);
		break;
	case 5:
		put_text_at_highlight_attr(9, 58, local.dest_path);
		break;
	case 6:
		put_text_at_highlight_attr(11, 27,
			no_yes_label_table[local.ems_enabled]);
		break;
	case 7:
		put_text_at_highlight_attr(11, 41,
			no_yes_label_table[local.ramdisk_enabled]);
		break;
	case 8:
		put_text_at_highlight_attr(11, 58, local.ram_name);
		break;
	case 9:
		put_text_at_highlight_attr(13, 16,
			graphics_mode_label_table[local.graphics_mode]);
		break;
	case 10:
		put_int_at_highlight_attr(15, 62, local.brightness);
		break;
	case 11:
		put_int_at_highlight_attr(16, 62, local.contrast);
		break;
	case 12:
		put_text_at_highlight_attr(18, 27,
			no_yes_label_table[local.mouse_enabled]);
		break;
	case 13:
		put_text_at_highlight_attr(18, 41, sound_device_names[local.sound_device]);
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
	local.local_08 = normalize_input_key(dos_con_in_noecho());
	/* Arrow keys move the active field; Enter edits the active selection. */
	switch (local.local_08) {
	case 8:
		local.previous_field = local.current_field;
		local.current_field = navigation_up_table[local.current_field];
		break;
	case 9:
		local.previous_field = local.current_field;
		local.current_field = navigation_right_table[local.current_field];
		break;
	case 10:
		local.previous_field = local.current_field;
		local.current_field = navigation_down_table[local.current_field];
		break;
	case 11:
		local.previous_field = local.current_field;
		local.current_field = navigation_left_table[local.current_field];
		break;
	case 13:
		local.previous_field = -1;
		switch (local.current_field) {
		case 0:
			local.source_drive_type =
				cycle_drive_type_choice(8, local.source_drive_type,
					source_drive_types_allowed);
			break;
	case 1:
	setup_name_again:
			read_text_at(8, 46, local.source_drive_name, 2);
			local.input_invalid =
				(local.source_drive_name[0] < 'A' || local.source_drive_name[0] > 'Z' ||
				 local.source_drive_name[1] != ':') ? 1 : 0;
			if (local.input_invalid == 1)
				show_message_wait_for_enter(bad_source_drive_error);
			if (local.input_invalid == 1)
				goto setup_name_again;
			break;
		case 2:
			show_message_wait_for_enter(source_path_not_allowed_error);
			break;
		case 3:
			local.dest_drive_type =
				cycle_drive_type_choice(9, local.dest_drive_type,
					destination_drive_types_allowed);
			set_install_drive_defaults(local.dest_drive_type, local.dest_drive_name,
				local.dest_path);
			put_text_at(9, 46, destination_drive_blank);
			put_text_at(9, 46, local.dest_drive_name);
			put_text_at(9, 58, local.dest_path);
			break;
	case 4:
	setup_source_again:
			read_text_at(9, 46, local.dest_drive_name, 2);
			local.input_invalid =
				(local.dest_drive_name[0] < 'A' || local.dest_drive_name[0] > 'Z' ||
				 local.dest_drive_name[1] != ':') ? 1 : 0;
			if (local.input_invalid == 1)
				show_message_wait_for_enter(bad_destination_drive_error);
			else if (local.dest_drive_name[0] == local.source_drive_name[0])
				show_message_wait_for_enter(drive_conflict_warning);
			if (local.input_invalid == 1)
				goto setup_source_again;
			break;
	case 5:
	setup_path_again:
			read_text_at(9, 58, local.dest_path, 20);
			if (local.dest_drive_type == 0) {
				local.input_invalid =
					(local.dest_path[0] < 'A' || local.dest_path[0] > 'Z' ||
					 local.dest_path[1] != ':'
					 	|| aztec_strlen(local.dest_path) > 2) ? 1 : 0;
				if (local.input_invalid == 1)
					show_message_wait_for_enter(bad_destination_path_error);
			} else {
				local.input_invalid = 0;
			}
			if (local.input_invalid == 1)
				goto setup_path_again;
			break;
		case 6:
			local.ems_enabled =
				toggle_yes_no_choice(11, 27, local.ems_enabled);
			break;
		case 7:
			local.ramdisk_enabled =
				toggle_yes_no_choice(11, 41, local.ramdisk_enabled);
			break;
		case 8:
	response_again:
			read_text_at(11, 58, local.ram_name, 20);
			local.text_length = aztec_strlen(local.ram_name);
			local.input_invalid =
				(local.text_length < 2 ||
				 local.ram_name[local.text_length - 1] != ':') ? 1 : 0;
			if (local.input_invalid == 1)
				show_message_wait_for_enter(bad_ram_name_error);
			if (local.input_invalid == 1)
				goto response_again;
			break;
		case 9:
			local.graphics_mode =
				advance_graphics_mode_choice(local.graphics_mode);
			break;
		case 10:
			local.brightness = prompt_int_at(local.brightness, 15,
				62, 3, 99, -99);
			break;
		case 11:
			local.contrast = prompt_int_at(local.contrast, 16,
				62, 3, 99, -99);
			break;
		case 12:
			local.mouse_enabled =
				toggle_yes_no_choice(18, 27, local.mouse_enabled);
			break;
		case 13:
			local.sound_device = next_sound_device(local.sound_device);
			break;
		case 14:
			if (local.source_drive_name[0] == local.dest_drive_name[0]) {
				show_message_wait_for_enter(drives_must_differ_error);
				show_message_wait_for_enter(specify_new_drive_prompt);
			} else {
				switch (local.dest_drive_type) {
				case 0: aztec_strcpy(local.disk_count_text,
					disk_count_360k); break;
				case 1: aztec_strcpy(local.disk_count_text,
					disk_count_1200k); break;
				case 2: aztec_strcpy(local.disk_count_text,
					disk_count_720k); break;
				case 3: aztec_strcpy(local.disk_count_text,
					disk_count_1440k); break;
				}
				aztec_strcpy(installer_message_buffer, empty_install_message_prefix);
				if (local.dest_drive_type != 4) {
					aztec_strcpy(local.message_text, install_requires_prefix);
					aztec_strcat(local.message_text, local.disk_count_text);
					aztec_strcat(local.message_text, install_requires_suffix);
					show_message_wait_for_enter(local.message_text);
					show_message_wait_for_enter(formatted_disk_reminder);
				}
				local.proceed_install = 1;
				local.setup_done = 1;
				local.full_install = 1;
			}
			break;
		case 15:
			local.proceed_install = 1;
			local.setup_done = 1;
			local.full_install = 0;
			break;
		case 16:
			local.proceed_install = 0;
			local.setup_done = 1;
			local.full_install = 0;
			break;
		}
		break;
	}
	} while (local.setup_done == 0);
	if (local.proceed_install == 0)
		goto installer_finish;
	/* Assemble the selected destination and installation options. */
	aztec_strcpy(pkunzip_filespec_list, filespec_list_init);
	aztec_strcpy(installer_message_buffer, message_buffer_init);
	aztec_strcpy(local.source_dir, local.source_drive_name);
	aztec_strcat(local.source_dir, source_dir_separator);
	aztec_strcpy(local.game_dir, local.dest_drive_name);
	aztec_strcat(local.game_dir, dest_dir_separator);
	if (local.full_install == 0 && local.dest_drive_type == 4) {
		aztec_strcat(local.game_dir, local.dest_path);
		if (aztec_strlen(local.dest_path) > 0)
			aztec_strcat(local.game_dir, dest_path_separator);
	}
	if (local.full_install == 1 && local.dest_drive_type == 4) {
		aztec_strcat(local.game_dir, local.dest_path);
		enter_destination_directory(local.dest_drive_name, local.game_dir, 1);
		if (aztec_strlen(local.dest_path) > 0)
			aztec_strcat(local.game_dir, full_install_path_separator);
		prompt_for_archive_disk(local.source_drive_name, local.source_dir, 1,
			archive_crus01_211c);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus01_2127, unzip_all_files_2132);
		if (local.source_drive_type == 3) {
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus02_2133, unzip_all_files_213e);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus04_213f, unzip_all_files_214a);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus06_214b, unzip_all_files_2156);
			prompt_for_archive_disk(local.source_drive_name, local.source_dir, 2,
				archive_crus03_2157);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus03_2162, unzip_all_files_216d);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus05_216e, unzip_all_files_2179);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus07_217a, unzip_all_files_2185);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus08_2186, unzip_all_files_2191);
		}
		if (local.source_drive_type == 2) {
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus07_2192, unzip_all_files_219d);
			prompt_for_archive_disk(local.source_drive_name, local.source_dir, 2,
				archive_crus02_219e);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus02_21a9, unzip_all_files_21b4);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus04_21b5, unzip_all_files_21c0);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus06_21c1, unzip_all_files_21cc);
			prompt_for_archive_disk(local.source_drive_name, local.source_dir, 3,
				archive_crus03_21cd);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus03_21d8, unzip_all_files_21e3);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus08_21e4, unzip_all_files_21ef);
			prompt_for_archive_disk(local.source_drive_name, local.source_dir, 4,
				archive_crus05_21f0);
			run_pkunzip_archive(local.source_dir, local.game_dir,
				archive_crus05_21fb, unzip_all_files_2206);
		}
		if (local.source_drive_type == 1) {
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus02_2207, unzip_all_files_2212);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus06_2213, unzip_all_files_221e);
		prompt_for_archive_disk(local.source_drive_name, local.source_dir, 2,
			archive_crus03_221f);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus03_222a, unzip_all_files_2235);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus04_2236, unzip_all_files_2241);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus07_2242, unzip_all_files_224d);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus08_224e, unzip_all_files_2259);
		prompt_for_archive_disk(local.source_drive_name, local.source_dir, 3,
			archive_crus05_225a);
		run_pkunzip_archive(local.source_dir, local.game_dir,
			archive_crus05_2265, unzip_all_files_2270);
	}
	}
	switch (local.dest_drive_type) {
	case 0: local.disk_layout = 5; break;
	case 1: local.disk_layout = 2; break;
	case 2: local.disk_layout = 4; break;
	case 3: local.disk_layout = 2; break;
	case 4: local.disk_layout = 1; break;
	}
	if (local.dest_drive_type != 4)
		prompt_for_archive_disk(local.dest_drive_name, local.game_dir, -1,
			scenario_header_filename);
	if (update_scenario_header(local.dest_drive_name, local.game_dir,
		local.dest_path, local.disk_layout, local.graphics_mode,
		local.sound_device, local.mouse_enabled, local.ems_enabled,
		local.ramdisk_enabled, local.ram_name,
		local.brightness, local.contrast, local.installer_version)) {
		show_message_wait_for_enter(installation_failure_message);
	} else {
		show_message_wait_for_enter(installation_success_message);
		show_message_wait_for_enter(game_start_instruction);
	}
	installer_finish:
	set_video_mode(3);
	aztec_exit(0);
}
