/* Check whether an install filename matches a letter or the wildcard. */
extern int aztec_strcpy();
extern int aztec_strlen();

struct install_file_record {
	char *disk_file_names[3];
		/* offsets 0x00, 0x02, 0x04 from DS 0x02ad */
	char unused_record_tail[4];
		/* offsets 0x06..0x09, preserving 10-byte stride */
};

extern struct install_file_record dseg_02ad[];

install_file_matches_letter(file_number, disk_format, letter_index)
int file_number;
int disk_format;
int letter_index;
{
	int character_index;
	char file_name[80];
	/* This unreferenced local preserves the 162-byte compiler frame. */
	char unused_path_buffer[80];

	/* Select this file's name for the requested disk format. */
	aztec_strcpy(file_name,
		dseg_02ad[file_number].disk_file_names[disk_format]);
	character_index = 0;
	goto check_length;

scan_name:
	/* A wildcard or matching letter makes this filename eligible. */
	if (file_name[character_index] == '*')
		goto matched;
	/* Compare the zero-based letter index after subtracting ASCII 'A'. */
	if (file_name[character_index] - 'A' != letter_index)
		goto next_character;
matched:
	return 1;
next_character:
	++character_index;
check_length:
	/* Repeat while the current character is inside the filename. */
	if (aztec_strlen(file_name) > character_index)
		goto scan_name;
	return 0;
}
