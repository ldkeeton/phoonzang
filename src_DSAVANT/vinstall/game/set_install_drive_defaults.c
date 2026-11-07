/* Selects the installer drive and path defaults for a sound mode. */
extern char default_source_drive_mode_0[];
extern char default_dest_drive_mode_0[];
extern char default_source_drive_mode_1[];
extern char default_dest_path_mode_1[];
extern char default_source_drive_mode_2[];
extern char default_dest_path_mode_2[];
extern char default_source_drive_mode_3[];
extern char default_dest_path_mode_3[];
extern char default_source_drive_mode_4[];
extern char default_dest_path_mode_4[];
extern char *strcpy();

/* Sets the default source drive and destination path for a setup mode. */
set_install_drive_defaults(mode, source_drive, destination_path)
int mode;
char *source_drive;
char *destination_path;
{
	/* Modes 0 through 4 select fixed pairs; other values leave both strings
	   alone. */
	switch (mode) {
	case 0:
		strcpy(source_drive, default_source_drive_mode_0);
		strcpy(destination_path, default_dest_drive_mode_0);
		break;
	case 1:
		strcpy(source_drive, default_source_drive_mode_1);
		strcpy(destination_path, default_dest_path_mode_1);
		break;
	case 2:
		strcpy(source_drive, default_source_drive_mode_2);
		strcpy(destination_path, default_dest_path_mode_2);
		break;
	case 3:
		strcpy(source_drive, default_source_drive_mode_3);
		strcpy(destination_path, default_dest_path_mode_3);
		break;
	case 4:
		strcpy(source_drive, default_source_drive_mode_4);
		strcpy(destination_path, default_dest_path_mode_4);
		break;
	}
}
