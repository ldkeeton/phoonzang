/* Load the extra maze sounds selected by the current variant. */

extern int maze_variant;
extern int load_maze_sound_pair();
extern int update_maze_sound_selection();

load_maze_variant_resources()
{
	/* The constants are resource IDs and selector values passed to the
	   helpers. */
	switch (maze_variant) {
	case 1:
		load_maze_sound_pair(25, 26);
		break;
	case 2:
	case 4:
		update_maze_sound_selection(21, 20, 22, 23, 1, 1);
		break;
	case 3:
		update_maze_sound_selection(14, 0, 28, 0, 1, 2);
		break;
	case 5:
		load_maze_sound_pair(29, 24);
		break;
	case 6:
		update_maze_sound_selection(27, 0, 22, 23, 1, 3);
		break;
	}
}
