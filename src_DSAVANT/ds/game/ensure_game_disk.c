/* Select the disk number and prompt for the matching data disk when needed. */

extern unsigned char install_mode;
extern int disk_header[];
extern char data_path_prefixes[][20];
extern copy_through_char(), prompt_disk_swap(), call_show_area();

ensure_game_disk()
{
	char disk_path[20];
	int disk_number;
	int header_number;

	/* The initial disk number is zero; modes 0 and 1 also select disk zero. */
	disk_number = 0;
	switch (install_mode) {
	case 0:
	case 1:
		disk_number = 0;
	}

	/* Mode 5 stores numbered disks two lower when the number is positive. */
	header_number = install_mode == 5 && disk_number > 0
		? disk_number - 2 : disk_number;

	if (header_number != disk_header[0]) {
		/* Keep the selected drive prefix through its colon. */
		copy_through_char(disk_path, data_path_prefixes, ':');
		/* Drive 0; close the data files first and reopen them after the swap. */
		prompt_disk_swap(disk_path, disk_number, 1, 1);
		/* Redraw the full 320-by-200 screen after the disk prompt. */
		call_show_area(0, 0, 319, 199);
	}
}
