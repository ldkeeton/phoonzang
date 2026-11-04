/* Try to move the party one cell in a direction relative to its facing. */
#include "msg.h"

extern int party_facing, party_world_y, party_world_x;
extern int party_cell_y, party_cell_x, party_map_piece;
extern int adjacent_object_type[4];
extern int maze_gate_frame, loaded_sound_id, location_changed;
extern int message_delay, blocked_move_message;
extern int get_cell_wall(), move_party_maze_step();
extern int ensure_sound_loaded(), play_sound_effect();
extern int redraw_maze_view(), wait_and_free_sound();
extern int wait_for_hotspot_timeout(), display_message_with_sound();

try_move_party(relative_direction)
int relative_direction;
{
	int wall_kind;
	int direction;

	/* Default message for a blocked move. */
	blocked_move_message = 2020;
	direction = (party_facing + relative_direction + 4) % 4;
	wall_kind = get_cell_wall(direction, party_map_piece, party_cell_x,
		party_cell_y, party_world_x, party_world_y);
	switch (adjacent_object_type[direction]) {
	case 0:
		/* Wall kinds 0, 1 and 5 let the party step through. */
		if (wall_kind < 2 || wall_kind == 5) {
			if (move_party_maze_step(direction))
				return;
		} else if (wall_kind == 3 && direction == party_facing) {
			/* Animate and open a gate facing the party. */
			ensure_sound_loaded(15);
			play_sound_effect(1);
			maze_gate_frame = 1;
			redraw_maze_view();
			play_sound_effect(16);
			wait_and_free_sound(16);
			loaded_sound_id = -1;
			wait_for_hotspot_timeout(2);
			maze_gate_frame = 2;
			redraw_maze_view();
			wait_for_hotspot_timeout(2);
			maze_gate_frame = 0;
			if (move_party_maze_step(direction))
				return;
		}
		if (location_changed == 0)
			display_message_with_sound(blocked_move_message,
				blocked_move_message == 2020 ? 2 : 0, 2);
		break;
	case 1:
	case 2:
		if ((wall_kind == 6 || wall_kind == 3) &&
		    direction == party_facing)
			display_message_with_sound(MSG_LOCKED, 2,
				message_delay / 2);
		else
			display_message_with_sound(blocked_move_message, 2, 2);
		break;
	case 3:
		if (wall_kind == 2) {
			if (move_party_maze_step(direction))
				return;
		} else {
			display_message_with_sound(blocked_move_message, 2, 2);
		}
		break;
	}
}
