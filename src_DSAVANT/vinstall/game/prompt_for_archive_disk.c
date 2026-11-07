/* Ask for a disk and wait for the requested archive to become available. */
extern char insert_disk_message_prefix[];
extern char destination_disk_label[];
extern char source_disk_label[];
extern char disk_number_label_prefix[];
extern char disk_drive_label_prefix[];
extern char press_return_prompt_suffix[];
extern int console_bell();
extern int show_message_wait_for_enter();
extern int strcat();
extern int strcpy();
extern int strlen();
extern int open();
extern int close();

prompt_for_archive_disk(drive_name, archive_directory, disk_number,
	archive_name)
char *drive_name;
char *archive_directory;
int disk_number;
char *archive_name;
{
	char disk_letter[2];
	char archive_path[80];
	char message[80];
	int file_handle;

	strcpy(message, insert_disk_message_prefix);
	if (disk_number < 0) {
		strcat(message, destination_disk_label);
		disk_number = 0 - disk_number;
	} else {
		strcat(message, source_disk_label);
		console_bell();
	}
	strcat(message, disk_number_label_prefix);
	/* Disk numbers are shown as letters starting with A. */
	disk_letter[0] = disk_number + 64;
	disk_letter[1] = 0;
	strcat(message, disk_letter);
	strcat(message, disk_drive_label_prefix);
	strcat(message, drive_name);
	strcat(message, press_return_prompt_suffix);

	if (strlen(archive_name) > 0) {
		strcpy(archive_path, archive_directory);
		strcat(archive_path, archive_name);
		/* Keep prompting until the named archive can be opened. */
		do {
			show_message_wait_for_enter(message);
			file_handle = open(archive_path, 0);
		} while (file_handle == -1);
		close(file_handle);
	} else {
		show_message_wait_for_enter(message);
	}
}
