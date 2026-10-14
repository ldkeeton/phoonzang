api_idx_000c_2(x, y, row)
int x, y, row;
{
	int i;
	char buf[10];

	for (i = 0; i < 6; ++i) {
		buf[0] = ((char *)0x1d4)[20 * i + ((int *)0x830e)[i] * 2];
		buf[1] = 0;
		thunk_28(2, ((int *)0x1a4)[row * 6 + i] + x,
			((int *)0x1bc)[row * 6 + i] + y,
			0, 0x13f, 0, 0xc7, 0, buf, 0, 0);
	}
}
