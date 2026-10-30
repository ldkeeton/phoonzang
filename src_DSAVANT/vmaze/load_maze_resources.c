/* Select and load the maze files and monster pictures for this game state. */

extern int game_state_arg;
extern int maze_variant;
extern int maze_state;
extern int current_maze;
extern int boundary_wall_open;
extern int free_current_maze();
extern int load_maze_file();
extern int load_monster_picture();
extern int load_maze_variant_resources();
extern char variant_1_maze_filename[], variant_1_water_filename[],
	variant_2_tree_filename[], variant_2_other_town_filename[];
extern char variant_2_tile_filename[], variant_3_town_filename[],
	variant_3_other_town_filename[], variant_3_water_filename[];
extern char variant_3_tile_filename[], variant_4_tree_filename[],
	variant_4_other_cave_filename[], variant_5_cave_filename[];
extern char variant_5_other_cave_filename[], variant_5_water_filename[],
	variant_6_tree_filename[], variant_6_other_town_filename[];
extern char variant_6_water_filename[];

load_maze_resources()
{
	int selected_maze_variant;

	/* Clear the boundary-wall override before choosing a region variant. */
	boundary_wall_open = 0;

	/* Map game-state values onto the maze data set used by that region. */
	switch (game_state_arg) {
	case 15:
	case 23:
	case 24:
	case 26:
	case 29:
	case 30:
		selected_maze_variant = 1;
		break;
	case 0:
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 13:
		selected_maze_variant = 2;
		break;
	case 14:
	case 16:
	case 17:
	case 18:
	case 19:
	case 20:
	case 21:
	case 31:
		selected_maze_variant = 3;
		break;
	case 27:
		/* This state enables the boundary wall before using variant 4. */
		boundary_wall_open = 1;
	case 7:
		selected_maze_variant = 4;
		break;
	case 22:
	case 25:
	case 28:
		selected_maze_variant = 5;
		break;
	case 8:
	case 9:
	case 10:
	case 11:
	case 12:
		selected_maze_variant = 6;
		break;
	}

	/* Reuse loaded resources when the selected variant has not changed. */
	if (maze_state != 0 && selected_maze_variant == maze_variant) {
		goto load_variant_resources;
	}

	free_current_maze();
	maze_variant = selected_maze_variant;

	/* Load each variant's map files and monster pictures into its slots. */
	switch (selected_maze_variant) {
	case 1:
		/* Variant 1 uses the maze and water maps. */
		load_maze_file(variant_1_maze_filename, 0);
		load_maze_file(variant_1_water_filename, 5);
		load_monster_picture(6, 5);
		load_monster_picture(15, 9);
		load_monster_picture(16, 10);
		load_monster_picture(57, 13);
		current_maze = 0;
		goto load_variant_resources;
	case 2:
		/* Variant 2 uses tree, other-town, and tile maps. */
		load_maze_file(variant_2_tree_filename, 1);
		load_maze_file(variant_2_other_town_filename, 4);
		load_maze_file(variant_2_tile_filename, 6);
		load_monster_picture(58, 13);
		current_maze = 1;
		goto load_variant_resources;
	case 3:
		/* Variant 3 uses town, other-town, water, and tile maps. */
		load_maze_file(variant_3_town_filename, 2);
		load_maze_file(variant_3_other_town_filename, 4);
		load_maze_file(variant_3_water_filename, 5);
		load_maze_file(variant_3_tile_filename, 6);
		load_monster_picture(8, 5);
		load_monster_picture(16, 10);
		load_monster_picture(17, 11);
		load_monster_picture(59, 12);
		current_maze = 2;
		goto load_variant_resources;
	case 4:
		/* Variant 4 uses tree and other-cave maps. */
		load_maze_file(variant_4_tree_filename, 1);
		load_maze_file(variant_4_other_cave_filename, 4);
		load_monster_picture(58, 13);
		current_maze = 1;
		goto load_variant_resources;
	case 5:
		/* Variant 5 uses cave, other-cave, and water maps. */
		load_maze_file(variant_5_cave_filename, 2);
		load_maze_file(variant_5_other_cave_filename, 4);
		load_maze_file(variant_5_water_filename, 5);
		load_monster_picture(16, 10);
		load_monster_picture(54, 11);
		load_monster_picture(59, 12);
		load_monster_picture(83, 9);
		load_monster_picture(56, 13);
		current_maze = 2;
		break;
	case 6:
		/* Variant 6 uses tree, other-town, and water maps. */
		load_maze_file(variant_6_tree_filename, 1);
		load_maze_file(variant_6_other_town_filename, 4);
		load_maze_file(variant_6_water_filename, 5);
		load_monster_picture(59, 12);
		load_monster_picture(83, 9);
		load_monster_picture(58, 13);
		current_maze = 1;
		goto load_variant_resources;
	}

load_variant_resources:
	load_maze_variant_resources();
	maze_state = 1;
	return;
}
