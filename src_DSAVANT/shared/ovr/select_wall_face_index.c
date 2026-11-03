/* Selects a wall-face index according to the animation phase. */

extern int side_wall_animation_phase;

int select_wall_face_index(default_index, animated_index)
int default_index;
int animated_index;
{
	/* A nonzero animation phase selects the alternate face. */
	return side_wall_animation_phase ? animated_index : default_index;
}
