/* Maze exploration loop: each pass advances the clock, runs timed events
   and encounter checks, sets up the view hotspots, and dispatches one
   player action, until game_state leaves 5. */
#include "msg.h"
#include "structs/maze.h"
#include "structs/pcrec.h"
#include "structs/slotstat.h"
#include "structs/location.h"
#include "structs/arearect.h"

extern struct maze_tables *maze_tables;
extern struct pc_rec party_records[];
extern struct slot_record slot_records[];
extern struct location_record location_records[];
extern int party_region, party_map_piece, party_cell_x, party_cell_y;
extern int base_screen_area, base_screen_area_segment;
extern int party_char_count, party_return_state, party_facing, trigger_facing;
extern int game_state, maze_redraw_pending, location_changed;
extern int party_status_frame, party_status_frame_seen, maze_gate_frame;
extern int maze_message_refresh_pending, party_region_level_saved;
extern long game_time;
extern int maze_sound_pair_state;
extern int current_level, save_location_flag;
extern int party_redraw_interval_elapsed();
extern int member_roster_index, hotspot_hit, floor_item_icon_shown;
extern long maze_refresh_deadline;
extern int mark_connected_maze_cells(), draw_party_member_panel();
extern int set_maze_time_tint(), redraw_maze_view();
extern int test_bit(), refresh_floor_item_icon(), call_restore_area(),
	call_show_area();
extern int update_maze_sound_selection(), run_roaming_npc_turns();
extern int random_below(), update_party_member_tick();
extern int rest_party(), roll_region_outcome(), choose_region_npc();
extern int configure_story_music(), process_maze_object_events();
extern int set_bitmap_bit(), check_at_saved_location(), get_cell_terrain();
extern int display_maze_message(), set_hotspot(), read_cell_kind_direction();
extern int poll_hotspots(), update_maze_refresh_timer(),
	draw_area_number_glyph();
extern int delay_ms(), try_move_party(), decrement_party_status_timers();
extern int clear_marker_string_frames(), take_cell_exit_object();
extern int check_cell_objects(), pick_party_member(), member_is_active();
extern int select_cell_region_object(), play_sound_effect();
extern unsigned char get_filtered_key();
extern long far *tick_counter_ptr;
extern int floor_item_cell_bits[], current_map_block_a[],
	maze_object_cell_bitmap[];
extern int explored_cell_bitmap[];
extern unsigned char code_characters[];
extern int hotspot_rects[];
extern struct area_rectangle screen_area_rectangles[];
extern signed char movement_area_keys[];
extern signed char member_swap_keys[];
extern int maze_variant;
extern int *npc_id_target;


