/* Draw one item slot label: its glyph, its name, and a level when the
 * slot's overlay kind is 1. */
#include "structs/pcrec.h"

extern int call_set_text_pos(), draw_font_glyph();
extern int draw_split_two_line_text();
extern int call_set_text_color(), draw_number_field();
extern unsigned char cell_overlay_code[];

draw_item_slot_label(member_index, cell_index, slot, label, color)
int member_index, cell_index, color;
struct pc_item_slot *slot;
char *label;
{
	int x, y;

	/* Two columns of five cells: 13 glyphs of 6 pixels, plus a gap.  The
	 * comma keeps cc from folding 13 * 6 (the original emits both imuls). */
	x = (0, cell_index / 5 * 13) * 6 + cell_index / 5 + 4;
	/* Each row is two 6-pixel lines plus a gap, starting at y=114. */
	y = cell_index % 5 * 2 * 6 + cell_index % 5 * 2 + 114;
	call_set_text_pos(x, y);
	draw_font_glyph(slot->glyph, 4);
	draw_split_two_line_text(label, x + 14, y, color);

	/* +0x58: overlay kind 1 also shows the slot's level. */
	if (cell_overlay_code[slot->overlay + 88] == 1) {
		call_set_text_pos(x + 56, y + 6);
		call_set_text_color(2, 0);
		draw_number_field(slot->level, 3, 0);
	}
}
