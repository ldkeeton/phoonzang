/* Queues the selected NPC cell's action glyph as a positioned overlay. */
#include "structs/slotrec.h"

extern int cell_slot_ref[3][3];
extern int npc_cell_overlay_code[3][3];
extern struct slot_rec slot_recs[];
extern unsigned char picture_slot_number[];
extern int npc_record_index, npc_action_state;

extern int build_npc_action_overlay();
extern int clamp_between();
extern int random_below();
extern int add_overlay_item();

queue_npc_cell_overlay(row, column, clip_offset, scale, clip_left,
		       display_height, roll_adjust)
int row;
int column;
int clip_offset;
int scale;
int clip_left;
int display_height;
int roll_adjust;
{
	int slot_index;
	int variant;
	int glyph_count;
	int overlay_code;
	int x;
	int y;
	unsigned char glyphs[12];

	glyphs[0] = 0;
	slot_index = cell_slot_ref[row][column];
	if (slot_index == 0)
		return;
	build_npc_action_overlay(slot_index, row, column, roll_adjust, glyphs);
	if (glyphs[0] == 0)
		return;
	variant = npc_record_index == 62 && npc_action_state == 18 ?
		1 : column % 2;
	glyph_count = glyphs[0];
	if (slot_recs[slot_index].forced != 0)
		clip_offset = 0;
	overlay_code = slot_recs[slot_index].range[glyph_count].sort;
	if (overlay_code == 0)
		overlay_code = npc_cell_overlay_code[row][column];
	else
		overlay_code = clamp_between(overlay_code -
			(10 * row + (column != 0 ? 5 : 0)), 5, 100);
	x = clamp_between(slot_recs[slot_index].glyph_x[glyph_count][variant % 2] +
		slot_recs[slot_index].cell_ofs[0][column][0], 0,
		display_height - 1);
	y = slot_recs[slot_index].glyph_y[glyph_count] +
		slot_recs[slot_index].cell_ofs[0][column][1];
	if (picture_slot_number[slot_index] == 24 && npc_action_state == 1 &&
		glyphs[0] == 4) {
		x += random_below(3) - 1;
		y += random_below(2);
	}
	x += (160 - x) * scale / 100;
	if (variant % 2 != 0)
		x -= (160 - slot_recs[slot_index].glyph_x[glyph_count][variant % 2]) *
			2 * scale / 100;
	x = clamp_between(x + clip_offset, 0, display_height - 1);
	y += (61 - y) * scale / 100;
	add_overlay_item(overlay_code, slot_index, x, y, clip_left,
		display_height, variant, scale, glyphs);
}
