/* Rebuild the first-person maze view and draw its queued wall layers. */
#include "structs/mazecell.h"
#include "structs/qshape.h"
#include "structs/slotrec.h"

struct view_panel_bounds {
	int left;			/* +0x00 */
	int top;			/* +0x02 */
	int right;			/* +0x04 */
	int bottom;			/* +0x06 */
};

extern struct maze_cells *maze_data;
extern struct view_panel_bounds boundary_box_bounds[][5];
extern struct slot_rec slot_recs[];
extern unsigned char bss_5b55;
extern int current_level, maze_variant, boundary_wall_open;
extern int party_world_x, party_world_y, party_cell_x, party_cell_y;
extern int party_map_piece, party_facing;
extern int saved_level, saved_map_piece, saved_cell_x, saved_cell_y;
extern int capture_center_marker_mode, marker_mode;
extern int requested_row_limit, view_scan_depth, floor_checker_parity;
extern int side_wall_animation_phase, boundary_wall_variant;
extern int maze_gate_glyph_variant, render_queue_count;
extern int last_map_piece_index;
extern unsigned char near_wall_layer_flags[][5];
extern unsigned char side_wall_layer_flags[][5];
extern unsigned char view_marker_ids[][5];
extern unsigned char view_marker_kinds[][5];
extern int near_wall_overlay_ids[][5], near_wall_object_ids[][5];
extern int far_wall_overlay_ids[][5], far_wall_object_ids[][5];
extern unsigned char boundary_box_faces[][5];
extern unsigned char view_layer_scratch[][5];
extern int view_depth_count;
extern int center_cell_wall, center_left_wall;
extern int center_right_wall, left_cell_wall;
extern int right_cell_wall, far_left_cell_wall;
extern int far_right_cell_wall, left_cell_side_wall;
extern int right_cell_side_wall;
extern int marker_string_frames[];
extern int marker_string_variants[];
extern int marker_string_y_offsets[];
extern int marker_string_x_offsets[];
extern int marker_string_descending[];
extern struct queued_shape queued_slot_x[];
extern int call_fill_area(), call_draw_text(), call_draw_maze_piece();
extern int call_show_area(), test_bit(), offset_relative_map_position();
extern int wall_overlay_when_enabled(), select_wall_face_index();
extern int select_floor_face_index(), floor_overlay_when_enabled();
extern int resolve_cell_wall_effects(), get_relative_cell_wall();
extern int queue_maze_cell_layers(), queue_view_cell_side_layers();
extern int queue_boundary_view_layers(), draw_queued_glyph_shape();
extern int draw_clock_marker_glyph(), draw_moon_glyph();
extern int draw_party_status_glyphs(), random_below(), aztec_setmem();

