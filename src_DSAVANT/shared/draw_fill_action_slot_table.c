extern char *bss_8482[];
extern char *bss_8490[];
extern unsigned char bss_6a1a[][350];
extern unsigned char bss_6a22[][350];
extern unsigned char bss_6a2c[][350];
extern unsigned char bss_6a40[][350];
extern unsigned char bss_6a4a[][350];
extern unsigned char bss_6b75[][350];
extern unsigned char bss_6a1e[][350];
extern unsigned char bss_6ac1[][350];
extern unsigned char bss_8430[];
extern unsigned char bss_8322[];

draw_fill_action_slot_table(a, b, c, d)
int a, b, c, d;
{
	int v1, i, j, k, flag;

	if (bss_8482[a][0x19f] == -1)
		return;
	v1 = bss_8482[a][0x19f];
	flag = 0;
	if (d == -1) {
		d = 0;
		if (bss_6b75[v1][0] != 0xfe)
			flag = 1;
	}
	for (i = bss_6a1a[v1][d]; i < bss_6a1a[v1][d] + bss_6a1e[v1][d]; ++i) { 
		j = bss_6a22[v1][i];
		if (d == 0 && bss_6b75[v1][0] > 0 && bss_6b75[v1][0] < 0xfe) {
			if (bss_6b75[v1][0] == 0xfd) {
				j = 0;
				k = 0;
			} else {
				k = bss_6b75[v1][0];
				if (bss_8490[a][0xd7] == 0x47 && flag == 0) {
					j = 1;
					k = 0xb;
				}
			}
		} else {
			j += ds_app_PUNN(bss_6a2c[v1][i]);
			k = bss_6a40[v1][j];
			if (flag != 0)
				k += ds_app_PUNN(bss_6a4a[v1][j]);
		}
		bss_8430[b * 3 + c] = d;
		bss_8322[b * 90 + c * 30 + i * 3] = j;
		bss_8322[b * 90 + c * 30 + i * 3 + 1] = k;
		bss_8322[b * 90 + c * 30 + i * 3 + 2] = bss_6ac1[v1][k * 4] + 1;
		bss_8322[b * 90 + c * 30 + i * 3 + 2] += ds_app_PUNN(bss_6ac1[v1][k * 4 + 1]);
	}
}
