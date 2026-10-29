/* Dispatch the object event attached to each region the party enters. */

#include "structs/maze.h"

extern struct maze_tables *maze_tables;
extern int object_search_active, found_object_owner;
extern int party_region, party_map_piece, party_cell_y, party_cell_x;
extern int region_step_flag, location_changed, game_state;

extern int find_object_at();
extern int get_bits();
extern int show_maze_message_sequence();
extern int advance_maze_region();
extern int update_region_quest_map_flags();
extern int store_party_region_level();
extern int run_region_keyed_action();
extern int show_region_message();
extern int check_region_trigger_bit_14();
extern int check_region_trigger_bit_2();
extern int process_region_flag_actions();
extern int collect_region_flag_bits();
extern int update_party_status_animation();
extern int handle_region_flag_event();
extern int play_region_spell_sound();
extern int handle_region_level_event();
extern int handle_region_object_search();
extern int handle_region_bit_8_event();
extern int decode_region_map_location();
extern int wait_then_handle_region_event();
extern int handle_region_flag_3_event();
extern int handle_region_flag_2_event();

process_maze_object_events()
{
	object_search_active = 1;
	found_object_owner = -1;
	for (;;) {
		/* Search from the current region and stop when no object is found. */
		party_region = find_object_at(party_cell_x, party_cell_y,
			party_map_piece, party_region);
		if (party_region == -1)
			goto done;

		region_step_flag = 1;
		/* Event types select the action associated with this object. */
		switch (maze_tables->type[party_region]) {
		case 1:
			run_region_keyed_action();
			break;
		case 2:
			if (location_changed != 0)
				show_region_message();
			break;
		case 3:
			check_region_trigger_bit_14();
			break;
		case 4:
			advance_maze_region();
			break;
		case 5:
			check_region_trigger_bit_2();
			break;
		case 6:
			process_region_flag_actions();
			break;
		case 7:
			collect_region_flag_bits();
			break;
		case 8:
			if (maze_tables->key[party_region] > 0) {
				show_maze_message_sequence(
					maze_tables->key[party_region], 0);
			} else if (get_bits(maze_tables->flags[party_region], 11, 1)) {
				update_party_status_animation();
			}
			break;
		case 9:
			game_state = 29;
			break;
		case 10:
			handle_region_flag_event();
			break;
		case 11:
			play_region_spell_sound();
			break;
		case 12:
			game_state = 28;
			break;
		case 13:
			handle_region_level_event();
			break;
		case 14:
			update_region_quest_map_flags();
			break;
		case 15:
			break;
		case 16:
			handle_region_object_search();
			break;
		case 17:
			handle_region_bit_8_event();
			break;
		case 18:
			store_party_region_level();
			break;
		case 19:
			break;
		case 20:
			break;
		case 21:
			decode_region_map_location();
			break;
		case 22:
			wait_then_handle_region_event();
			break;
		case 23:
			handle_region_flag_3_event();
			break;
		case 24:
			handle_region_flag_2_event();
			break;
		case 25:
			break;
		}

		/* Other game states stop; state 5 advances to the next region. */
		if (game_state != 5)
			return;
		if (region_step_flag == 1)
			party_region++;
	}
done:
	return;
}
