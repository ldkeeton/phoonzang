/* Animate the maze view while a region map piece changes. */
#include "structs/viewx.h"
#include "structs/slotrec.h"
extern struct slot_rec slot_recs[];
extern struct view_x_grid region_view_x_offsets;
extern struct view_x_grid maze_cell_x_offset;
extern int party_world_x, party_world_y, party_facing, party_status_frame;
extern int draw_first_person_maze_view();
extern int call_draw_text();
extern int call_draw_maze_piece();
extern int call_show_area();
extern int play_sound_effect();

animate_region_view_transition(direction, depth, map_piece, sound_flag)
int direction;
int depth;
int map_piece;
int sound_flag;
{
	int animation_frame;
	int cell_y;
	int horizontal_offset;
	int vertical_step;
	int side;
	int glyph_index;
	int cell_offset;
	char text[10];

	glyph_index = depth + 1;
	cell_y = slot_recs[5].glyph_y[glyph_index] - 1;
	cell_offset = region_view_x_offsets.cell_x[1][depth] * 100 / 10;
	if (direction != 0) {
		vertical_step = 0 - cell_offset;
		horizontal_offset = 0;
	} else {
		vertical_step = cell_offset;
		horizontal_offset = 0 - region_view_x_offsets.cell_x[1][depth];
	}
	side = (party_world_x + party_world_y + party_facing + depth) % 2;
	for (animation_frame = 1; animation_frame <= 10; animation_frame++) {
		/* Flip the status portrait before redrawing the maze. */
		party_status_frame = (party_status_frame + 1) % 2;
		draw_first_person_maze_view();
		text[0] = glyph_index;
		text[1] = 0;
		call_draw_text(5,
			maze_cell_x_offset.cell_x[depth][map_piece] +
				slot_recs[5].glyph_x[glyph_index][side],
			animation_frame * vertical_step / 100 +
			 slot_recs[5].glyph_y[glyph_index] +
			horizontal_offset,
			72, 248, cell_y, 144, side, text, 0, 0);
		call_draw_maze_piece(0,
			region_view_x_offsets.cell_x[0][map_piece] + depth, 2,
			(side == 0) ? -1 :
				region_view_x_offsets.cell_x[0][map_piece] + depth);
		call_show_area(72, 32, 247, 143);
		if (sound_flag != 0)
			play_sound_effect(16);
	}
}