run_maze_loop()
{
	int hit;
	int index;
	int unused_a;
	int time_remainder;
	int cell_bit;
	int screen_x;
	int screen_y;
	int terrain;
	int stamina_due;
	int unused_b;
	int living_count;
	int disabled_count;
	int has_floor_icon;
	int exit_object;
	int cell_direction;
	int direction_output;
	int swimming;

	if (party_region >= 0 &&
	    (unsigned char)maze_tables->map_first[party_map_piece] > party_region)
		party_region = maze_tables->map_first[party_map_piece];
	if (party_return_state != 23)
		mark_connected_maze_cells(party_map_piece, party_cell_x,
			party_cell_y, 0);
	for (index = 0; index < party_char_count; index++)
		draw_party_member_panel(index, 1);
	maze_redraw_pending = 1;
	location_changed = 1;
	party_status_frame = 0;
	party_status_frame_seen = 0;
	maze_gate_frame = 0;
	set_maze_time_tint();
	party_return_state = 5;
	game_state = 5;
	maze_message_refresh_pending = 1;
	floor_item_icon_shown = 1;
	party_region_level_saved = 0;
	do {
		if (maze_redraw_pending == 1)
			redraw_maze_view();
		cell_bit = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
		if (test_bit(floor_item_cell_bits, cell_bit))
			floor_item_icon_shown = refresh_floor_item_icon();
		else if (floor_item_icon_shown != 0) {
			floor_item_icon_shown = 0;
			call_restore_area(base_screen_area, base_screen_area_segment, 0);
			call_show_area(305, 185, 316, 196);
		}
		game_time++;
		set_maze_time_tint();
		switch (maze_sound_pair_state) {
		case 1: update_maze_sound_selection(21, 20, 22, 23, 0, 1); break;
		case 2: update_maze_sound_selection(14, 0, 28, 0, 0, 2); break;
		case 3: update_maze_sound_selection(27, 0, 22, 23, 0, 3); break;
		}
		if (game_time % 60L == 0) run_roaming_npc_turns();
		if (game_time % 240L == 0) {
			index = random_below(100);
			code_characters[index] = random_below(100);
		}
		if (game_time % 10L == 5) {
			for (index = 0; index < party_char_count; index++) {
				if (party_records[index].state < 3) {
					stamina_due = (game_time % 60L) / 10L == index ? 1 : 0;
					if (stamina_due) {
						party_records[index].stamina[0] -=
							party_records[index].stamina_drain + 1;
						if (party_records[index].stamina[0] < 0)
							party_records[index].stamina[0] = 0;
					}
					update_party_member_tick(index, 0, 0, 1, stamina_due);
				}
			}
		}
		/* With everyone disabled, keep resting until someone can act. */
		do {
			living_count = 0;
			disabled_count = 0;
			for (index = 0; index < party_char_count; index++) {
				if (party_records[index].state == 0) {
					living_count++;
					if (party_records[index].status[2] > 0 ||
					    party_records[index].status[3] > 0)
						disabled_count++;
				}
			}
			if (living_count == 0) {
				game_state = 8;
				return;
			}
			if (disabled_count == living_count && rest_party() == 1) {
				*npc_id_target =
					choose_region_npc(roll_region_outcome(party_map_piece));
				configure_story_music(0, 0, 1);
				return;
			}
		} while (disabled_count == living_count);
		cell_bit = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
		if (test_bit(current_map_block_a, cell_bit)) {
			*npc_id_target = choose_region_npc(roll_region_outcome(party_map_piece));
			configure_story_music(1, 0, 1); return;
		}
		if (test_bit(maze_object_cell_bitmap, cell_bit) && location_changed == 1) {
			process_maze_object_events();
			if (game_state != 5) return;
		}
		time_remainder = game_time % 30L;
		if (time_remainder < 22 &&
		    slot_records[time_remainder].health > 0 &&
		    slot_records[time_remainder].activity != 1 &&
		    location_records[slot_records[time_remainder].location]
			.game_state == current_level &&
		    slot_records[time_remainder].map_piece == party_map_piece) {
			*npc_id_target = time_remainder;
			configure_story_music(1, 0, time_remainder != 19);
			game_state = 18;
			return;
		}
		if (random_below(1000) >= 995) {
			*npc_id_target = choose_region_npc(roll_region_outcome(party_map_piece));
			configure_story_music(0, 0, 1);
			return;
		}
		maze_redraw_pending = 0;
		location_changed = 0;
		swimming = 0;
		check_at_saved_location();
		cell_bit = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
		set_bitmap_bit(explored_cell_bitmap, cell_bit, 1);
		terrain = get_cell_terrain();
		if (terrain == 1) {
			if (save_location_flag != 0)
				display_maze_message(MSG_ABOARD_WIKUM_BOAT);
			else {
				display_maze_message(MSG_SWIMMING_2060);
				swimming = 1;
			}
		} else if (terrain == 3)
			display_maze_message(MSG_WILD_ORCHIDS);
		else if (maze_message_refresh_pending == 1) {
			call_show_area(0, 146, 319, 152);
			maze_message_refresh_pending = 0;
		}
		for (index = 0; index < 6; index++)
			set_hotspot(index, screen_area_rectangles[index].left,
				screen_area_rectangles[index].top,
				screen_area_rectangles[index].right,
				screen_area_rectangles[index].bottom,
				movement_area_keys[index], 0);
		set_hotspot(6, 92, 163, 108, 172, 82, 0);
		set_hotspot(7, 88, 175, 107, 186, 83, 0);
		set_hotspot(8, 65, 185, 87, 195, 77, 0);
		set_hotspot(9, 209, 163, 228, 171, 68, 0);
		set_hotspot(10, 213, 175, 228, 185, 79, 0);
		set_hotspot(11, 229, 184, 254, 195, 85, 0);
		for (index = 0; index < 6; index++) {
			screen_x = (index % 2) * 252 + 5;
			screen_y = (index / 2) * 45 + 18;
			set_hotspot(index + 12,
				screen_x + 4, screen_y + 32,
				screen_x + 40, screen_y + 37,
				member_swap_keys[index], 0);
			set_hotspot(index + 18, screen_x, screen_y,
				screen_x + 59, screen_y + 43,
				(char)(index + '1'), 0);
		}
		set_hotspot(24, 305, 185, 316, 196, 71, 0);
		set_hotspot(25, -1, 0, 0, 0, 0, 0);
		exit_object = 0;
		read_cell_kind_direction(cell_bit, &cell_direction, &direction_output);
		/* A hotspot on the cell's exit object or the feature ahead. */
		if (cell_direction > 0) {
			if (cell_direction == 14) {
				set_hotspot(25, 138, 118, 182, 141, 67, 0);
				exit_object = 3;
			} else if ((cell_direction == 8 || cell_direction == 9) &&
			    party_facing % 2 == direction_output % 2) {
				if (cell_direction == 8) {
					set_hotspot(25, 138, 107, 182, 141, 67, 0);
					exit_object = 1;
				} else {
					set_hotspot(25, 138, 34, 182, 94, 67, 0);
					exit_object = 2;
				}
			} else if (party_facing == direction_output) {
				switch (cell_direction) {
				case 4:
					set_hotspot(25, 130, 54, 188, 95, 70, 0);
					break;
				case 5: case 6:
					if (maze_variant == 1)
						set_hotspot(25, 156, 65, 162, 71, 0, 0);
					else
						set_hotspot(25, 156, 59, 162, 65, 0, 0);
					break;
				case 10: case 11:
					set_hotspot(25, 154, 59, 164, 77, 0, 0);
					break;
				}
			}
		}
		set_hotspot(26, -1, 0, 0, 0, 0, 0);
		has_floor_icon = floor_item_icon_shown != 0;
		maze_refresh_deadline = *tick_counter_ptr + 36L;
		do {
			hit = poll_hotspots(hotspot_rects) - 1;
			if (party_redraw_interval_elapsed()) {
				party_status_frame = (party_status_frame + 1) % 2;
				if (hotspot_hit == 0) redraw_maze_view();
			}
			if (hotspot_hit == 0 && *tick_counter_ptr > maze_refresh_deadline)
				update_maze_refresh_timer(0);
		} while (hotspot_hit == 0);
		if (hit >= 12 && hit < 18) {
			member_roster_index = hit - 12;
			if (member_roster_index < party_char_count) game_state = 31;
			continue;
		}
		if (hit >= 18 && hit < 24) {
			member_roster_index = hit - 18;
			if (member_roster_index < party_char_count) {
				decrement_party_status_timers(1);
				game_state = 17;
				party_return_state = 5;
			}
			continue;
		}
		if (hit >= 0 && hit <= 5) {
			draw_area_number_glyph(hit);
			delay_ms(50);
		}
		switch (hit) {
		case 0:
			try_move_party(0); decrement_party_status_timers(
				1); party_region_level_saved = 0; break;
		case 1: case 2:
			clear_marker_string_frames();
			party_facing = (party_facing + (hit == 1 ? 3 : 1)) % 4;
			maze_redraw_pending = 1;
			if (party_facing == trigger_facing) {
				location_changed = 1;
				party_region = maze_tables->map_first[party_map_piece];
			}
			decrement_party_status_timers(1); break;
		case 3: case 4: case 5:
			try_move_party(hit == 3 ? 3 : hit == 4 ? 1 : 2);
			decrement_party_status_timers(1); break;
			/* Unreachable: a debug key whose case label was removed.
			   Reads two digits and meets that NPC id. */
			play_sound_effect(0);
			index = get_filtered_key(2) - '0';
			index = get_filtered_key(2) + index * 10 - '0';
			*npc_id_target = index;
			configure_story_music(0, 0, 1);
			return;
		case 25:
			if (exit_object > 0) {
				take_cell_exit_object(exit_object - 1);
				if (game_state != 5) return;
			} else check_cell_objects(0);
			break;
		case 7:
			check_cell_objects(1); decrement_party_status_timers(1); break;
		case 8: case 11:
			member_roster_index = pick_party_member();
			if (member_roster_index != -1 && member_is_active(member_roster_index)) {
				decrement_party_status_timers(1);
				game_state = hit == 8 ? 19 : 20;
				party_return_state = 5;
			}
			break;
		case 10: select_cell_region_object(); break;
		case 6:
			if (swimming == 0) {
				if (rest_party() == 1) {
					*npc_id_target = choose_region_npc(roll_region_outcome(party_map_piece));
					configure_story_music(0, 0, 1);
				}
			} else play_sound_effect(0);
			break;
		case 9: game_state = 24; break;
		case 24:
			if (has_floor_icon) {
				member_roster_index = pick_party_member();
				if (member_roster_index != -1 && member_is_active(
					member_roster_index)) game_state = 30;
			}
			break;
		}

		if (hit >= 0 && hit <= 5)
			call_show_area(screen_area_rectangles[hit].left,
				screen_area_rectangles[hit].top,
				screen_area_rectangles[hit].right,
				screen_area_rectangles[hit].bottom);
	} while (game_state == 5);
}
