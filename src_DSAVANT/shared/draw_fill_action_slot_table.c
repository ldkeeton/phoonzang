extern char *party_char[];
extern char *party_char_ext[];
extern unsigned char slot_rec_first[][350];
extern unsigned char slot_rec_action[][350];
extern unsigned char slot_rec_action_rand[][350];
extern unsigned char slot_rec_target[][350];
extern unsigned char slot_rec_target_rand[][350];
extern unsigned char slot_rec_forced[][350];
extern unsigned char slot_rec_count[][350];
extern unsigned char slot_rec_ranges[][350];
extern unsigned char action_slot_mode[];
extern unsigned char action_slot_table[];

draw_fill_action_slot_table(a, b, c, d)
int a, b, c, d;
{
	int v1, i, j, k, flag;

	if (party_char[a][0x19f] == -1)
		return;
	v1 = party_char[a][0x19f];
	flag = 0;
	if (d == -1) {
		d = 0;
		if (slot_rec_forced[v1][0] != 0xfe)
			flag = 1;
	}
	for (i = slot_rec_first[v1][d]; i < slot_rec_first[v1][d] + slot_rec_count[v1][d]; ++i) { 
		j = slot_rec_action[v1][i];
		if (d == 0 && slot_rec_forced[v1][0] > 0 && slot_rec_forced[v1][0] < 0xfe) {
			if (slot_rec_forced[v1][0] == 0xfd) {
				j = 0;
				k = 0;
			} else {
				k = slot_rec_forced[v1][0];
				if (party_char_ext[a][0xd7] == 0x47 && flag == 0) {
					j = 1;
					k = 0xb;
				}
			}
		} else {
			j += random_below(slot_rec_action_rand[v1][i]);
			k = slot_rec_target[v1][j];
			if (flag != 0)
				k += random_below(slot_rec_target_rand[v1][j]);
		}
		action_slot_mode[b * 3 + c] = d;
		action_slot_table[b * 90 + c * 30 + i * 3] = j;
		action_slot_table[b * 90 + c * 30 + i * 3 + 1] = k;
		action_slot_table[b * 90 + c * 30 + i * 3 + 2] = slot_rec_ranges[v1][k * 4] + 1;
		action_slot_table[b * 90 + c * 30 + i * 3 + 2] += random_below(slot_rec_ranges[v1][k * 4 + 1]);
	}
}
