/* Choose the maze event outcome and mark the resulting map bits. */

#include "structs/maze.h"
#include "structs/pcrec.h"
#include "structs/rgnstate.h"

extern struct maze_tables *maze_tables;
extern struct pc_rec party_records[];
extern struct saved_region_blocks party_region;
extern int member_roster_index, party_char_count;
extern int game_state_arg;
extern unsigned char scenario_header_data[][16];

extern int wait_ticks_or_key();
extern int get_bits();
extern int pick_party_member();
extern int member_is_active();
extern int try_raise_member_skill();
extern int random_below();
extern int set_bitmap_bit();
extern int mark_region_bits();

wait_then_handle_region_event()
{
	int region_flags;
	int member_index;
	int event_roll_limit;
	int unused_local;
	int event_threshold;
	int event_roll;
	int selected_map;

	/* Pause briefly, then read the current region's event controls. */
	wait_ticks_or_key(5);
	region_flags = maze_tables->flags[party_region.region];
	event_roll_limit = get_bits(region_flags, 0, 8);
	event_threshold = maze_tables->arg[party_region.region];

	/* A zero mode uses one active member's stat and a packed region value. */
	if (event_threshold == 0) {
		for (;;) {
			member_index = pick_party_member();
			if (member_index != -1 && member_is_active(member_index))
				break;
		}
		event_threshold = party_records[member_index].stat[
			get_bits(region_flags, 11, 3)];
	}
	/* Mode 0xfe computes a threshold from the active party member. */
	else if (event_threshold == 254) {
		if (event_roll_limit == 21)
			try_raise_member_skill(member_roster_index, 18, 1);
		event_threshold = party_records[member_roster_index].stat[4] / 2
			+ party_records[member_roster_index].skills[18] / 3;
	}
	/* Mode 0xff averages the matching field over active party members. */
	else if (event_threshold == 255) {
		event_threshold = 0;
		member_index = 0;
		/* Test at the loop tail after skipping the initial empty body. */
		goto check_party_member;
	party_member_loop:
			if (member_is_active(member_index)) {
				event_threshold += party_records[member_index].skills[11];
				try_raise_member_skill(member_index, 11, 2);
			}
			member_index++;
	check_party_member:
		if (member_index < party_char_count)
			goto party_member_loop;
		event_threshold /= party_char_count;
	}

	/* Compare a random roll with the computed threshold to choose a map. */
	event_roll = random_below(event_roll_limit);
	selected_map = event_roll < event_threshold ?
		maze_tables->key[party_region.region] :
		maze_tables->party_mask[party_region.region];

	/* Clear the matching party bitmap bit; optionally clear the scenario bit. */
	set_bitmap_bit(party_region.state[game_state_arg], selected_map, 0);
	if (get_bits(region_flags, 8, 1) == 1)
		set_bitmap_bit(scenario_header_data[game_state_arg], selected_map, 0);

	/* Forward the two-bit region marker stored with this event. */
	mark_region_bits(get_bits(region_flags, 9, 2));
}
