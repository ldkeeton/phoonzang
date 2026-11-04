/* Text the installer's helper routines print, grouped by routine. */

/* console_bell */
char bell_character_format[] = "%c";

/* put_int_right_aligned */
char single_space_text[] = " ";

/* put_long_right_aligned */
char long_alignment_space[] = " ";

/* prompt_int_at */
char int_prompt_clear_spaces[] = "   ";

/* show_message_wait_for_enter */
char message_line_blank_before[] =
	"                                                                      "
	"         ";
char message_line_blank_after[] =
	"                                                                      "
	"         ";

/* update_scenario_header */
char scenario_header_name[] = "SCENARIO.HDR";
char header_open_error_prefix[] = "SYSTEM ERROR: UNABLE TO OPEN ";
char header_open_error_suffix[] = " - Press <RETURN>";
char install_version_mismatch_error[] =
	"*ERROR* INSTALL VERSION MISMATCH - Press <RETURN>";
char disk_layout_5_path_separator[] = "\\";
char savegame_filename[] = "SAVEGAME.DBS";

/* display_centered_command_line */
char command_line_blank_text[] =
	"                                                                      "
	"         ";

/* prompt_for_archive_disk */
char insert_disk_message_prefix[] = "Please Insert ";
char destination_disk_label[] = "DESTINATION";
char source_disk_label[] = "*SOURCE*";
char disk_number_label_prefix[] = " Disk (";
char disk_drive_label_prefix[] = ") Into Drive ";
char press_return_prompt_suffix[] = " - Press <RETURN>";

/* run_pkunzip_archive */
char pkunzip_exe_suffix[] = "pkunzip.exe";
char pkunzip_argv0[] = "pkunzip.exe";
char pkunzip_command_prefix[] = "pkunzip.exe ";
char command_argument_separator[] = " ";
char null_device_name[] = "nul";
char stream_append_mode[] = "a";
char console_device_name[] = "con";
char console_stream_append_mode[] = "a";
char unzip_failure_prefix[] = "ERROR: UNABLE TO UNZIP -> ";
char unzip_failure_suffix[] = " - Press <RETURN>";

/* queue_pkunzip_filespec */
char empty_filespec_list[] = "";
char filespec_separator[] = " ";

/* set_install_drive_defaults */
char default_source_drive_mode_0[] = "A:";
char default_dest_drive_mode_0[] = "B:";
char default_source_drive_mode_1[] = "A:";
char default_dest_path_mode_1[] = "";
char default_source_drive_mode_2[] = "A:";
char default_dest_path_mode_2[] = "";
char default_source_drive_mode_3[] = "A:";
char default_dest_path_mode_3[] = "";
char default_source_drive_mode_4[] = "C:";
char default_dest_path_mode_4[] = "DSAVANT";

/* enter_destination_directory */
char invalid_destination_drive[] = "ERROR: INVALID DESTINATION DRIVE -> (";
char invalid_drive_prompt_suffix[] = ") - Press <RETURN>";
char directory_create_error_prefix[] = "ERROR: UNABLE TO CREATE DIRECTORY -> ";
char directory_create_prompt_suffix[] = " - Press <RETURN>";
char directory_lookup_error_prefix[] = "ERROR: UNABLE TO LOCATE DIRECTORY -> ";
char directory_lookup_prompt_suffix[] = " - Press <RETURN>";
