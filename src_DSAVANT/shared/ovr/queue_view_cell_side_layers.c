/* Queue the layered wall and cell glyphs for one depth and column. */
#include "structs/viewx.h"

extern int party_facing, party_status_frame, floor_checker_parity;
extern int boundary_wall_variant, marker_mode, capture_center_marker_mode;
extern int shape_column_x[][5], view_depth_scale[], view_geometry[];
extern struct view_x_grid maze_cell_x_offset;
extern int near_wall_object_ids[][5];
extern int near_wall_overlay_ids[][5];
extern unsigned char near_wall_layer_flags[][5];
extern unsigned char side_wall_layer_flags[][5];
extern int side_wall_animation_phase;
extern int far_wall_object_ids[][5];
extern int far_wall_overlay_ids[][5];
extern unsigned char view_marker_kinds[][5];
extern unsigned char view_marker_ids[][5];
extern int wall_overlay_when_enabled(), select_wall_face_index();
extern int floor_overlay_when_enabled(), select_floor_face_index();
extern int queue_slot_glyph_render(), call_draw_maze_piece();

queue_view_cell_side_layers(depth, column, unused_a, side_piece, wall_scale,
	unused_b, boundary_piece, unused_c, animated_piece, side_piece_b,
	front_a, front_b, side_a, side_b, left_center_a, left_center_b,
	right_center_a, right_center_b, left_edge_a, left_edge_b,
	right_edge_a, right_edge_b, side2_a, side2_b, animated_a, animated_b,
	boundary_a, boundary_b, floor_a, floor_b, inset_a, inset_b)
