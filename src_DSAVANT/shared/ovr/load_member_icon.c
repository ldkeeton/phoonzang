/* Loads a member portrait glyph. */
extern char portrait_data_filename[];
extern char *data_file_path();
extern int strcpy(), call_wait_sound(), open(), close();
extern int release_and_exit(), read_font_glyph();

/* Read the portrait glyph into icon_seg:icon_off from font file 5. */
load_member_icon(icon_off, icon_seg)
int icon_off, icon_seg;
{
	int fd;
	char name[20];

	strcpy(name, portrait_data_filename);
	call_wait_sound(0);
	fd = open(data_file_path(name, 0), 0);	/* Read-only mode. */
	if (fd == -1)
		release_and_exit(19);
	read_font_glyph(fd, 5, icon_off, icon_seg);
	close(fd);
}
