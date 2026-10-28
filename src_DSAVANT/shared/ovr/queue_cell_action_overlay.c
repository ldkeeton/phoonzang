/* queues one cell's action glyphs as overlay items, projected by nearness */

#include "structs/member.h"
#include "structs/slotrec.h"

extern int cell_slot_ref[][3];			/* 3x3 cells: member*10 + item slot */
extern int cell_overlay_code[][3];		/* 3x3 base overlay sort codes */
extern int row_limit;				/* last cell row drawn (0..2) */
extern int party_member_count;
extern struct member_rec *party_char[];
extern struct slot_rec slot_recs[];

queue_cell_action_overlay(row, col, shift, nearx, left, right, consume)
int row, col, shift, nearx, left, right, consume;
{
	int member, item, rec, variant, glyph, code, x, y;
	unsigned char out[12];

	out[0] = 0;
	member = cell_slot_ref[row][col] / 10;
	item = cell_slot_ref[row][col] % 10;
	if (member < 1 || member > 3 || row > row_limit)
		return;
	if (party_char[member]->slot == -1)	/* no slot record */
		return;
	rec = party_char[member]->slot;
	advance_action_slots(member, item, row, col, consume, out);
	if (out[0] == 0)			/* no actions left */
		return;
	variant = col % 2;
	glyph = out[0];
	if (slot_recs[rec].forced[0] != 0)
		shift = 0;
	code = slot_recs[rec].range[glyph].sort;
	if (code == 0)
		code = cell_overlay_code[row][col] - member;
	else					/* 10 per row, 5 for column 0 */
		code = clamp_between(code - (10 * row + (col == 0 ? 5 : 0)),
			5, 100);
	x = clamp_between(slot_recs[rec].glyph_x[glyph][variant % 2]
		+ slot_recs[rec].cell_ofs[col][0], 0, right - 1);
	y = slot_recs[rec].glyph_y[glyph]
		+ slot_recs[rec].cell_ofs[col][1];
	if (party_member_count == 1 && party_char[1]->item_count == 1 && row == 0)
		nearx = 0;			/* single item, single member */
	x += (160 - x) * nearx / 100;	/* vanishing point (160,61) */
	if (variant % 2)
		x -= (160 - slot_recs[rec].glyph_x[glyph][variant % 2])
			* 2 * nearx / 100;
	x = clamp_between(x + shift, 0, right - 1);
	y += (61 - y) * nearx / 100;
	add_overlay_item(code, rec, x, y, left, right, variant, nearx, out);
}
