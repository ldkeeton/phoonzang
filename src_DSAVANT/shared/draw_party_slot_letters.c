extern char dseg_01d4[];
extern int bss_830e[];
extern int dseg_01a4[][6];
extern int dseg_01bc[][6];

draw_party_slot_letters(x, y, row)
int x, y, row;
{
	int i;
	char buf[10];

	for (i = 0; i < 6; ++i) {
		buf[0] = dseg_01d4[20 * i + bss_830e[i] * 2];
		buf[1] = 0;
		thunk_28(2, dseg_01a4[row][i] + x,
			dseg_01bc[row][i] + y,
			0, 0x13f, 0, 0xc7, 0, buf, 0, 0);
	}
}
