/* queues the current cell effect glyph as an overlay item */

#include "structs/slotrec.h"

extern int cell_effect_frame[3][3];
extern int effect_frame_phase;
extern int pending_effect_sound;
extern int view_depth_scale[];
extern struct slot_rec slot_recs[];

queue_cell_effect_overlay(row, col)
int row, col;
{
	int color, variant, depth, glyph;
	char effect_text[12];
	int code;

	if (cell_effect_frame[row][col] < 0
			|| cell_effect_frame[row][col] > 6) {
		cell_effect_frame[row][col] = -1;
		return;
	}
	if (effect_frame_phase == 1 && cell_effect_frame[row][col] == 1)
		pending_effect_sound = 1;
	color = 7;
	variant = 0;
	depth = 100 - view_depth_scale[row];
	glyph = cell_effect_frame[row][col] + 1;
	effect_text[0] = glyph;
	effect_text[1] = 0;
	code = row == 0 ? 32 : (row == 1 ? 22 : 12);
	if (col == 0)
		code -= 5;
	add_overlay_item(code, color,
		slot_recs[color].cell_ofs[row][col][0]
			+ slot_recs[color].glyph_x[glyph][0],
		slot_recs[color].cell_ofs[row][col][1]
			+ slot_recs[color].glyph_y[glyph],
		72, 248, variant, depth, effect_text);
	if (effect_frame_phase == 0)
		++cell_effect_frame[row][col];
}
