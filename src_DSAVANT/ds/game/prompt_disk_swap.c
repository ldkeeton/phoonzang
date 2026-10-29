/* boxed prompt to insert a disk until DISK.HDR on it checks out; optionally
   closes the data files first and reopens them afterwards */

extern char install_mode;
extern int msg_dbs_fd;
extern int data_file_fd;
extern int hotspot_hit;
extern int hotspot_rects[];
extern int disk_header[];
extern char disk_drive_name[];
long call_save_area();

prompt_disk_swap(fname, drive, close_first, reopen)
char *fname;
{
	char msg[80];
	char name[40];
	char path[40];
	int fd;
	int waiting;
	int nread;
	int found;
	int next;
	int want;
	int orig_drive;
	int x0, y0, x1, y1;
	long saved;

	x0 = 55;	/* dialog box corners */
	y0 = 143;
	x1 = 264;
	y1 = 197;
	saved = call_save_area(x0 - 1, y0 - 1, x1 + 1, y1 + 1);
	call_wait_sound(0);
	orig_drive = drive;
	aztec_strcpy(name, fname);
	if (close_first) {
		aztec_close(msg_dbs_fd);
		aztec_close(data_file_fd);
	}
	next = -2;
	do {
		found = 0;
		do {
			if (drive < 0)	/* negative drive: savegame disk */
				aztec_strcpy(msg, "INSERT SAVEGAME DISK");
			else {
				path[0] = drive + 'A';
				path[1] = 0;
				aztec_strcpy(msg, "INSERT DISK (^)");
				str_subst_char(msg, path, '^');	/* '^' -> drive letter */
			}
			draw_dialog_box(x0, y0, x1, y1);
			call_set_text_color(1, 194);
			/* centre the line; glyphs are 6 pixels wide */
			call_set_text_pos((x1 - x0 + 1 - aztec_strlen(msg) * 6) / 2 + x0, y0 + 12);
			draw_text_glyphs(msg, 0);
			aztec_strcpy(msg, "INTO DRIVE ^");
			str_subst_char(msg, name, '^');
			call_set_text_pos((x1 - x0 + 1 - aztec_strlen(msg) * 6) / 2 + x0, y0 + 18);
			draw_text_glyphs(msg, 0);
			draw_button(x0 + 68, y0 + 39, 12, 1, 1, "CONTINUE");
			set_hotspot(0, x0 + 68, y0 + 39, x0 + 140, y0 + 47, 13, 0);
			set_hotspot(1, -1, 0, 0, 0, 0, 0);
			call_show_area(x0 - 1, y0 - 1, x1 + 1, y1 + 1);
			waiting = 1;
			do {	/* until the CONTINUE button is hit */
				poll_hotspots(hotspot_rects);
				if (hotspot_hit == 1) {
					flash_button(x0 + 68, y0 + 39, 12, 1, 1);
					flash_button(x0 + 68, y0 + 39, 12, 1, 0);
					waiting = 0;
				}
			} while (waiting);
			flush_keyboard();
			call_restore_area(saved, 0);
			call_show_area(x0 - 1, y0 - 1, x1 + 1, y1 + 1);
			aztec_strcpy(path, name);
			aztec_strcat(path, "DISK.HDR");
			fd = aztec_open(path, 0);
			if (drive < 0) {
				if (fd == -1)	/* no header file counts as the savegame disk */
					found = 1;
				else {
					aztec_close(fd);
					if (install_mode == 1)
						found = 1;
				}
			} else if (fd != -1) {
				nread = aztec_read(fd, disk_header, 780);	/* whole disk header */
				/* install mode 5 numbers disks two lower */
				want = install_mode == 5 && 0 < drive ? drive - 2 : drive;
				if (nread > 0 && want == disk_header[0])
					found = 1;
				aztec_close(fd);
			}
		} while (!found);	/* re-prompt until the right disk is in */
		drive = next;
		next = -2;
		aztec_strcpy(name, disk_drive_name);
	} while (drive != -2);	/* -2: no further disk */
	call_restore_area(saved, 1);
	flush_keyboard();
	if (reopen) {
		if ((msg_dbs_fd = aztec_open(data_file_path("MSG.DBS", 0), 0)) == -1)
			release_and_exit(25);	/* exit status: MSG.DBS missing */
		if ((data_file_fd = aztec_open(data_file_path("SCENARIO.DBS", orig_drive == 0
			? 0 : 1), 0)) == -1)
			release_and_exit(26);	/* exit status: SCENARIO.DBS missing */
	}
}
