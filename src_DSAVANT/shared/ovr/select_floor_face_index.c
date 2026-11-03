/* Selects a floor-face index from the checker parity flag. */

extern int floor_checker_parity;

select_floor_face_index(default_index, alternate_index)
int default_index;
int alternate_index;
{
	/* Nonzero checker parity selects the alternate face index. */
	return floor_checker_parity ? alternate_index : default_index;
}
