/* Turn away from an encounter and attempt to flee through nearby cells. */
extern int party_return_state, game_state;
extern int party_map_piece, party_cell_x, party_cell_y, party_facing;
extern int current_level, previous_level, previous_party_facing;
extern int party_status_frame;
extern void aztec_setmem(), call_show_area(), set_bitmap_bit();
extern int party_redraw_interval_elapsed(), show_running_message();
extern void redraw_maze_view(), wait_for_hotspot_timeout();
extern void save_previous_party_position(), show_previous_party_position();
extern int random_below(), move_party_if_passable();

run_from_encounter(steps)
int steps;
{
	int target_facing, turn, message_shown, side_turn, moved;
	char visited[128];

	aztec_setmem(visited, 128, 0);
	party_return_state = 23;
	game_state = 5;
	call_show_area(0, 146, 319, 152);
	message_shown = 0;
	set_bitmap_bit(visited,
		(party_map_piece << 6) + (party_cell_y << 3) + party_cell_x, 1);
	target_facing = party_facing;
	if (current_level == previous_level)
		target_facing = (previous_party_facing + 2) % 4;
	turn = (party_facing + 3) % 4 == target_facing ? 3 : 1;
	while (party_facing != target_facing) {
		party_facing = (party_facing + turn) % 4;
		if (party_redraw_interval_elapsed())
			party_status_frame = (party_status_frame + 1) % 2;
		redraw_maze_view();
		if (message_shown == 0)
			message_shown = show_running_message();
		wait_for_hotspot_timeout(2);
	}
	side_turn = -1;
	do {
		moved = 0;
		save_previous_party_position();
		if (side_turn != -1 && random_below(4) == 0) {
			party_facing = (party_facing + side_turn) % 4;
			if (move_party_if_passable(visited) == 0) {
				if (message_shown == 0)
					message_shown = show_running_message();
				show_previous_party_position();
				moved = 1;
			} else {
				party_facing = (party_facing + 2) % 4;
				if (move_party_if_passable(visited) == 0) {
					if (message_shown == 0)
						message_shown = show_running_message();
					show_previous_party_position();
					moved = 1;
				} else
					party_facing = previous_party_facing;
			}
		}
		if (moved == 0 && move_party_if_passable(visited) == 1) {
			party_facing = (((random_below(2) == 0) ? 1 : 3) + party_facing) % 4;
			if (move_party_if_passable(visited) == 0)
				show_previous_party_position();
			else {
				party_facing = (party_facing + 2) % 4;
				if (move_party_if_passable(visited) == 0)
					show_previous_party_position();
				else {
					party_facing = previous_party_facing;
					call_show_area(0, 146, 319, 152);
					return;
				}
			}
		}
		set_bitmap_bit(visited,
			(party_map_piece << 6) + (party_cell_y << 3) + party_cell_x, 1);
		if (party_redraw_interval_elapsed())
			party_status_frame = (party_status_frame + 1) % 2;
		redraw_maze_view();
		if (message_shown == 0)
			message_shown = show_running_message();
		wait_for_hotspot_timeout(2);
		call_show_area(0, 146, 319, 152);
		side_turn = random_below(2) ? 1 : 3;
		steps--;
	} while (steps > 0);
}
