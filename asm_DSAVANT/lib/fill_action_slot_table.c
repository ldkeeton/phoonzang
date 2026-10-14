extern char *dseg_8482[];
extern char *dseg_8490[];
extern unsigned char dseg_6a1a[][350];
extern unsigned char dseg_6a22[][350];
extern unsigned char dseg_6a2c[][350];
extern unsigned char dseg_6a40[][350];
extern unsigned char dseg_6a4a[][350];
extern unsigned char dseg_6b75[][350];
extern unsigned char dseg_6a1e[][350];
extern unsigned char dseg_6ac1[][350];
extern unsigned char dseg_8430[];
extern unsigned char dseg_8322[];

fill_action_slot_table(a, b, c, d)
int a, b, c, d;
{
	int v1, i, j, k, flag;

	if (dseg_8482[a][0x19f] == -1)
		return;
	v1 = dseg_8482[a][0x19f];
	flag = 0;
	if (d == -1) {
		d = 0;
		if (dseg_6b75[v1][0] != 0xfe)
			flag = 1;
	}
	for (i = dseg_6a1a[v1][d]; i < dseg_6a1a[v1][d] + dseg_6a1e[v1][d]; ++i) { 
		j = dseg_6a22[v1][i];
		if (d == 0 && dseg_6b75[v1][0] > 0 && dseg_6b75[v1][0] < 0xfe) {
			if (dseg_6b75[v1][0] == 0xfd) {
				j = 0;
				k = 0;
			} else {
				k = dseg_6b75[v1][0];
				if (dseg_8490[a][0xd7] == 0x47 && flag == 0) {
					j = 1;
					k = 0xb;
				}
			}
		} else {
			j += ds_app_GGUI(dseg_6a2c[v1][i]);
			k = dseg_6a40[v1][j];
			if (flag != 0)
				k += ds_app_GGUI(dseg_6a4a[v1][j]);
		}
		dseg_8430[b * 3 + c] = d;
		dseg_8322[b * 90 + c * 30 + i * 3] = j;
		dseg_8322[b * 90 + c * 30 + i * 3 + 1] = k;
		dseg_8322[b * 90 + c * 30 + i * 3 + 2] = dseg_6ac1[v1][k * 4] + 1;
		dseg_8322[b * 90 + c * 30 + i * 3 + 2] += ds_app_GGUI(dseg_6ac1[v1][k * 4 + 1]);
	}
}
