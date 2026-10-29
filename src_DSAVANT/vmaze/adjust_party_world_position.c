/* Update world coordinates for one directional maze movement. */

extern int location_changed, party_status_frame_step;
extern char adjacent_object_type[];
extern int party_world_x, party_world_y;
extern int aztec_setmem();

adjust_party_world_position(direction, distance)
int direction;
int distance;
{
	location_changed = 1;
	/* Clear the eight adjacent-object entries before moving. */
	aztec_setmem(adjacent_object_type, 8, 0);
	party_status_frame_step = 0;

	/* The four direction codes change one world coordinate. */
	switch (direction) {
	case 0:
		party_world_y += distance;
		break;
	case 1:
		party_world_x += distance;
		break;
	case 2:
		party_world_y -= distance;
		break;
	case 3:
		party_world_x -= distance;
		break;
	}
}
