/* Queue the wall layers and animated decorations for one maze-view cell. */
#include "structs/viewx.h"
extern int boundary_wall_variant, maze_gate_glyph_variant;
extern int maze_gate_frame, floor_checker_parity, party_status_frame;
extern int view_depth_scale[];
extern struct view_x_grid maze_cell_x_offset;
extern int select_floor_face_index(), floor_overlay_when_enabled();
extern int queue_slot_glyph_render();

queue_maze_cell_layers(depth, kind, column, plain_scale, gate_scale,
	variant_scale, boundary_scale, special_scale, inset_scale,
	plain_a, plain_b, odd_base, even_base, wall_a, wall_b, edge_a, edge_b,
	layer_a, layer_b, niche_a, niche_b, recess_a, recess_b,
	boundary_a, boundary_b, variant_a, variant_b,
	variant_edge_a, variant_edge_b, variant_layer_a, variant_layer_b,
	grille_a, grille_b, inset_a, inset_b, special_a, special_b)
int depth, kind, column, plain_scale, gate_scale;
int variant_scale, boundary_scale, special_scale, inset_scale;
int plain_a, plain_b, odd_base, even_base, wall_a, wall_b, edge_a, edge_b;
int layer_a, layer_b, niche_a, niche_b, recess_a, recess_b;
int boundary_a, boundary_b, variant_a, variant_b;
int variant_edge_a, variant_edge_b, variant_layer_a, variant_layer_b;
int grille_a, grille_b, inset_a, inset_b, special_a, special_b;
{
	int back, front, recess, recess_end;	/* recess_end is set, never read */
	int maxdepth, frame1, frame2,
		decor;	/* frame1/2: end caps, then decor frames */

	maxdepth = boundary_wall_variant == 0 ? 3 : 4;
	back = -1;
	front = -1;
	/* The far boundary has an extra pair of end-cap glyphs. */
	if (boundary_wall_variant > 0 && depth == 3) {
		frame1 =
			boundary_wall_variant < 3 || boundary_wall_variant == 5 ? 21 : 20;
		frame2 =
			boundary_wall_variant < 3 || boundary_wall_variant == 5 ? 22 : 21;
		if (column == 0) {
			back = select_floor_face_index(frame1, frame2);
			front = floor_overlay_when_enabled(frame1);
		} else if (column == 4) {
			back = select_floor_face_index(frame2, frame1);
			front = floor_overlay_when_enabled(frame2);
		}
	}
	/* Slot 255 queues wall layers; slot 252 queues odd-variant gates. */
	switch (kind) {
	case 1: case 3: case 6: case 7:
		if (back != -1)
			queue_slot_glyph_render(255, back, -1, depth == 1 ? 2 : 0,
				0, 0, 0, front, -1, depth, boundary_scale, 0, 0, 0);
		break;
	case 5:
		if (back != -1)
			queue_slot_glyph_render(255, back, -1, 2,
				0, 0, 0, front, -1, depth, inset_scale, 0, 0, 0);
		break;
	case 2: case 10: case 11: case 12: case 13: case 14: case 15:
		if (boundary_wall_variant == 0) {
			if (depth < 3)
				queue_slot_glyph_render(255,
					select_floor_face_index(plain_a + depth, plain_b + depth),
					-1, depth == 1 ? 2 : 0, 0, 0, 0,
					floor_overlay_when_enabled(plain_a + depth), -1,
					depth, plain_scale, 0, 0, 0);
		} else if (boundary_wall_variant < 3 || boundary_wall_variant == 5) {
			if (depth < 4)
				queue_slot_glyph_render(255,
					select_floor_face_index(boundary_a + depth, boundary_b + depth),
					back, 2, 2, 0, 0,
					floor_overlay_when_enabled(boundary_a + depth), front,
					depth, boundary_scale, 0, 0, 0);
		} else if (boundary_wall_variant < 5 && depth < 4)
			queue_slot_glyph_render(255,
				select_floor_face_index(inset_a + depth, inset_b + depth),
				back, 2, 2, 0, 0,
				floor_overlay_when_enabled(inset_a + depth), front,
				depth, inset_scale, 0, 0, 0);
		break;
	case 4:
		if (boundary_wall_variant % 2 == 1 && depth < 4)
			queue_slot_glyph_render(252,
				maze_gate_glyph_variant ? even_base + depth
					: odd_base + depth,
				-1, 2, 0, 0, 0, -1, -1, depth, gate_scale, 0, 0, 0);
		break;
	}
	back = -1;
	front = -1;
	if (depth < maxdepth) {
		decor = -1;
		/* Recess and grille cases fall through to the ordinary wall layers. */
		switch (kind) {
		case 8: case 9:
			recess = kind == 8 ? niche_a : recess_a;
			recess_end = kind == 8 ? niche_b : recess_b;
			back = recess + depth + 3;
			front = -1;
		case 7:
			if (kind == 7) {
				back = select_floor_face_index(grille_a + depth, grille_b + depth);
				front = floor_overlay_when_enabled(grille_a + depth);
			}
		case 1: case 3: case 6:
			if (boundary_wall_variant == 0)
				queue_slot_glyph_render(255,
					select_floor_face_index(wall_a + depth, wall_b + depth),
					back, 2, 2, 0, 0,
					floor_overlay_when_enabled(wall_a + depth), front,
					depth, plain_scale, 0, 0, 0);
			else if (boundary_wall_variant == 2)
				queue_slot_glyph_render(255,
					select_floor_face_index(variant_a + depth, variant_b + depth),
					back, 2, 2, 0, 0,
					floor_overlay_when_enabled(variant_a + depth), front,
					depth, variant_scale, 0, 0, 0);
			if (kind == 3) {
				if (maze_gate_frame && depth == 0 && column == 2)
					queue_slot_glyph_render(5, maze_cell_x_offset.cell_x[depth][column], 0,
						maze_gate_frame + 12, 0, 0, 0, 72, 248, depth, 0, 0, 0, 0);
				else {
					queue_slot_glyph_render(5, maze_cell_x_offset.cell_x[depth][column], 0,
						depth * 2 + floor_checker_parity + 5,
						0, 0, 0, 72, 248, depth, 0, floor_checker_parity, 0, 0);
					queue_slot_glyph_render(5, maze_cell_x_offset.cell_x[depth][column], 0,
						depth + 1, 0, 0, 0, 72, 248, depth, 0,
							floor_checker_parity, 0, 0);
				}
			} else if (kind == 6)
				queue_slot_glyph_render(5, maze_cell_x_offset.cell_x[depth][column], 0,
					depth + 1, 0, 0, 0, 72, 248, depth, 0, floor_checker_parity,
						0, 0);
			if (boundary_wall_variant == 0)
				queue_slot_glyph_render(255,
					select_floor_face_index(edge_a + depth, edge_b + depth),
					select_floor_face_index(layer_a + depth, layer_b + depth),
					2, 2, 0, 0, floor_overlay_when_enabled(edge_a + depth),
					floor_overlay_when_enabled(layer_a + depth), depth, plain_scale, 0, 0, 0);
			else if (boundary_wall_variant == 2)
				queue_slot_glyph_render(255,
					select_floor_face_index(variant_edge_a + depth, variant_edge_b + depth),
					select_floor_face_index(variant_layer_a + depth, variant_layer_b + depth),
					2, 2, 0, 0, floor_overlay_when_enabled(variant_edge_a + depth),
					floor_overlay_when_enabled(variant_layer_a + depth), depth, variant_scale,
						0, 0, 0);
			if (kind == 8 || kind == 9)
				queue_slot_glyph_render(255, recess + depth, -1, 2,
					0, 0, 0, -1, -1, depth, plain_scale, 0, 0, 0);
			break;
		case 5:
			if (depth < 4)
				queue_slot_glyph_render(255,
					select_floor_face_index(special_a + depth, special_b + depth),
					-1, 2, 0, 0, 0, floor_overlay_when_enabled(special_a + depth), -1,
					depth, special_scale, 0, 0, 0);
			break;
		case 10:
			decor = 9;
			frame1 = 1;
			frame2 = party_status_frame + 2;
			break;
		case 11:
			decor = 9;
			frame1 = 7;
			frame2 = party_status_frame ? 8 : 0;
			break;
		case 12: case 13:
			decor = 10;
			frame1 =
				(boundary_wall_variant == 0 ? 1 : 5) + (kind == 13 ? 1 : 0);
			frame2 = 0;
			break;
		case 14: case 15:
			decor = 10;
			frame1 = 9;
			frame2 = kind == 14 ? 10 : 11;
			break;
		}
		/* Animated decor uses the cell's horizontal offset and depth scale. */
		if (decor != -1)
			queue_slot_glyph_render(decor, maze_cell_x_offset.cell_x[depth][column], 0,
				frame1, frame2, 0, 0, 72, 248, depth,
				view_depth_scale[depth], floor_checker_parity, 0, 2);
	}
}
