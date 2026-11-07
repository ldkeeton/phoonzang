/* disk prompts and the monster, sound and score file loaders: one module, as
   their string literals run together in the data segment with no alignment
   gap */

extern unsigned char install_mode;
extern int disk_header[];
extern int msg_dbs_fd;
extern int data_file_fd;
extern int hotspot_hit;
extern int hotspot_rects[];
extern char disk_drive_name[];
long call_save_area();

/* boxed prompt to insert a disk until DISK.HDR on it checks out; optionally
   closes the data files first and reopens them afterwards */
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
	strcpy(name, fname);
	if (close_first) {
		close(msg_dbs_fd);
		close(data_file_fd);
	}
	next = -2;
	do {
		found = 0;
		do {
			if (drive < 0)	/* negative drive: savegame disk */
				strcpy(msg, "INSERT SAVEGAME DISK");
			else {
				path[0] = drive + 'A';
				path[1] = 0;
				strcpy(msg, "INSERT DISK (^)");
				str_subst_char(msg, path, '^');	/* '^' -> drive letter */
			}
			draw_dialog_box(x0, y0, x1, y1);
			call_set_text_color(1, 194);
			/* centre the line; glyphs are 6 pixels wide */
			call_set_text_pos((x1 - x0 + 1 - strlen(msg) * 6) / 2 + x0, y0 + 12);
			draw_text_glyphs(msg, 0);
			strcpy(msg, "INTO DRIVE ^");
			str_subst_char(msg, name, '^');
			call_set_text_pos((x1 - x0 + 1 - strlen(msg) * 6) / 2 + x0, y0 + 18);
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
			strcpy(path, name);
			strcat(path, "DISK.HDR");
			fd = open(path, 0);
			if (drive < 0) {
				if (fd == -1)	/* no header file counts as the savegame disk */
					found = 1;
				else {
					close(fd);
					if (install_mode == 1)
						found = 1;
				}
			} else if (fd != -1) {
				nread = read(fd, disk_header, 780);	/* whole disk header */
				/* install mode 5 numbers disks two lower */
				want = install_mode == 5 && 0 < drive ? drive - 2 : drive;
				if (nread > 0 && want == disk_header[0])
					found = 1;
				close(fd);
			}
		} while (!found);	/* re-prompt until the right disk is in */
		drive = next;
		next = -2;
		strcpy(name, disk_drive_name);
	} while (drive != -2);	/* -2: no further disk */
	call_restore_area(saved, 1);
	flush_keyboard();
	if (reopen) {
		if ((msg_dbs_fd = open(data_file_path("MSG.DBS", 0), 0)) == -1)
			release_and_exit(25);	/* exit status: MSG.DBS missing */
		if ((data_file_fd = open(data_file_path("SCENARIO.DBS", orig_drive == 0
			? 0 : 1), 0)) == -1)
			release_and_exit(26);	/* exit status: SCENARIO.DBS missing */
	}
}

extern char data_path_prefixes[][20];
extern copy_through_char(), call_show_area();

/* Select the disk number and prompt for the matching data disk when needed. */
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

extern unsigned char picture_slot_number[], picture_slot_used[];
extern unsigned char slot_recs[][350];	/* 350-byte monster records */
extern char monster_pic_name[];

/* loads monster picture record num into picture slot n unless that slot
   already holds num */
load_monster_picture(num, n)
{
	int unused;
	int fd;
	char name[20];

	call_wait_sound(0);
	if (picture_slot_number[n] != num) {
		data_record_io(8, slot_recs[n], num, 0);	/* type 8: monsters */
		strcpy(name, monster_pic_name);			/* "MON00.PIC" */
		name[3] = num / 10 + '0';			/* patch the two digits */
		name[4] = num % 10 + '0';
		if ((fd = open(data_file_path(name, 1), 0)) == -1)
			release_and_exit(18);
		call_load_picture(fd, n);
		close(fd);
		picture_slot_number[n] = num;	/* slot's record number */
		picture_slot_used[n] = 1;	/* in use */
	}
}

char monster_pic_name[] = "MON00.PIC";

/* waits on the sound channel, then frees the given sound */
wait_and_free_sound(snd)
int snd;
{
	call_wait_sound(1);
	call_free_sound(snd);
}

#include "structs/sndslot.h"

extern struct sound_slot_info_rec sound_slot_info[];

/* fetches sound record num into slot n, then loads SOUNDnn.SND into the
   driver; a zero-size record redirects to another sound number, and flag
   skips the load in that case */
load_sound_file(num, n, flag)
{
	int load;
	int fd;
	char name[20];

	call_wait_sound(0);
	data_record_io(9, &sound_slot_info[n], num, 0);
	load = 1;
	if (sound_slot_info[n].size.full_size == 0) {
		num = sound_slot_info[n].alias_num;
		load = flag ? 0 : 1;
	}
	if (load) {
		strcpy(name, "SOUND00.SND");
		/* patch the two "00" digits with num */
		name[5] = num / 10 + '0';
		name[6] = num % 10 + '0';
		if ((fd = open(data_file_path(name, 1), 0)) == -1)
			release_and_exit(11);
		if (call_load_sound(fd, n))
			release_and_exit(12);
		close(fd);
	}
}

extern int loaded_sound_id;

/* Replace the loaded sound only when the requested ID changes. */
ensure_sound_loaded(sound_id)
int sound_id;
{
	if (loaded_sound_id != sound_id) {
		call_wait_sound(1);
		if (loaded_sound_id != -1) /* -1 means no sound is loaded */
			wait_and_free_sound(16); /* reuse sound slot 16 */
		loaded_sound_id = sound_id;
		load_sound_file(sound_id, 16, 0);
	}
}

extern unsigned char video_mode;
extern int loaded_score_num;
extern char score_ext_csf[], score_ext_pbl[], score_ext_pba[];

/* opens SCOREnn.CSF and its picture file for the current video mode, hands
   both to the driver, and remembers num as the loaded score */
load_score_files(num, arg)
{
	int fd_csf;
	int fd_pic;
	char path[80];
	char base[80];
	int err;
	int mode;

	mode = video_mode;
	if (mode == 6)	/* mode 6 shares mode 4's score data */
		mode = 4;
	strcpy(base, "SCORE00");
	/* patch the two "00" digits with num */
	base[5] = num / 10 + '0';
	base[6] = num % 10 + '0';
	strcpy(path, base);
	strcat(path, score_ext_csf);
	if ((fd_csf = open(data_file_path(path, 1), 0)) == -1)
		release_and_exit(15);
	strcpy(path, base);
	if (mode == 5)
		strcat(path, score_ext_pbl);
	else
		strcat(path, score_ext_pba);
	if ((fd_pic = open(data_file_path(path, 1), 0)) == -1)
		release_and_exit(16);
	err = call_load_score(fd_csf, fd_pic, mode, arg);
	if (err)
		release_and_exit(17);
	close(fd_csf);
	close(fd_pic);
	loaded_score_num = num;
}

char score_ext_csf[] = ".CSF";
char score_ext_pbl[] = ".PBL";
char score_ext_pba[] = ".PBA";
