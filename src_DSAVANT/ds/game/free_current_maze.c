/* frees the current maze plus the extra mazes and picture slots its variant
   loaded, then marks no maze current */

extern int current_maze, maze_variant, maze_state;

free_current_maze()
{
	if (current_maze >= 0) {	/* -1: nothing loaded */
		call_free_maze(current_maze);
		switch (maze_variant) {	/* 0 and out-of-range: nothing extra */
		case 1:
			call_free_maze(5);
			free_picture_slot(5);
			free_picture_slot(9);
			free_picture_slot(10);
			free_picture_slot(13);
			break;
		case 2:
			call_free_maze(4);
			call_free_maze(6);
			free_picture_slot(13);
			break;
		case 3:
			call_free_maze(4);
			call_free_maze(5);
			call_free_maze(6);
			free_picture_slot(5);
			free_picture_slot(10);
			free_picture_slot(11);
			free_picture_slot(12);
			break;
		case 4:
			call_free_maze(4);
			free_picture_slot(13);
			break;
		case 5:
			call_free_maze(4);
			call_free_maze(5);
			free_picture_slot(10);
			free_picture_slot(11);
			free_picture_slot(12);
			free_picture_slot(9);
			free_picture_slot(13);
			break;
		case 6:
			call_free_maze(4);
			call_free_maze(5);
			free_picture_slot(12);
			free_picture_slot(9);
			free_picture_slot(13);
			break;
		}
	}
	maze_state = 0;
	current_maze = -1;	/* no maze loaded */
}
