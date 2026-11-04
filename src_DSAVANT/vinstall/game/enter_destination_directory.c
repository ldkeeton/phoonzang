/* Validate a destination drive and enter or create its directory. */
extern int drive_is_valid();
extern int show_message_wait_for_enter();
extern int aztec_chdir();
extern int aztec_exit();
extern int aztec_mkdir();
extern int aztec_strcat();
extern int aztec_strcpy();
extern char invalid_destination_drive[], invalid_drive_prompt_suffix[];
extern char directory_create_error_prefix[], directory_create_prompt_suffix[];
extern char directory_lookup_error_prefix[], directory_lookup_prompt_suffix[];

/* Validate the drive, then enter or create a destination directory. */
enter_destination_directory(drive, destination, create_if_missing)
char *drive;
char *destination;
int create_if_missing;
{
	int operation_result;
	char error_message[80];

	/* Stop if the destination drive check fails. */
	operation_result = drive_is_valid(drive);
	if (operation_result == -1) {
		aztec_strcpy(error_message, invalid_destination_drive);
		aztec_strcat(error_message, drive);
		aztec_strcat(error_message, invalid_drive_prompt_suffix);
		show_message_wait_for_enter(error_message);
		/* Exit code 4 follows the invalid-drive message. */
		aztec_exit(4);
	}

	/* Try the requested directory before optionally creating it. */
	operation_result = aztec_chdir(destination);
	if (operation_result == -1) {
		/* A value of one enables the create-and-retry path. */
		if (create_if_missing == 1) {
			operation_result = aztec_mkdir(destination);
			if (operation_result == -1) {
				aztec_strcpy(error_message, directory_create_error_prefix);
				aztec_strcat(error_message, destination);
				aztec_strcat(error_message, directory_create_prompt_suffix);
				show_message_wait_for_enter(error_message);
				/* Exit code 1 follows the create-directory message. */
				aztec_exit(1);
			}
			operation_result = aztec_chdir(destination);
		}
		if (operation_result == -1) {
			aztec_strcpy(error_message, directory_lookup_error_prefix);
			aztec_strcat(error_message, destination);
			aztec_strcat(error_message, directory_lookup_prompt_suffix);
			show_message_wait_for_enter(error_message);
			/* Exit code 2 follows the directory-lookup message. */
			aztec_exit(2);
		}
	}
}
