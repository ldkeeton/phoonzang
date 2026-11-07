/* Check whether an install filename matches a letter or the wildcard. */
extern int strcpy();
extern int strlen();

#include "structs/instfile.h"

extern struct install_file install_files[];

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
	strcpy(file_name, install_files[file_number].letters[disk_format]);
	/* A wildcard or the letter (as a zero-based index from 'A') makes this
	   filename eligible. */
	for (character_index = 0; strlen(file_name) > character_index;
	    ++character_index)
		if (file_name[character_index] == '*' ||
		    file_name[character_index] - 'A' == letter_index)
			return 1;
	return 0;
}
