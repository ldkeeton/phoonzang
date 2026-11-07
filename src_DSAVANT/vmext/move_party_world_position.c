/* Move the party in world coordinates after clearing adjacent object data. */
extern int adjacent_object_type[4];
extern int party_status_frame_step;
extern int party_world_x, party_world_y;
extern int setmem();

/* Move by distance in the specified cardinal direction. */
move_party_world_position(direction, distance)
int direction, distance;
{
	setmem(adjacent_object_type, 8, 0);
	party_status_frame_step = 0;
	switch (direction) {
	case 0: party_world_y += distance; break;
	case 1: party_world_x += distance; break;
	case 2: party_world_y -= distance; break;
	case 3: party_world_x -= distance; break;
	}
}
