/* queues one cell's action glyphs as overlay items, projected by nearness */

extern int cell_slot_ref[][3];			/* 3x3 cells: member*10 + item slot */
extern int cell_overlay_code[][3];		/* 3x3 base overlay sort codes */
extern int row_limit;				/* last cell row drawn (0..2) */
extern int party_member_count;
extern char *party_char[];
extern unsigned char slot_rec_target_rand[][350];
extern char slot_rec_ranges[][350];
extern unsigned char slot_rec_forced[][350];

queue_cell_action_overlay(row, col, shift, nearx, left, right, consume)
int row, col, shift, nearx, left, right, consume;
{
	int member, item, rec, variant, len, code, x, y;
	unsigned char out[12];

	out[0] = 0;
	member = cell_slot_ref[row][col] / 10;
	item = cell_slot_ref[row][col] % 10;
	if (member < 1 || member > 3 || row > row_limit)
		return;
	if (party_char[member][415] == -1)	/* 415: slot record, -1 none */
		return;
	rec = party_char[member][415];
	advance_action_slots(member, item, row, col, consume, out);
	if (out[0] == 0)			/* no actions left */
		return;
	variant = col % 2;
	len = out[0];
	if (slot_rec_forced[rec][0] != 0)
		shift = 0;
	code = slot_rec_target_rand[rec][117 + 4 * len];	/* stride 4 */
	if (code == 0)
		code = cell_overlay_code[row][col] - member;
	else					/* 10 per row, 5 for column 0 */
		code = clamp_between(code - (10 * row + (col == 0 ? 5 : 0)),
			5, 100);
	x = clamp_between(slot_rec_target_rand[rec][8 + variant % 2 + 2 * len]
		+ slot_rec_ranges[rec][159 + 2 * col], 0, right - 1);
	y = slot_rec_target_rand[rec][81 + len]
		+ slot_rec_ranges[rec][160 + 2 * col];
	/* 417: the member's item count */
	if (party_member_count == 1 && party_char[1][417] == 1 && row == 0)
		nearx = 0;			/* single item, single member */
	x += (160 - x) * nearx / 100;	/* vanishing point (160,61) */
	if (variant % 2)
		x -= (160 - slot_rec_target_rand[rec][8 + variant % 2 + 2 * len])
			* 2 * nearx / 100;
	x = clamp_between(x + shift, 0, right - 1);
	y += (61 - y) * nearx / 100;
	add_overlay_item(code, rec, x, y, left, right, variant, nearx, out);
}
