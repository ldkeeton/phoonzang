/* Build and animate the grid used to choose a spell target. */
extern int target_grid_mode;
extern int target_spell_top_left, target_spell_top_right,
	target_spell_middle_left, target_spell_middle_right, target_spell_lower_left,
	target_spell_lower_right;
extern int target_spell_base_index, target_spell_row_offset,
	target_spell_column_offset, target_spell_row_count, target_spell_column_count;
extern int target_spell_final_left, target_spell_final_right,
	target_spell_fixed_index, target_spell_fixed_pair, target_spell_center_left,
	target_spell_center_right;
extern int target_spell_index_a, target_spell_index_b, target_spell_index_c,
	target_spell_index_d, target_spell_index_e, target_spell_index_f;
extern int target_grid_primary[][18], target_grid_secondary[][18],
	target_grid_tertiary[][18], target_grid_overlay_flags[][18];
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
extern void set_spell_target_grid_cell();
extern void match_spell_target_grid_cell();
extern void draw_spell_target_marker();
extern void aztec_csav();

animate_spell_target_grid(view_width, centered_view, mode_flag)
int view_width;
int centered_view;
int mode_flag;
{
	int grid_row, grid_column, grid_width, grid_height;
	int half_width, half_height, target_cell_index;
	long saved_area;

	target_grid_mode = mode_flag;
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
	if (target_grid_mode != 0)
		view_width = 1;

	/* Variant cases select map coordinates and the index ranges to draw. */
	switch (maze_variant) {
	case 1:
		target_spell_top_left = view_width > 1 ? 10 : -1;
		target_spell_top_right = view_width > 1 ? 11 : -1;
		target_spell_middle_left = view_width > 2 ? 12 : (view_width > 1 ? 10 : -1);
		target_spell_middle_right = view_width > 2 ? 13 : (view_width > 1 ? 11 : -1);
		target_spell_lower_left = view_width > 2 ? 14 : (view_width > 1 ? 10 : -1);
		target_spell_lower_right = view_width > 2 ? 15 : (view_width > 1 ? 11 : -1);
		target_spell_base_index =
			1; target_spell_row_offset = -1; target_spell_column_offset = -1;
		target_spell_row_count = 6; target_spell_column_count = 6;
		target_spell_final_left = view_width > 1 ? 10 : -1;
		target_spell_final_right = view_width > 1 ? 11 : -1;
		break;
	case 2:
		target_spell_top_left=
			view_width>1?16:-1; target_spell_top_right=view_width>1?17:-1;
		target_spell_middle_left=view_width>2?18:(view_width>1?16:-1);
		target_spell_middle_right=view_width>2?19:(view_width>1?17:-1);
		target_spell_lower_left=view_width>2?20:(view_width>1?16:-1);
		target_spell_lower_right=view_width>2?21:(view_width>1?17:-1);
		target_spell_base_index= 5; target_spell_row_offset=
			4; target_spell_column_offset= 3; target_spell_row_count=
			8; target_spell_column_count= 7;
		target_spell_final_left=
			view_width>1?22:-1; target_spell_final_right=view_width>1?23:-1;
		break;
	case 3:
		target_spell_top_left=
			view_width>1?16:-1; target_spell_top_right=view_width>1?17:-1;
		target_spell_middle_left=view_width>2?18:(view_width>1?16:-1);
		target_spell_middle_right=view_width>2?19:(view_width>1?17:-1);
		target_spell_lower_left=view_width>2?20:(view_width>1?16:-1);
		target_spell_lower_right=view_width>2?21:(view_width>1?17:-1);
		target_spell_base_index= 4; target_spell_row_offset=
			3; target_spell_column_offset= -1; target_spell_row_count=
			7; target_spell_column_count= 7;
		target_spell_final_left=
			view_width>1?16:-1; target_spell_final_right=view_width>1?17:-1;
		break;
	case 4:
		target_spell_top_left=
			view_width>1?24:-1; target_spell_top_right=view_width>1?25:-1;
		target_spell_middle_left=
			view_width>1?24:-1; target_spell_middle_right=view_width>1?25:-1;
		target_spell_lower_left=
			view_width>1?24:-1; target_spell_lower_right=view_width>1?25:-1;
		target_spell_base_index= 1; target_spell_row_offset=
			4; target_spell_column_offset= -1; target_spell_row_count=
			8; target_spell_column_count= 9;
		target_spell_final_left=
			view_width>1?22:-1; target_spell_final_right=view_width>1?23:-1;
		break;
	case 5:
		target_spell_top_left=
			view_width>1?24:-1; target_spell_top_right=view_width>1?25:-1;
		target_spell_middle_left=
			view_width>1?24:-1; target_spell_middle_right=view_width>1?25:-1;
		target_spell_lower_left=
			view_width>1?24:-1; target_spell_lower_right=view_width>1?25:-1;
		target_spell_base_index= 1; target_spell_row_offset=
			4; target_spell_column_offset= -1; target_spell_row_count=
			9; target_spell_column_count= 9;
		target_spell_final_left=
			view_width>1?24:-1; target_spell_final_right=view_width>1?25:-1;
		break;
	case 6:
		target_spell_top_left=
			view_width>1?16:-1; target_spell_top_right=view_width>1?17:-1;
		target_spell_middle_left=view_width>2?18:(view_width>1?16:-1);
		target_spell_middle_right=view_width>2?19:(view_width>1?17:-1);
		target_spell_lower_left=view_width>2?20:(view_width>1?16:-1);
		target_spell_lower_right=view_width>2?21:(view_width>1?17:-1);
		target_spell_base_index= 5; target_spell_row_offset=
			4; target_spell_column_offset= 2; target_spell_row_count=
			7; target_spell_column_count= 7;
		target_spell_final_left=-1; target_spell_final_right=-1;
		break;
	}
		/* All variants share the base coordinates for the final six indices. */
		target_spell_fixed_index=2; target_spell_fixed_pair=8;
		target_spell_center_left=
			view_width>1?22:-1; target_spell_center_right=view_width>1?23:-1;
		target_spell_index_a=view_width>3?26:target_spell_base_index;
		target_spell_index_b=view_width>3?27:target_spell_base_index;
		target_spell_index_c=view_width>3?28:target_spell_base_index;
		target_spell_index_d=view_width>3?30:target_spell_base_index;
		target_spell_index_e=view_width>3?29:target_spell_base_index;
		target_spell_index_f=view_width>3?31:target_spell_base_index;

	/* Initialize the per-cell index tables, using 0x24 bytes per row. */
	for (grid_row = 0; grid_row <= grid_width + 1; ++grid_row) {
		for (grid_column = 0; grid_column <= grid_height + 1; ++grid_column) {
			target_grid_primary[grid_row][grid_column] = target_spell_base_index;
			target_grid_secondary[grid_row][grid_column] = -1;
			target_grid_tertiary[grid_row][grid_column] = -1;
		}
	}
	call_fill_area(grid_origin_x, grid_origin_y,
		grid_origin_x + 7 * grid_width - 1,
		grid_origin_y + 7 * grid_height - 1, 0);

	/* Map each grid cell to a world location, then draw the candidate marks. */
	for (grid_column = 1; grid_column <= grid_height; ++grid_column) {
		for (grid_row = 1; grid_row <= grid_width; ++grid_row) {
			set_spell_target_grid_cell(party_world_x + grid_row - 1 - half_width,
				party_world_y - (grid_column - 1) + half_height,
				grid_row, grid_column,
				(target_grid_mode != 0 || (centered_view == 0 && view_width > 4)) ? 1 : 0);
		}
	}
	if (view_width > 1) {
		for (grid_column = 1; grid_column <= grid_height; ++grid_column)
			for (grid_row = 1; grid_row <= grid_width; ++grid_row)
				match_spell_target_grid_cell(grid_row, grid_column);
	}
	for (grid_column = 1; grid_column <= grid_height; ++grid_column) {
		for (grid_row = 1; grid_row <= grid_width; ++grid_row) {
			if (target_grid_primary[grid_row][grid_column] != -1)
				draw_grid_cell_char(grid_row - 1, grid_column - 1,
					target_grid_primary[grid_row][grid_column], 0, 0);
		}
	}
	/* The next layers include the edge cells indexed from zero. */
	for (grid_column = 0; grid_column <= grid_height + 1; ++grid_column) {
		for (grid_row = 0; grid_row <= grid_width + 1; ++grid_row) {
			if (target_grid_secondary[grid_row][grid_column] != -1)
				draw_grid_cell_char(grid_row - 1, grid_column - 1,
					target_grid_secondary[grid_row][grid_column], -1, -1);
			if (target_grid_tertiary[grid_row][grid_column] != -1)
				draw_grid_cell_char(grid_row - 1, grid_column - 1,
					target_grid_tertiary[grid_row][grid_column], -1, -1);
		}
	}
	if (target_grid_mode != 0) {
		for (grid_column = 0; grid_column <= grid_height; ++grid_column)
			for (grid_row = 0; grid_row <= grid_width; ++grid_row)
				if (target_grid_overlay_flags[grid_row][grid_column] == 1)
					draw_spell_target_marker(grid_row - 1, grid_column - 1);
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
