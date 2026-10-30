/* Build and draw the map around the party, then flash its marker until
   input. */
extern int map_show_objects;
extern int map_wall2_ns_glyph, map_wall2_ew_glyph,
	map_wall1_ns_glyph, map_wall1_ew_glyph, map_wall3_ns_glyph,
	map_wall3_ew_glyph;
extern int map_floor_glyph, map_flag2_glyph,
	map_flag1_glyph, map_outside_glyph, map_wall2_enclosed_glyph;
extern int map_outside_ns_wall_glyph, map_outside_ew_wall_glyph,
	map_special_glyph, map_wall4_enclosed_glyph, map_wall4_ns_glyph,
	map_wall4_ew_glyph;
extern int map_kind1_glyph, map_kind2_glyph, map_kind15_glyph,
	map_kind14_glyph, map_kind9_glyph, map_kind8_glyph;
extern int map_floor_glyphs[][18], map_ns_wall_glyphs[][18],
	map_ew_wall_glyphs[][18], map_object_marks[][18];
extern int grid_origin_x, grid_origin_y, maze_variant;
extern int party_world_x, party_world_y, party_tag;
extern void load_monster_picture();
extern void free_picture_slot();
extern void call_fill_area();
extern void call_restore_area();
extern long call_save_area();
extern void call_show_area();
extern void draw_grid_cell_char();
extern void draw_rect_outline();
extern void flush_keyboard();
extern int poll_fullscreen_hotspot();
extern void delay_ms();
extern void build_map_view_cell();
extern void apply_enclosed_cell_glyph();
extern void draw_map_object_marker();
extern void aztec_csav();

