/* main: the drive checks' type strings and errors, and the disk counts. */

char source_drive_types_allowed[] = "01110";
char bad_source_drive_error[] = "BAD DRIVE SPECIFICATION - Press <RETURN>";
char source_path_not_allowed_error[] =
	"SOURCE PATH NOT ALLOWED - Press <RETURN>";
char destination_drive_types_allowed[] = "00001";
char destination_drive_blank[] = "                                 ";
char bad_destination_drive_error[] =
	"BAD DRIVE SPECIFICATION - Press <RETURN>";
char drive_conflict_warning[] =
	"WARNING! DRIVE CONFLICT WITH SOURCE - Press <RETURN>";
char bad_destination_path_error[] = "BAD DRIVE SPECIFICATION - Press <RETURN>";
char bad_ram_name_error[] = "BAD DRIVE SPECIFICATION - Press <RETURN>";
char drives_must_differ_error[] =
	"SOURCE AND DESTINATION DRIVE <MUST> DIFFER - Press <RETURN>";
char specify_new_drive_prompt[] =
	"Please specify a new SOURCE or DESTINATION Drive - Press <RETURN>";
char disk_count_360k[] = "11 disks (5.25 @360k)";
char disk_count_1200k[] = "3 disks (5.25HD @1.2meg)";
char disk_count_720k[] = "9 disks (3.5 @720k)";
char disk_count_1440k[] = "3 disks (3.5HD @1.44meg)";
char empty_install_message_prefix[] = "";
char install_requires_prefix[] = "This Install requires ";
char install_requires_suffix[] = " - Press <RETURN>";
char formatted_disk_reminder[] =
	"Make sure you have NEWLY FORMATTED disks ready - Press <RETURN>";
