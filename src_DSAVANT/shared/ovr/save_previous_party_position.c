/* Snapshot the party's current position, level, and facing. */

extern int party_world_x;
extern int party_world_y;
extern int party_cell_x;
extern int party_cell_y;
extern int party_map_piece;
extern int current_level;
extern int party_facing;
extern int previous_party_world_x;
extern int previous_party_world_y;
extern int previous_party_cell_x;
extern int previous_party_cell_y;
extern int previous_party_map_piece;
extern int previous_level;
extern int previous_party_facing;

save_previous_party_position()
{
	previous_party_world_x = party_world_x;
	previous_party_world_y = party_world_y;
	previous_party_cell_x = party_cell_x;
	previous_party_cell_y = party_cell_y;
	previous_party_map_piece = party_map_piece;
	previous_level = current_level;
	previous_party_facing = party_facing;
}