show_map_view(view_width, centered_view, mode_flag)
int view_width;
int centered_view;
int mode_flag;
{
	int grid_x, grid_y, grid_width, grid_height;
	int half_width, half_height, target_cell_index;
	long saved_area;

	map_show_objects = mode_flag;
	load_monster_picture(14, 15);
	/* Center the grid, preserving the fixed width for a centered view. */
	grid_width = centered_view != 0 ? 15 :
		(view_width > 4 ? view_width * 2 - 7 : view_width * 2 + 3);
	grid_height = grid_width;
	if (grid_height > 13)
		grid_height = 13;
	half_width = grid_width / 2;
	half_height = grid_height / 2;
	grid_origin_x = 160 - (7 * grid_width) / 2;
	grid_origin_y = 86 - (7 * grid_height) / 2;
	if (map_show_objects != 0)
		view_width = 1;

	/* Each maze variant selects its own glyph set. */
	switch (maze_variant) {
	case 1:
		map_wall2_ns_glyph = view_width > 1 ? 10 : -1;
		map_wall2_ew_glyph = view_width > 1 ? 11 : -1;
		map_wall1_ns_glyph = view_width > 2 ? 12 : (view_width > 1 ? 10 : -1);
		map_wall1_ew_glyph = view_width > 2 ? 13 : (view_width > 1 ? 11 : -1);
		map_wall3_ns_glyph = view_width > 2 ? 14 : (view_width > 1 ? 10 : -1);
		map_wall3_ew_glyph = view_width > 2 ? 15 : (view_width > 1 ? 11 : -1);
		map_floor_glyph =
			1; map_flag2_glyph = -1; map_flag1_glyph = -1;
		map_outside_glyph = 6; map_wall2_enclosed_glyph = 6;
		map_outside_ns_wall_glyph = view_width > 1 ? 10 : -1;
		map_outside_ew_wall_glyph = view_width > 1 ? 11 : -1;
		break;
	case 2:
		map_wall2_ns_glyph=
			view_width>1?16:-1; map_wall2_ew_glyph=view_width>1?17:-1;
		map_wall1_ns_glyph=view_width>2?18:(view_width>1?16:-1);
		map_wall1_ew_glyph=view_width>2?19:(view_width>1?17:-1);
		map_wall3_ns_glyph=view_width>2?20:(view_width>1?16:-1);
		map_wall3_ew_glyph=view_width>2?21:(view_width>1?17:-1);
		map_floor_glyph= 5; map_flag2_glyph=
			4; map_flag1_glyph= 3; map_outside_glyph=
			8; map_wall2_enclosed_glyph= 7;
		map_outside_ns_wall_glyph=
			view_width>1?22:-1; map_outside_ew_wall_glyph=view_width>1?23:-1;
		break;
	case 3:
		map_wall2_ns_glyph=
			view_width>1?16:-1; map_wall2_ew_glyph=view_width>1?17:-1;
		map_wall1_ns_glyph=view_width>2?18:(view_width>1?16:-1);
		map_wall1_ew_glyph=view_width>2?19:(view_width>1?17:-1);
		map_wall3_ns_glyph=view_width>2?20:(view_width>1?16:-1);
		map_wall3_ew_glyph=view_width>2?21:(view_width>1?17:-1);
		map_floor_glyph= 4; map_flag2_glyph=
			3; map_flag1_glyph= -1; map_outside_glyph=
			7; map_wall2_enclosed_glyph= 7;
		map_outside_ns_wall_glyph=
			view_width>1?16:-1; map_outside_ew_wall_glyph=view_width>1?17:-1;
		break;
	case 4:
		map_wall2_ns_glyph=
			view_width>1?24:-1; map_wall2_ew_glyph=view_width>1?25:-1;
		map_wall1_ns_glyph=
			view_width>1?24:-1; map_wall1_ew_glyph=view_width>1?25:-1;
		map_wall3_ns_glyph=
			view_width>1?24:-1; map_wall3_ew_glyph=view_width>1?25:-1;
		map_floor_glyph= 1; map_flag2_glyph=
			4; map_flag1_glyph= -1; map_outside_glyph=
			8; map_wall2_enclosed_glyph= 9;
		map_outside_ns_wall_glyph=
			view_width>1?22:-1; map_outside_ew_wall_glyph=view_width>1?23:-1;
		break;
	case 5:
		map_wall2_ns_glyph=
			view_width>1?24:-1; map_wall2_ew_glyph=view_width>1?25:-1;
		map_wall1_ns_glyph=
			view_width>1?24:-1; map_wall1_ew_glyph=view_width>1?25:-1;
		map_wall3_ns_glyph=
			view_width>1?24:-1; map_wall3_ew_glyph=view_width>1?25:-1;
		map_floor_glyph= 1; map_flag2_glyph=
			4; map_flag1_glyph= -1; map_outside_glyph=
			9; map_wall2_enclosed_glyph= 9;
		map_outside_ns_wall_glyph=
			view_width>1?24:-1; map_outside_ew_wall_glyph=view_width>1?25:-1;
		break;
	case 6:
		map_wall2_ns_glyph=
			view_width>1?16:-1; map_wall2_ew_glyph=view_width>1?17:-1;
		map_wall1_ns_glyph=view_width>2?18:(view_width>1?16:-1);
		map_wall1_ew_glyph=view_width>2?19:(view_width>1?17:-1);
		map_wall3_ns_glyph=view_width>2?20:(view_width>1?16:-1);
		map_wall3_ew_glyph=view_width>2?21:(view_width>1?17:-1);
		map_floor_glyph= 5; map_flag2_glyph=
			4; map_flag1_glyph= 2; map_outside_glyph=
			7; map_wall2_enclosed_glyph= 7;
		map_outside_ns_wall_glyph=-1; map_outside_ew_wall_glyph=-1;
		break;
	}
		/* These glyphs are shared by every variant. */
		map_special_glyph=2; map_wall4_enclosed_glyph=8;
		map_wall4_ns_glyph=
			view_width>1?22:-1; map_wall4_ew_glyph=view_width>1?23:-1;
		map_kind1_glyph=view_width>3?26:map_floor_glyph;
		map_kind2_glyph=view_width>3?27:map_floor_glyph;
		map_kind15_glyph=view_width>3?28:map_floor_glyph;
		map_kind14_glyph=view_width>3?30:map_floor_glyph;
		map_kind9_glyph=view_width>3?29:map_floor_glyph;
		map_kind8_glyph=view_width>3?31:map_floor_glyph;

	/* Clear the per-cell glyph tables, using 0x24 bytes per x column. */
	for (grid_x = 0; grid_x <= grid_width + 1; ++grid_x) {
		for (grid_y = 0; grid_y <= grid_height + 1; ++grid_y) {
			map_floor_glyphs[grid_x][grid_y] = map_floor_glyph;
			map_ns_wall_glyphs[grid_x][grid_y] = -1;
			map_ew_wall_glyphs[grid_x][grid_y] = -1;
		}
	}
	call_fill_area(grid_origin_x, grid_origin_y,
		grid_origin_x + 7 * grid_width - 1,
		grid_origin_y + 7 * grid_height - 1, 0);

	/* Map each grid cell to a world location, then draw the candidate marks. */
	for (grid_y = 1; grid_y <= grid_height; ++grid_y) {
		for (grid_x = 1; grid_x <= grid_width; ++grid_x) {
			build_map_view_cell(party_world_x + grid_x - 1 - half_width,
				party_world_y - (grid_y - 1) + half_height,
				grid_x, grid_y,
				(map_show_objects != 0 || (centered_view == 0 && view_width > 4)) ? 1 : 0);
		}
	}
	if (view_width > 1) {
		for (grid_y = 1; grid_y <= grid_height; ++grid_y)
			for (grid_x = 1; grid_x <= grid_width; ++grid_x)
				apply_enclosed_cell_glyph(grid_x, grid_y);
	}
	for (grid_y = 1; grid_y <= grid_height; ++grid_y) {
		for (grid_x = 1; grid_x <= grid_width; ++grid_x) {
			if (map_floor_glyphs[grid_x][grid_y] != -1)
				draw_grid_cell_char(grid_x - 1, grid_y - 1,
					map_floor_glyphs[grid_x][grid_y], 0, 0);
		}
	}
	/* The next layers include the edge cells indexed from zero. */
	for (grid_y = 0; grid_y <= grid_height + 1; ++grid_y) {
		for (grid_x = 0; grid_x <= grid_width + 1; ++grid_x) {
			if (map_ns_wall_glyphs[grid_x][grid_y] != -1)
				draw_grid_cell_char(grid_x - 1, grid_y - 1,
					map_ns_wall_glyphs[grid_x][grid_y], -1, -1);
			if (map_ew_wall_glyphs[grid_x][grid_y] != -1)
				draw_grid_cell_char(grid_x - 1, grid_y - 1,
					map_ew_wall_glyphs[grid_x][grid_y], -1, -1);
		}
	}
	if (map_show_objects != 0) {
		for (grid_y = 0; grid_y <= grid_height; ++grid_y)
			for (grid_x = 0; grid_x <= grid_width; ++grid_x)
				if (map_object_marks[grid_x][grid_y] == 1)
					draw_map_object_marker(grid_x - 1, grid_y - 1);
	}
	draw_rect_outline(grid_origin_x, grid_origin_y,
		grid_origin_x + 7 * grid_width - 1,
		grid_origin_y + 7 * grid_height - 1);
	call_show_area(72, 33, 248, 141);
	flush_keyboard();
	saved_area = call_save_area(grid_origin_x + 7 * (grid_width / 2),
		grid_origin_y + 7 * (grid_height / 2),
		grid_origin_x + 7 * (grid_width / 2) + 7,
		grid_origin_y + 7 * (grid_height / 2) + 7);
	/* Flash the party marker over the saved square until input arrives. */
	while (!poll_fullscreen_hotspot()) {
		draw_grid_cell_char(grid_width / 2, grid_height / 2,
			party_tag + 32, 0, 0);
		call_show_area(grid_origin_x + 7 * (grid_width / 2),
			grid_origin_y + 7 * (grid_height / 2),
			grid_origin_x + 7 * (grid_width / 2) + 7,
			grid_origin_y + 7 * (grid_height / 2) + 7);
		delay_ms(300);
		call_restore_area(saved_area, 0);
		call_show_area(grid_origin_x + 7 * (grid_width / 2),
			grid_origin_y + 7 * (grid_height / 2),
			grid_origin_x + 7 * (grid_width / 2) + 7,
			grid_origin_y + 7 * (grid_height / 2) + 7);
		delay_ms(300);
	}
	call_restore_area(saved_area, 1);
	free_picture_slot(15);
}
