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
	if (mode == 6)
		mode = 4;
	aztec_strcpy(base, "SCORE00");
	base[5] = num / 10 + '0';
	base[6] = num % 10 + '0';
	aztec_strcpy(path, base);
	aztec_strcat(path, score_ext_csf);
	if ((fd_csf = aztec_open(data_file_path(path, 1), 0)) == -1)
		fatal_error(15);
	aztec_strcpy(path, base);
	if (mode == 5)
		aztec_strcat(path, score_ext_pbl);
	else
		aztec_strcat(path, score_ext_pba);
	if ((fd_pic = aztec_open(data_file_path(path, 1), 0)) == -1)
		fatal_error(16);
	err = gfx_load_score(fd_csf, fd_pic, mode, arg);
	if (err)
		fatal_error(17);
	aztec_close(fd_csf);
	aztec_close(fd_pic);
	loaded_score_num = num;
}

char score_ext_csf[] = ".CSF";
char score_ext_pbl[] = ".PBL";
char score_ext_pba[] = ".PBA";
