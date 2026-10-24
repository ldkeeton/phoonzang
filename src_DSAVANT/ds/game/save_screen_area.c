/* saves the screen rectangle into the last free slot, picking store 1, 2 or a
   disk file (kind 3) by free space; returns the slot */

extern int saved_screen_kind[];
extern struct {
	char name[20];
} saved_screen_file[];
extern long saved_screen_ref[];
extern char screen_store_1_enabled;
extern char screen_store_disk_enabled;
extern unsigned char screen_store_drive;
long gfx_get_free_space();
long gfx_cache_area();

save_screen_area(x1, y1, x2, y2, name)
char *name;
{
	int i, slot, drive;
	long need;
	int fd;

	slot = -1;
	for (i = 0; i < 5; i++)	/* 5 slots; the last free one wins */
		if (saved_screen_kind[i] == -1)
			slot = i;
	if (slot == -1)
		release_and_exit(22);
	saved_screen_kind[slot] = 3;	/* default: file in the current dir */
	saved_screen_file[slot].name[0] = 0;
	need = (x2 - x1 + 1) * (long)(y2 - y1 + 1) + 128;	/* pixels + 128 */
	if (screen_store_1_enabled == 1 && need < gfx_get_free_space(1, 0))
		saved_screen_kind[slot] = 1;
	else if (gfx_get_free_space(2, 0) > need)
		saved_screen_kind[slot] = 2;
	else if (screen_store_disk_enabled == 1) {
		drive = screen_store_drive - 64;	/* 'A' -> 1 */
		if (drive >= 1 && drive <= 26 && gfx_get_free_space(3, drive) > need) {
			saved_screen_kind[slot] = 3;
			saved_screen_file[slot].name[0] = drive + 64;
			saved_screen_file[slot].name[1] = ':';
			saved_screen_file[slot].name[2] = '\\';
			saved_screen_file[slot].name[3] = 0;
		}
	}
	aztec_strcat(saved_screen_file[slot].name, name);
	if (saved_screen_kind[slot] == 3) {
		/* 0x301: O_WRONLY|O_CREAT|O_TRUNC */
		if ((fd = aztec_open(saved_screen_file[slot].name, 769)) == -1)
			release_and_exit(23);
	} else
		fd = 0;	/* in-memory save: driver ignores fd */
	saved_screen_ref[slot] = gfx_cache_area(x1, y1, x2, y2,
	    saved_screen_kind[slot], fd);
	if (saved_screen_kind[slot] == 3)
		aztec_close(fd);
	return slot;
}
