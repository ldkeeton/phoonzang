/* opens SCOREnn.CSF and its picture file for the current video mode, hands
   both to the driver, and remembers num as the loaded score */

extern unsigned char video_mode;
extern int loaded_score_num;
extern char score_ext_csf[], score_ext_pbl[], score_ext_pba[];

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
	aztec_strcpy(base, "SCORE00");
	/* patch the two "00" digits with num */
	base[5] = num / 10 + '0';
	base[6] = num % 10 + '0';
	aztec_strcpy(path, base);
	aztec_strcat(path, score_ext_csf);
	if ((fd_csf = aztec_open(data_file_path(path, 1), 0)) == -1)
		release_and_exit(15);
	aztec_strcpy(path, base);
	if (mode == 5)
		aztec_strcat(path, score_ext_pbl);
	else
		aztec_strcat(path, score_ext_pba);
	if ((fd_pic = aztec_open(data_file_path(path, 1), 0)) == -1)
		release_and_exit(16);
	err = call_load_score(fd_csf, fd_pic, mode, arg);
	if (err)
		release_and_exit(17);
	aztec_close(fd_csf);
	aztec_close(fd_pic);
	loaded_score_num = num;
}

char score_ext_csf[] = ".CSF";
char score_ext_pbl[] = ".PBL";
char score_ext_pba[] = ".PBA";