draw_first_person_maze_view()
{
	int row;
	int render_pass;
	int marker_index;
	int cell_index;
	int world_x;
	int world_y;
	int cell_x;
	int cell_y;
	int map_piece;
	int relative_piece;
	int depth_limit;
	int pass_mode;
	int inner_face;
	int column_order[5];
	struct queued_shape *queue_row;
	int queue_scratch_a;
	int queue_scratch_b;
	char glyph[6];

	/* The columns are visited center-first, then from each edge inward. */
	column_order[0] = 0;
	column_order[1] = 4;
	column_order[2] = 1;
	column_order[3] = 3;
	column_order[4] = 2;
	marker_mode = 0;
	world_x = party_world_x;
	world_y = party_world_y;
	cell_x = party_cell_x;
	cell_y = party_cell_y;
	map_piece = party_map_piece;
	last_map_piece_index = 0;
	requested_row_limit = 0;
	call_fill_area(72, 32, 247, 143, 0);
	cell_index = (map_piece << 6) + (cell_y << 3) + cell_x;

	/* These two levels use a map bitmap to select the centered message. */
	if (current_level == 10 || current_level == 25) {
		if (test_bit(maze_data->cell_flags_third, cell_index)) {
			call_fill_area(72, 33, 247, 142, 99);
			if (current_level == saved_level && map_piece == saved_map_piece &&
			    cell_x == saved_cell_x && cell_y == saved_cell_y) {
				if (capture_center_marker_mode != 0)
					marker_mode = -1;
				glyph[0] = 2;
				glyph[1] = 0;
				call_draw_text(12, slot_recs[12].glyph_x[2][0] + 1,
					slot_recs[12].glyph_y[2] + 1,
					72, 248, 32, 144, 0, glyph, 0, 0);
			}
			draw_party_status_glyphs();
			return;
		}
	}

	/* On the special edge variants, test the party cell before building the
	   view. */
	if (maze_variant == 1 || boundary_wall_open != 0) {
		if (test_bit(maze_data->cell_flags, cell_index)) {
			if (boundary_wall_open != 0) {
				call_fill_area(72, 33, 247, 142, 255);
				draw_clock_marker_glyph();
				draw_moon_glyph();
			}
			draw_party_status_glyphs();
			return;
		}
	}

	/* Clear per-view layer and marker grids before scanning the maze. */
	aztec_setmem(boundary_box_faces, 25, 0);
	aztec_setmem(near_wall_layer_flags, 25, 0);
	aztec_setmem(side_wall_layer_flags, 25, 0);
	aztec_setmem(view_layer_scratch, 25, 0);
	aztec_setmem(view_marker_ids, 25, 0);
	aztec_setmem(far_wall_overlay_ids, 50, 0);
	aztec_setmem(view_marker_kinds, 25, 0);
	aztec_setmem(far_wall_object_ids, 50, 0);
	aztec_setmem(near_wall_overlay_ids, 50, 0);
	aztec_setmem(near_wall_object_ids, 50, 0);
	aztec_setmem(queued_slot_x, 2040, 0);
	render_queue_count = 0;
	relative_piece = map_piece;
	offset_relative_map_position(&world_x, &world_y, &cell_x, &cell_y,
		&relative_piece, 0, -1);
	view_depth_count = 5;
	side_wall_animation_phase =
		(party_world_x + party_world_y + party_facing) % 2;
	boundary_wall_variant = 0;

	/* Draw the fixed foreground pieces selected by the maze variant. */
	switch (maze_variant) {
	case 1:
		boundary_wall_variant = 0;
		if (current_level == 30 && party_map_piece == 8) {
			/* This map position omits the nearer wall face. */
		} else
			call_draw_maze_piece(0,
				select_wall_face_index(31, 31), 0,
				wall_overlay_when_enabled(31));
		call_draw_maze_piece(0,
			select_wall_face_index(32, 32), 0,
			wall_overlay_when_enabled(32));
		break;
	case 2:
		boundary_wall_variant = 1;
		call_fill_area(72, 33, 247, 72, 255);
		draw_clock_marker_glyph();
		draw_moon_glyph();
		call_draw_maze_piece(1,
			select_wall_face_index(4, 4), 2,
			wall_overlay_when_enabled(4));
		call_draw_maze_piece(1,
			select_wall_face_index(62, 62), 0,
			wall_overlay_when_enabled(62));
		break;
	case 3:
		boundary_wall_variant = 2;
		call_fill_area(72, 33, 247, 72, 255);
		draw_clock_marker_glyph();
		draw_moon_glyph();
		if (current_level == 14 && party_map_piece > 9 &&
		    (party_map_piece > 10 || party_facing == 2 ||
		     (party_facing != 0 && party_cell_y < 5)))
			call_fill_area(72, 72, 247, 80, 0);
		else {
			call_draw_maze_piece(4,
				select_wall_face_index(4, 4), 0,
				wall_overlay_when_enabled(4));
			call_draw_maze_piece(2,
				select_wall_face_index(173, 173), 0,
				wall_overlay_when_enabled(173));
		}
		break;
	case 4:
		boundary_wall_variant = 3;
		call_fill_area(72, 33, 247,
			boundary_wall_open ? 142 : 72, 255);
		draw_clock_marker_glyph();
		draw_moon_glyph();
		call_draw_maze_piece(1,
			select_wall_face_index(4, 4), 2,
			wall_overlay_when_enabled(4));
		if (boundary_wall_open == 0)
			call_draw_maze_piece(4,
				select_wall_face_index(42, 42), 0,
				wall_overlay_when_enabled(42));
		break;
	case 5:
		boundary_wall_variant = 4;
		call_fill_area(72, 33, 247, 56, 255);
		draw_clock_marker_glyph();
		draw_moon_glyph();
		call_fill_area(72, 57, 247, 80, 0);
		call_draw_maze_piece(4,
			select_wall_face_index(42, 42), 0,
			wall_overlay_when_enabled(42));
		break;
	case 6:
		boundary_wall_variant = 5;
		call_fill_area(72, 33, 247, 72, 255);
		draw_clock_marker_glyph();
		draw_moon_glyph();
		call_draw_maze_piece(1,
			select_wall_face_index(62, 62), 0,
			wall_overlay_when_enabled(62));
		if (current_level == 8 && party_map_piece == 6 &&
		    party_cell_y == 4 &&
		    (((party_cell_x == 2 || party_cell_x == 1) && party_facing == 1) ||
		     ((party_cell_x == 5 || party_cell_x == 6) && party_facing == 3))) {
			/* These cells keep the lower band open. */
		} else
			call_fill_area(72, 72, 247, 80, 0);
		if (current_level == 8 || (current_level == 11 &&
		    party_map_piece == 6 && party_cell_y > 3))
			call_draw_maze_piece(1,
				select_wall_face_index(4, 4), 2,
				wall_overlay_when_enabled(4));
		break;
	}

	/* Visit every view depth and queue the five columns of wall layers. */
	view_scan_depth = 0;
	while (view_scan_depth < view_depth_count) {
		floor_checker_parity = (party_world_x + party_world_y + party_facing +
			view_scan_depth) % 2;
		if (offset_relative_map_position(&world_x, &world_y, &cell_x, &cell_y,
			&map_piece, 0, 1)) {
			if (boundary_wall_variant % 2 == 1) {
				if (boundary_wall_variant != 5) {
					if (boundary_wall_open != 0)
						center_cell_wall = 0;
					else {
						side_wall_layer_flags[view_scan_depth][2] = 1;
						center_cell_wall = 4;
					}
				} else {
					side_wall_layer_flags[view_scan_depth][2] = 3;
					center_cell_wall = 0;
				}
			} else
				center_cell_wall = 2;
			center_left_wall = center_cell_wall;
			center_right_wall = center_cell_wall;
		} else {
			center_cell_wall = resolve_cell_wall_effects(
				world_x, world_y, cell_x, cell_y, map_piece, 0);
			center_left_wall = get_relative_cell_wall(
				0, world_x, world_y, cell_x, cell_y, map_piece, 0);
			center_right_wall = get_relative_cell_wall(
				2, world_x, world_y, cell_x, cell_y, map_piece, 0);
		}
		left_cell_wall = resolve_cell_wall_effects(
			world_x, world_y, cell_x, cell_y, map_piece, -1);
		right_cell_wall = resolve_cell_wall_effects(
			world_x, world_y, cell_x, cell_y, map_piece, 1);
		if (view_scan_depth > 1) {
			far_left_cell_wall = resolve_cell_wall_effects(
				world_x, world_y, cell_x, cell_y, map_piece, -2);
			far_right_cell_wall = resolve_cell_wall_effects(
				world_x, world_y, cell_x, cell_y, map_piece, 2);
			left_cell_side_wall = get_relative_cell_wall(
				0, world_x, world_y, cell_x, cell_y, map_piece, -1);
			right_cell_side_wall = get_relative_cell_wall(
				2, world_x, world_y, cell_x, cell_y, map_piece, 1);
		} else {
			far_left_cell_wall = 0;
			far_right_cell_wall = 0;
			left_cell_side_wall = 0;
			right_cell_side_wall = 0;
		}
		if (center_cell_wall == 0 &&
		    requested_row_limit == view_scan_depth)
			++requested_row_limit;
		maze_gate_glyph_variant = floor_checker_parity;
		queue_maze_cell_layers(view_scan_depth, center_cell_wall,
			2, 0, 1, 2, 4, 2, 4, 0, 0, 0, 63, 33, 33,
			36, 39, 39, 36, 110, 110, 140, 140,
			0, 0, 25, 25, 29, 33, 33, 29, 133,
			133, 0, 0, 30, 30);
		queue_view_cell_side_layers(view_scan_depth, 2, 0, 1, 2, 4, 2, 4,
			5, 6, 0, 0, 37, 37, 4, 4, 0, 0, 16, 20,
			8, 12, 0, 0, 0, 0, 0, 0, 174, 174, (unsigned)65535, (unsigned)65535);
		queue_boundary_view_layers(view_scan_depth, center_left_wall,
			1, 0, 1, 2, 4, 2, 4, 15, 19, 21, 25, 78,
			82, 94, 98, 170, 23, 28, 85, 90,
			105, 109, 123, 128, 153, 158, 22, 27,
			52, 57);
		queue_boundary_view_layers(view_scan_depth, center_right_wall,
			3, 0, 1, 2, 4, 2, 4, 19, 15, 25, 21, 82,
			78, 98, 94, 175, 28, 23, 90, 85,
			109, 105, (unsigned)65535, (unsigned)65535, 158, 153, 27, 22,
			57, 52);
		queue_boundary_view_layers(view_scan_depth, left_cell_side_wall,
			0, 0, 1, 2, 4, 2, 4, 23, 27, 29, 33, 86,
			90, 102, 106, (unsigned)65535, 33, 38, 95, 100,
			113, 118, (unsigned)65535, (unsigned)65535, 163, 168, 32, 37,
			62, 67);
		queue_boundary_view_layers(view_scan_depth, right_cell_side_wall,
			4, 0, 1, 2, 4, 2, 4, 27, 23, 33, 29, 90,
			86, 106, 102, (unsigned)65535, 38, 33, 100, 95,
			118, 113, (unsigned)65535, (unsigned)65535, 168, 163, 37, 32,
			67, 62);

		maze_gate_glyph_variant = (floor_checker_parity + 1) % 2;
		queue_maze_cell_layers(view_scan_depth, left_cell_wall,
			1, 0, 1, 2, 4, 2, 4, 3, 3, 5, 67, 42, 42,
			45, 48, 48, 45, 116, 116, 146, 146,
			5, 5, 37, 37, 41, 45, 45, 41, 137,
			145, 4, 4, 34, 34);
		queue_view_cell_side_layers(view_scan_depth, 1, 0, 1, 2, 4, 2, 4,
			5, 6, 5, 15, 42, 52, 4, 4, 0, 0, 16, 20,
			8, 12, 5, 15, 5, 15, 5, 15, 178, 178, 196, 201);
		maze_gate_glyph_variant = floor_checker_parity;
		queue_maze_cell_layers(view_scan_depth, far_left_cell_wall,
			0, 0, 1, 2, 4, 2, 4, 6, 6, 9, 71, 51, 51,
			54, 57, 57, 54, 122, 122, 152, 152,
			9, 9, 49, 49, 53, 57, 57, 53, 141,
			149, 8, 8, 38, 38);
		queue_view_cell_side_layers(view_scan_depth, 0, 0, 1, 2, 4, 2, 4,
			5, 6, 10, 20, 47, 57, 4, 4, 0, 0, 16, 20,
			8, 12, 10, 20, 10, 20, 10, 20, 182, 182, 206, 211);
		maze_gate_glyph_variant = (floor_checker_parity + 1) % 2;
		queue_maze_cell_layers(view_scan_depth, right_cell_wall,
			3, 0, 1, 2, 4, 2, 4, 9, 9, 13, 75, 60, 60,
			63, 66, 66, 63, 128, 128, 158, 158,
			13, 13, 61, 61, 65, 69, 69, 65, 145,
			137, 12, 12, 42, 42);
		queue_view_cell_side_layers(view_scan_depth, 3, 0, 1, 2, 4, 2, 4,
			5, 6, 15, 5, 52, 42, 4, 4, 0, 0, 16, 20,
			8, 12, 15, 5, 15, 5, 15, 5, 186, 186, 201, 196);
		maze_gate_glyph_variant = floor_checker_parity;
		queue_maze_cell_layers(view_scan_depth, far_right_cell_wall,
			4, 0, 1, 2, 4, 2, 4, 12, 12, 17, 79, 69, 69,
			72, 75, 75, 72, 134, 134, 164, 164,
			17, 17, 73, 73, 77, 81, 81, 77, 149,
			141, 16, 16, 46, 46);
		queue_view_cell_side_layers(view_scan_depth, 4, 0, 1, 2, 4, 2, 4,
			5, 6, 20, 10, 57, 47, 4, 4, 0, 0, 16, 20,
			8, 12, 20, 10, 20, 10, 20, 10, 190, 190, 211, 206);
		++view_scan_depth;
	}

	/* Draw queued pieces and glyphs from the farthest depth back to the party. */
	for (view_scan_depth = view_depth_count - 1;
	     view_scan_depth >= 0; --view_scan_depth) {
		for (render_pass = 255; render_pass >= 251; --render_pass) {
			for (row = render_queue_count - 1; row >= 0; --row) {
				queue_row = &queued_slot_x[row];
				if (queue_row->depth == view_scan_depth &&
				    queue_row->slot == render_pass) {
					if (queue_row->x != -1)
						call_draw_maze_piece(queue_row->scale, queue_row->x,
							queue_row->payload.fields.glyph,
							queue_row->clip_left);
					if (queue_row->y != -1)
						call_draw_maze_piece(queue_row->scale, queue_row->y,
							queue_row->payload.fields.shape_mode,
							queue_row->clip_right);
				}
			}
			if ((pass_mode = render_pass == 255 ? 0 :
			    render_pass == 251 ? 1 : -1) != -1) {
				for (row = render_queue_count - 1; row >= 0; --row) {
					queue_row = &queued_slot_x[row];
					if (queue_row->depth == view_scan_depth &&
					    queue_row->slot < 250 &&
					    queue_row->render_pass == pass_mode) {
						if (queue_row->slot == 4 &&
						    queue_row->payload.fields.shape_mode == 1)
							draw_queued_glyph_shape(queue_row);
						else {
							for (marker_index = 0; marker_index < 4;
							     ++marker_index)
								glyph[marker_index] =
									queue_row->payload.bytes[marker_index];
							glyph[4] = 0;
							call_draw_text(queue_row->slot, queue_row->x,
								queue_row->y, queue_row->clip_left,
								queue_row->clip_right, 32, 144,
								queue_row->variant, glyph, 0,
								queue_row->scale);
						}
					}
				}
			}
		}

		/* Only the party cell can add the three tracked marker strings. */
		if (bss_5b55 != 255 && view_scan_depth == 0 &&
		    !(boundary_wall_variant == 0 && side_wall_layer_flags[2][2] == 3) &&
		    ((boundary_wall_variant % 2) != 0 || requested_row_limit > 1)) {
			marker_index = 0;
			do {
				if (marker_string_frames[marker_index] > 0) {
					glyph[0] = marker_string_frames[marker_index];
					glyph[1] = 0;
					call_draw_text(13,
						slot_recs[13].glyph_x[
							marker_string_frames[marker_index]][
							marker_string_variants[marker_index]] +
							marker_string_x_offsets[marker_index],
						slot_recs[13].glyph_y[
							marker_string_frames[marker_index]] +
							marker_string_y_offsets[marker_index],
						72, 248, 32, 144,
						marker_string_variants[marker_index], glyph, 0, 0);
					if (marker_string_descending[marker_index] != 0)
						--marker_string_frames[marker_index];
					else
						++marker_string_frames[marker_index];
					if (slot_recs[13].last_glyph <
					    marker_string_frames[marker_index])
						marker_string_frames[marker_index] = 0;
				} else if (capture_center_marker_mode == 0 &&
				    random_below(100) <= marker_index) {
					marker_string_variants[marker_index] = random_below(2);
					marker_string_descending[marker_index] =
						boundary_wall_variant % 2 ? random_below(2) : 0;
					marker_string_frames[marker_index] =
						marker_string_descending[marker_index] ? slot_recs[13].last_glyph : 1;
					row = boundary_wall_variant % 1 ? 30 : 10;
					marker_string_x_offsets[marker_index] =
						marker_string_variants[marker_index] ?
						random_below(row) : 0 - random_below(row);
					marker_string_y_offsets[marker_index] = random_below(5);
				}
			} while (++marker_index < 3);
		}

		/* Outside the open-sky variants 1 and 2, fill the boundary view boxes
		   and label them with depth glyphs. */
		if (boundary_wall_variant == 0 || boundary_wall_variant > 2) {
			relative_piece = 0;
			do {
				row = column_order[relative_piece];
				if ((inner_face =
				    boundary_box_faces[view_scan_depth][row]) != 0 &&
				    boundary_box_bounds[view_scan_depth][row].left != 0) {
					if (inner_face == 1 || boundary_wall_open != 0)
						call_fill_area(
							boundary_box_bounds[view_scan_depth][row].left,
							boundary_box_bounds[view_scan_depth][row].top,
							boundary_box_bounds[view_scan_depth][row].right,
							boundary_box_bounds[view_scan_depth][row].bottom,
							boundary_wall_open ? 255 : 0);
					else if (view_scan_depth > 0 &&
					    slot_recs[9].glyph_x[(row << 2) +
						view_scan_depth][0] != 0) {
						floor_checker_parity =
							(random_below(2) + party_world_x + party_world_y +
							 party_facing + view_scan_depth) % 2;
						glyph[0] = view_scan_depth;
						glyph[1] = 0;
						marker_index = slot_recs[9].glyph_x[(row << 2) +
							view_scan_depth][floor_checker_parity];
						if (marker_index == 255)
							marker_index = floor_checker_parity ? -22 : -18;
						call_draw_text(9, marker_index,
							slot_recs[9].glyph_y[(row << 2) +
								view_scan_depth],
							72, 248, 32, 144,
							floor_checker_parity, glyph, 0, 0);
					}
					if (boundary_wall_open != 0) {
						draw_clock_marker_glyph();
						draw_moon_glyph();
					}
				}
			} while (++relative_piece < 5);
		}
	}
	draw_party_status_glyphs();
}