int depth, column, unused_a, side_piece, wall_scale;
int unused_b, boundary_piece, unused_c, animated_piece, side_piece_b;
int front_a, front_b, side_a, side_b, left_center_a, left_center_b;
int right_center_a, right_center_b, left_edge_a, left_edge_b;
int right_edge_a, right_edge_b, side2_a, side2_b, animated_a, animated_b;
int boundary_a, boundary_b, floor_a, floor_b, inset_a, inset_b;
{
	int facing, glyph, layer, x;
	int floor_face, floor_overlay, wall_face, wall_overlay;
	int in_view;

	in_view = (depth < 4 && column > 0 && column < 4) ? 1 : 0;
	/* Side cell slots may have both a wall face and a sprite glyph. */
	if (in_view) {
		if (near_wall_object_ids[depth][column] ||
		    near_wall_overlay_ids[depth][column]) {
			if (column == 2)
				queue_slot_glyph_render(255,
					select_wall_face_index(left_center_a + depth,
						left_center_b + depth), -1, 2, 0, 0, 0,
					wall_overlay_when_enabled(left_center_a + depth),
					-1, depth, 3, 0, 0, 0);
			else if (depth > 0)
				queue_slot_glyph_render(255,
					column == 3 ? left_edge_b + depth : left_edge_a + depth,
					-1, 2, 0, 0, 0,
					column == 3 ? left_edge_b + depth : -1,
					-1, depth, 3, 0, 0, 0);
			if (near_wall_object_ids[depth][column]) {
				facing =
					(party_facing - (near_wall_object_ids[depth][column] - 1) + 6) % 4;
				glyph = 0;
				if (facing % 2 == 0 && depth > 0 || column == 2) {
					glyph = (facing % 2 ? 3 : 0) + depth * 8 + 3;
					layer = floor_checker_parity;
					x = shape_column_x[depth][column];
				} else if (depth > 0) {
					glyph = depth + 32;
					layer = column == 3 ? 1 : 0;
					x = 0;
				}
				if (glyph)
					queue_slot_glyph_render(4, x, 0, glyph, 1,
						(column != 2 && facing % 2 == 1) ? 1 : 0,
						column, 72, 248, depth, 0, layer, 0, 0);
			}
		}
	}
	/* The first wall pass is selected by the cell's near-side flag. */
	switch (near_wall_layer_flags[depth][column]) {
	case 1:
		if (boundary_wall_variant == 2) {
			if (depth < 5) {
				queue_slot_glyph_render(255,
					select_wall_face_index(front_a + depth, front_b + depth),
					-1, 2, 0, 0, 0,
					wall_overlay_when_enabled(front_a + depth),
					-1, depth, wall_scale, 0, 0, 0);
				wall_face = -1;
				floor_face = -1;
				wall_overlay = -1;
				floor_overlay = -1;
				if (inset_a != -1) {
					wall_face = select_wall_face_index(inset_a + depth,
						inset_b + depth);
					wall_overlay = wall_overlay_when_enabled(inset_a + depth);
				}
				if (depth > 0) {
					floor_face = select_floor_face_index(floor_a + depth - 1,
						floor_b + depth - 1);
					floor_overlay = floor_overlay_when_enabled(floor_a + depth - 1);
				}
				if (floor_face != -1 || wall_face != -1) {
					queue_slot_glyph_render(255, wall_face, floor_face,
						2, 2, 0, 0, wall_overlay, floor_overlay,
						depth, wall_scale, 0, 0, 0);
					if (floor_face != -1 && boundary_wall_variant != 0 &&
					    depth == 4) {
						if (column == 0)
							queue_slot_glyph_render(255,
								select_floor_face_index(194, 195), -1,
								2, 0, 0, 0,
								floor_overlay_when_enabled(194), -1,
								depth, wall_scale, 0, 0, 0);
						else if (column == 4)
							queue_slot_glyph_render(255,
								select_floor_face_index(195, 194), -1,
								2, 0, 0, 0,
								floor_overlay_when_enabled(195), -1,
								depth, wall_scale, 0, 0, 0);
					}
				}
			}
		} else if (boundary_wall_variant == 4 && depth < 4) {
			call_draw_maze_piece(boundary_piece,
				select_wall_face_index(boundary_a + depth, boundary_b + depth),
				2, wall_overlay_when_enabled(boundary_a + depth));
			if (depth < 2 && column == 2)
				queue_slot_glyph_render(254,
					select_wall_face_index(depth + 25, depth + 25),
					-1, 2, 0, 0, 0,
					wall_overlay_when_enabled(depth + 25), -1,
					depth, boundary_piece, 0, 1, 0);
		}
		break;
	}
	/* A second flag chooses a single wall piece or the animated face. */
	switch (side_wall_layer_flags[depth][column]) {
	case 1:
		if (depth < 5)
			call_draw_maze_piece(side_piece,
				select_wall_face_index(side_a + depth, side_b + depth),
				2, wall_overlay_when_enabled(side_a + depth));
		break;
	case 2:
		if (depth < 5)
			call_draw_maze_piece(side_piece_b,
				select_wall_face_index(side2_a + depth, side2_b + depth),
				2, wall_overlay_when_enabled(side2_a + depth));
		break;
	case 3:
		if (depth < 5)
			call_draw_maze_piece(animated_piece,
				(side_wall_animation_phase + party_status_frame) % 2
					? animated_b + depth : animated_a + depth,
					2,
					(side_wall_animation_phase + party_status_frame) % 2
						? animated_a + depth : -1);
		break;
	case 4:
		break;
	case 0:
		break;
	}
	/* The far-side cell repeats the near-side slot decisions. */
	if (in_view && (far_wall_object_ids[depth][column] ||
	    far_wall_overlay_ids[depth][column])) {
		if (column == 2)
			call_draw_maze_piece(3,
				select_wall_face_index(right_center_a + depth,
						right_center_b + depth),
				2, wall_overlay_when_enabled(right_center_a + depth));
		else if (depth > 0)
			call_draw_maze_piece(3,
					column == 3 ? right_edge_b + depth : right_edge_a + depth,
					2, column == 3 ? right_edge_b + depth : -1);
		if (far_wall_object_ids[depth][column]) {
			facing =
				(party_facing - (far_wall_object_ids[depth][column] - 1) + 6) % 4;
			glyph = 0;
			if (facing % 2 == 0 && depth > 0 || column == 2) {
				glyph = facing % 2 + depth * 8 + 1;
				layer = floor_checker_parity;
				x = shape_column_x[depth][column];
			} else if (depth > 0) {
				glyph = depth + 32;
				layer = column == 3 ? 1 : 0;
				x = 0;
			}
			if (glyph)
				queue_slot_glyph_render(4, x, 0, glyph, 0, 0, 0,
						72, 248, depth, 0, layer, 0, 0);
		}
	}
	/* Only the four nearest rows carry markers. */
	if (depth < 4) {
		/* Marker types 1 through 3 queue three distinct slot geometries. */
		if (view_marker_kinds[depth][column] == 3) {
			if (depth > 0 || column == 2) {
				if (depth == 0 && column == 2 && capture_center_marker_mode)
					marker_mode = -1;
				glyph = depth == 0 && column == 2 ? 2 : 1;
				x = glyph == 2 ? depth : depth - 1;
				queue_slot_glyph_render(12,
					maze_cell_x_offset.marker_x[depth][column],
					view_geometry[x], glyph, 0, 0, 0, 72, 248,
					depth, view_depth_scale[x], 0, 1, 1);
			}
		}
		if (view_marker_kinds[depth][column] == 1 ||
		    view_marker_kinds[depth][column] == 2) {
			if (depth > 0 || column == 2)
				queue_slot_glyph_render(11,
					maze_cell_x_offset.marker_x[depth][column],
					view_geometry[depth],
					view_marker_kinds[depth][column],
					0, 0, 0, 72, 248, depth,
					view_depth_scale[depth], 0, 1, 1);
		}
		if (view_marker_ids[depth][column] != 0) {
			if (depth == 0 && column == 2 && capture_center_marker_mode)
				marker_mode = view_marker_ids[depth][column];
			else if (depth > 0 || column == 2) {
				facing = (party_facing - (view_marker_ids[depth][column] - 1) + 6) % 4;
				/* Alternating facings choose the paired marker sprite. */
				switch (facing) {
				case 0:
				case 2:
					queue_slot_glyph_render(3,
						maze_cell_x_offset.marker_x[depth][column],
						view_geometry[depth], 1, 2,
						facing == 0 ? 4 : 5, 0, 72, 248, depth,
						view_depth_scale[depth], 0, 1, 1);
					break;
				case 1:
				case 3:
					queue_slot_glyph_render(3,
						maze_cell_x_offset.marker_x[depth][column],
						view_geometry[depth], 3, 0, 0, 0, 72, 248, depth,
						view_depth_scale[depth], facing == 3 ? 1 : 0, 1, 1);
					break;
				}
			}
		}
	}
}
