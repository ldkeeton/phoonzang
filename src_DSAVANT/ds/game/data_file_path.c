/* builds "<prefix>name" in data_path_buf; the second prefix is used only when
   alt == 1 and install_mode is 5, otherwise the first */

extern char install_mode;
extern char data_path_prefixes[][20];
extern char data_path_buf[];

char *
data_file_path(name, alt)
char *name;
{
	alt = install_mode == 5 && alt == 1 ? 1 : 0;
	/* keep the prefix only through its drive colon */
	copy_through_char(data_path_buf, data_path_prefixes[alt], ':');
	aztec_strcat(data_path_buf, name);
	return data_path_buf;
}
