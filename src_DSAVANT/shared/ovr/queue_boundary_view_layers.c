/* Queue depth-dependent wall layers and special view glyphs. */
#include "structs/viewgeom.h"
extern struct view_geometry view_geometry;
extern int view_depth_scale[], boundary_wall_variant, party_status_frame;
extern int wall_overlay_when_enabled(), select_wall_face_index();
extern int floor_overlay_when_enabled(), select_floor_face_index();
extern int queue_slot_glyph_render();

queue_boundary_view_layers(depth, kind, direction, wall_scale, floor_scale,
	back_scale,
	variant_scale, special_scale, feature_scale, side_a, side_b, floor_a, floor_b,
	front_a, front_b, inset_a, inset_b, door_frame, variant_a, variant_b, back_a,
	back_b, recess_a, recess_b, recess_back_a, recess_back_b, arch_a, arch_b,
	feature_a, feature_b, special_a, special_b)
int depth, kind, direction, wall_scale, floor_scale, back_scale, variant_scale,
	special_scale, feature_scale, side_a, side_b, floor_a, floor_b, front_a,
	front_b, inset_a, inset_b, door_frame, variant_a, variant_b, back_a, back_b,
	recess_a, recess_b, recess_back_a, recess_back_b, arch_a, arch_b, feature_a,
	feature_b, special_a, special_b;
{
	int door_layer;
	int inner_face;		/* second face drawn over the first, or -1 */
	int inner_overlay;	/* its overlay; later reused as the mirror index */
	int glyph_entry;
	int glyph_column;
	int slot;
	int x;
	int y;
	int side;

	inner_face = -1;
	inner_overlay = -1;
	/* Slots 253 and 251 keep the supplied wall and floor face indexes.
	   Cases deliberately fall through to queue the shared wall layers. */
	switch (kind) {
	case 8:
	case 9:
		if (door_frame != -1 && depth == 0) {
			door_layer = kind == 8 ? door_frame + 1 : door_frame + 3;
			queue_slot_glyph_render(253, door_layer,
				((kind == 8 && direction > 2)
				 || (kind == 9 && direction < 2)) ? door_layer + 1 : -1,
				2, 2, 0, 0, direction < 2 ? door_layer : -1,
				direction < 2 ? door_layer + 1 : -1, depth, wall_scale, 0, 1, 0);
		}
	case 3:
	case 6:
		if (kind == 3 && depth < 4) {
			if (recess_back_a != -1)
				queue_slot_glyph_render(253,
					select_wall_face_index(recess_back_a + depth,
						recess_back_b + depth),
					-1, 2, 0, 0, 0, wall_overlay_when_enabled(recess_back_a + depth),
					-1, depth, back_scale, 0, 1, 0);
			inner_face = select_wall_face_index(recess_a + depth, recess_b + depth);
			inner_overlay = wall_overlay_when_enabled(recess_a + depth);
		}
		if (kind == 6 && depth < 4) {
			inner_face = select_wall_face_index(inset_a + depth, inset_b + depth);
			inner_overlay = wall_overlay_when_enabled(inset_a + depth);
		}
	case 1:
		if (boundary_wall_variant == 0) {
			if (depth < 4)
				queue_slot_glyph_render(253,
					select_wall_face_index(front_a + depth, front_b + depth),
					inner_face, 2, 2, 0, 0, wall_overlay_when_enabled(front_a + depth),
					inner_overlay, depth, wall_scale, 0, 1, 0);
		} else if (boundary_wall_variant == 2 && depth < 5)
			queue_slot_glyph_render(253,
				select_wall_face_index(back_a + depth, back_b + depth),
				inner_face, 2, 2, 0, 0, wall_overlay_when_enabled(back_a + depth),
				inner_overlay, depth, back_scale, 0, 1, 0);
		if (door_frame != -1 && depth == 0 && (kind == 8 || kind == 9))
			queue_slot_glyph_render(253, door_frame, -1, 2, 0, 0, 0,
				direction < 2 ? door_frame : -1, -1, depth, wall_scale, 0, 1, 0);
		break;
	case 7:
		if (depth < 4) {
			inner_face = select_wall_face_index(arch_a + depth, arch_b + depth);
			inner_overlay = wall_overlay_when_enabled(arch_a + depth);
		}
	case 2:
	case 10: case 11: case 12: case 13: case 14: case 15:
		if (boundary_wall_variant == 0) {
			if (depth < 4)
				queue_slot_glyph_render(253,
					select_wall_face_index(side_a + depth, side_b + depth),
					inner_face, 2, 2, 0, 0, wall_overlay_when_enabled(side_a + depth),
					inner_overlay, depth, wall_scale, 0, 1, 0);
		} else if (boundary_wall_variant < 3 || boundary_wall_variant == 5) {
			if (depth < 5) {
				if (boundary_wall_variant == 2 && inner_face != -1)
					queue_slot_glyph_render(253, inner_face, -1, 2, 0, 0, 0,
						inner_overlay, -1, depth, back_scale, 0, 1, 0);
				queue_slot_glyph_render(253,
					select_wall_face_index(variant_a + depth, variant_b + depth),
					-1, 2, 0, 0, 0, wall_overlay_when_enabled(variant_a + depth), -1,
					depth, variant_scale, 0, 1, 0);
			}
		} else if (boundary_wall_variant < 5 && depth < 4)
			queue_slot_glyph_render(253,
				select_wall_face_index(feature_a + depth, feature_b + depth),
				-1, 2, 0, 0, 0, wall_overlay_when_enabled(feature_a + depth), -1,
				depth, feature_scale, 0, 1, 0);
		break;
	case 4:
		if (depth < 4)
			queue_slot_glyph_render(251,
				select_floor_face_index(floor_a + depth, floor_b + depth),
				-1, 2, 0, 0, 0, floor_overlay_when_enabled(floor_a + depth), -1,
				depth, floor_scale, 0, 1, 0);
		break;
	case 5:
		if (depth < 4)
			queue_slot_glyph_render(253,
				select_wall_face_index(special_a + depth, special_b + depth),
				-1, 2, 0, 0, 0, wall_overlay_when_enabled(special_a + depth), -1,
				depth, special_scale, 0, 1, 0);
		break;
	}
	/* Kinds 10 through 15 also draw a decoration at an explicit view_geometry
	   point, mirrored when facing directions 3 and up. */
	if (depth < 4) {
		side = (direction == 1 || direction == 3) ? 0 : 1;
		inner_overlay = direction > 2 ? 1 : 0;	/* now the mirror index */
		slot = -1;
		switch (kind) {
		case 10:
			slot = 9;
			x = view_geometry.walls[0][depth][side][inner_overlay].x;
			y = view_geometry.walls[0][depth][side][inner_overlay].y;
			glyph_entry = 4;
			glyph_column = party_status_frame + 5;
			break;
		case 11:
			slot = 9;
			x = view_geometry.walls[1][depth][side][inner_overlay].x;
			y = view_geometry.walls[1][depth][side][inner_overlay].y;
			glyph_entry = 9;
			glyph_column = party_status_frame != 0 ? 10 : 0;
			break;
		case 12: case 13:
			slot = 10;
			x = boundary_wall_variant == 0
				? view_geometry.walls[2][depth][side][inner_overlay].x
				: view_geometry.walls[3][depth][side][inner_overlay].x;
			y = boundary_wall_variant == 0
				? view_geometry.walls[2][depth][side][inner_overlay].y
				: view_geometry.walls[3][depth][side][inner_overlay].y;
			glyph_entry = (boundary_wall_variant == 0 ? 3 : 7) + (kind == 13 ? 1 : 0);
			glyph_column = 0;
			break;
		case 14: case 15:
			slot = 10;
			x = view_geometry.walls[4][depth][side][inner_overlay].x;
			y = view_geometry.walls[4][depth][side][inner_overlay].y;
			glyph_entry = 12;
			glyph_column = kind == 14 ? 13 : 14;
			break;
		}
		if (slot != -1)
			queue_slot_glyph_render(slot, x, y, glyph_entry, glyph_column, 0, 0,
				72, 248, depth, view_depth_scale[depth], inner_overlay, 1, 3);
	}
}
