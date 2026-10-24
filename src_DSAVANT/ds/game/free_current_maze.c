/* frees the current maze plus the extra mazes and picture slots its variant
   loaded, then marks no maze current */

extern int current_maze, maze_variant, maze_state;

free_current_maze()
{
	if (current_maze >= 0) {	/* -1: nothing loaded */
		gfx_free_maze(current_maze);
		switch (maze_variant) {	/* 0 and out-of-range: nothing extra */
		case 1:
			gfx_free_maze(5);
			free_picture_slot(5);
			free_picture_slot(9);
			free_picture_slot(10);
			free_picture_slot(13);
			break;
		case 2:
			gfx_free_maze(4);
			gfx_free_maze(6);
			free_picture_slot(13);
			break;
		case 3:
			gfx_free_maze(4);
			gfx_free_maze(5);
			gfx_free_maze(6);
			free_picture_slot(5);
			free_picture_slot(10);
			free_picture_slot(11);
			free_picture_slot(12);
			break;
		case 4:
			gfx_free_maze(4);
			free_picture_slot(13);
			break;
		case 5:
			gfx_free_maze(4);
			gfx_free_maze(5);
			free_picture_slot(10);
			free_picture_slot(11);
			free_picture_slot(12);
			free_picture_slot(9);
			free_picture_slot(13);
			break;
		case 6:
			gfx_free_maze(4);
			gfx_free_maze(5);
			free_picture_slot(12);
			free_picture_slot(9);
			free_picture_slot(13);
			break;
		}
	}
	maze_state = 0;
	current_maze = -1;	/* no maze loaded */
}
