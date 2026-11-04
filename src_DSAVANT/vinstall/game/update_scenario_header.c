/* Write the setup choices into the game's SCENARIO.HDR. */
extern int aztec_strcpy();
extern int aztec_strcat();
extern int aztec_open();
extern int aztec_lseek();
extern int aztec_read();
extern int aztec_write();
extern int aztec_close();
extern int aztec_strlen();
extern int show_message_wait_for_enter();

extern char scenario_header_name[];
extern char header_open_error_prefix[];
extern char header_open_error_suffix[];
extern char install_version_mismatch_error[];
extern char disk_layout_5_path_separator[];
extern char savegame_filename[];
extern int scenario_header_handle;

/* The file image also holds the installer fields at their DS offsets. */
struct scenario_header {
	char reserved_0000_02cf[720];
	char game_directory_0[20];		    /* offset 0x2d0 */
	char disk_layout_5_path[20];		    /* offset 0x2e4 */
	char game_directory_1[20];		    /* offset 0x2f8 */
	char savegame_filename_field[20];	    /* offset 0x30c */
	char ems_enabled;			    /* offset 0x320 */
	char ramdisk_enabled;			    /* offset 0x321 */
	char ramdisk_name[20];			    /* offset 0x322 */
	char screen_brightness_level;		    /* offset 0x336 */
	char screen_contrast_level;		    /* offset 0x337 */
	int install_version;			    /* offset 0x338 */
	char sound_volume[4];			    /* offset 0x33a */
	int sound_base_port_0;			    /* offset 0x33e */
	int sound_base_port_1;			    /* offset 0x340 */
	char digital_sound_device;		    /* offset 0x342 */
	char music_device;			    /* offset 0x343 */
	char reserved_0344;			    /* offset 0x344 */
	char disk_layout;			    /* offset 0x345 */
	char reserved_0346;			    /* offset 0x346 */
	char mouse_choice_enabled;		    /* offset 0x347 */
	char graphics_mode_choice;		    /* offset 0x348 */
	char disk_layout_5_flag;		    /* offset 0x349 */
	char reserved_034a[2];
};
extern struct scenario_header scenario_header_record;

/* Reads SCENARIO.HDR from game_dir, checks the install version, updates it. */
update_scenario_header(dest_drive, game_dir, dest_path, layout_code,
	graphics_choice, sound_choice, mouse_choice, ems_choice,
	ramdisk_choice, ram_name_text, brightness, contrast, version)
char *dest_drive;
char *game_dir;
char *dest_path;
int layout_code;
int graphics_choice;
int sound_choice;
int mouse_choice;
int ems_choice;
int ramdisk_choice;
char *ram_name_text;
int brightness;
int contrast;
int version;
{
	char header_path[80];
	char error_message[80];

	/* Open game_dir + SCENARIO.HDR for update. */
	aztec_strcpy(header_path, game_dir);
	aztec_strcat(header_path, scenario_header_name);
	/* Open mode 2 is used here before reading and rewriting the record. */
	scenario_header_handle = aztec_open(header_path, 2);
	if (scenario_header_handle == -1) {
		aztec_strcpy(error_message, header_open_error_prefix);
		aztec_strcat(error_message, header_path);
		aztec_strcat(error_message, header_open_error_suffix);
		show_message_wait_for_enter(error_message);
		return 1;
	}

	/* Read the saved record, then reject a different install version. */
	aztec_lseek(scenario_header_handle, 0L, 0);
	/* The SCENARIO.HDR record is 0x34c bytes long. */
	aztec_read(scenario_header_handle, &scenario_header_record, 844);
	if (version != scenario_header_record.install_version) {
		show_message_wait_for_enter(install_version_mismatch_error);
		aztec_close(scenario_header_handle);
		return 1;
	}

	/* Copy the current installer choices into the saved record fields. */
	scenario_header_record.install_version = version;
	scenario_header_record.graphics_mode_choice = graphics_choice;
	scenario_header_record.ems_enabled = ems_choice;
	scenario_header_record.ramdisk_enabled = ramdisk_choice;
	aztec_strcpy(scenario_header_record.ramdisk_name,
		ram_name_text);
	scenario_header_record.screen_brightness_level = brightness;
	scenario_header_record.screen_contrast_level = contrast;
	/* Volumes are 0 for NONE (7) and 10 for any other device. */
	scenario_header_record.sound_volume[0] = sound_choice == 7 ? 0 : 10;
	scenario_header_record.sound_volume[1] = sound_choice == 7 ? 0 : 10;
	scenario_header_record.sound_volume[2] = sound_choice == 7 ? 0 : 10;
	scenario_header_record.sound_volume[3] = sound_choice == 7 ? 0 : 10;
	/* NONE (7) wraps to 0; Roland has no digital sound, Covox 2/3 no music. */
	sound_choice = sound_choice % 7;
	scenario_header_record.digital_sound_device = sound_choice;
	if (sound_choice == 5)
		scenario_header_record.digital_sound_device = 0;
	scenario_header_record.music_device = sound_choice;
	if (sound_choice == 2 || sound_choice == 3)
		scenario_header_record.music_device = 0;
	/* Base port 0x220 for any device other than the PC speaker. */
	scenario_header_record.sound_base_port_0 = 0;
	scenario_header_record.sound_base_port_1 = 0;
	if (sound_choice > 0) {
		scenario_header_record.sound_base_port_0 = 544;
		scenario_header_record.sound_base_port_1 = 544;
	}
	scenario_header_record.mouse_choice_enabled = mouse_choice == 0 ? 0 : 1;
	scenario_header_record.disk_layout = layout_code;
	aztec_strcpy(scenario_header_record.game_directory_0,
		game_dir);
	aztec_strcpy(scenario_header_record.game_directory_1,
		game_dir);
	/* Disk layout 5 (360k floppies) also records the destination path. */
	if (layout_code == 5) {
		aztec_strcpy(scenario_header_record.disk_layout_5_path, dest_path);
		aztec_strcat(scenario_header_record.disk_layout_5_path,
			disk_layout_5_path_separator);
		scenario_header_record.disk_layout_5_flag = 1;
	}
	aztec_strcpy(scenario_header_record.savegame_filename_field,
		savegame_filename);
	/* Return to the beginning before replacing the complete record. */
	aztec_lseek(scenario_header_handle, 0L, 0);
	aztec_write(scenario_header_handle, &scenario_header_record, 844);
	aztec_close(scenario_header_handle);
	return 0;
}
