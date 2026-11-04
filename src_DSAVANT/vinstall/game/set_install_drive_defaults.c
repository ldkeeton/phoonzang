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
extern char *aztec_strcpy();

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
		aztec_strcpy(source_drive, default_source_drive_mode_0);
		aztec_strcpy(destination_path, default_dest_drive_mode_0);
		break;
	case 1:
		aztec_strcpy(source_drive, default_source_drive_mode_1);
		aztec_strcpy(destination_path, default_dest_path_mode_1);
		break;
	case 2:
		aztec_strcpy(source_drive, default_source_drive_mode_2);
		aztec_strcpy(destination_path, default_dest_path_mode_2);
		break;
	case 3:
		aztec_strcpy(source_drive, default_source_drive_mode_3);
		aztec_strcpy(destination_path, default_dest_path_mode_3);
		break;
	case 4:
		aztec_strcpy(source_drive, default_source_drive_mode_4);
		aztec_strcpy(destination_path, default_dest_path_mode_4);
		break;
	}
}
