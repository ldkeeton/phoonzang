/* Wait through the party's rest period and process each game tick. */
#include "structs/pcrec.h"
#include "structs/maze.h"
#include "structs/mazecell.h"
#include "structs/rgnstate.h"
#include "msg.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;

extern struct pc_rec party_records[];
extern struct maze_tables *maze_tables;
extern struct maze_cells *maze_data;
extern long game_time, game_time_aux_a, game_time_aux_b;
extern int story_music_enabled, story_score_number, story_score_volume;
extern int party_char_count, party_map_piece, party_cell_y, party_cell_x;
extern int current_level, game_state, party_region_level_saved;
extern struct saved_region_blocks party_region;
extern int camp_score_number, rest_interrupt_flag;
extern unsigned char code_characters[];
extern int score_music_enabled(), stop_and_clear_maze_sounds();
extern int load_score_files(), play_score_at_volume(), show_message();
extern int test_bit(), call_is_music_playing(), advance_party_redraw_frame();
extern int draw_party_member_panel(), relocate_party_if_none_active();
extern int poll_fullscreen_hotspot(), delay_ms(), set_maze_time_tint();
extern int decrement_party_status_timers(), random_below();
extern int update_party_member_tick(), run_roaming_npc_turns();
extern int call_stop_music(), free_loaded_score(), call_show_area();
extern int fade_out_music(), load_maze_variant_resources();

rest_party()
{
	int member_index;
	int random_slot;
	int unused_a;
	int tick_counter;
	int unused_b;
	int remaining_game_quanta;
	int elapsed_minutes;
	int random_threshold;
	int music_tick_limit;
	int is_party_cell_flagged;
	int relocation_checked;
	int cell_index;

	stop_and_clear_maze_sounds();
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(1, 0);
		story_score_number = camp_score_number;
		story_score_volume = play_score_at_volume(0, story_score_number, 0);
	}
	show_message(MSG_RESTING);
	rest_interrupt_flag = 0;
	game_time_aux_b += game_time - game_time_aux_a;
	/* Keep the elapsed fraction in the auxiliary clock for a later rest. */
	remaining_game_quanta = game_time_aux_b / 60;
	elapsed_minutes = 0;
	/* Convert each four-quarter chunk to one elapsed minute. */
	while (remaining_game_quanta >= 4) {
		elapsed_minutes++;
		remaining_game_quanta -= 4;
		game_time_aux_b -= 240;
	}
	game_time_aux_a = game_time;
	/* Without music, rest lasts 48 ticks; with music, until the score ends. */
	music_tick_limit = !story_music_enabled ? 48 : 0;
	tick_counter = 0;
	is_party_cell_flagged = 0;
	relocation_checked = 0;
	if (current_level == 0) {
		/* On level 0, a cell_flags_third bit marks a safe rest cell. */
		cell_index = (party_map_piece << 6) + (party_cell_y << 3) + party_cell_x;
		is_party_cell_flagged = test_bit(maze_data->cell_flags_third, cell_index);
	}
	/* Advance time until music ends, or until another state or input has
	   taken control. */
	for (;;) {
		if ((tick_counter >= music_tick_limit && !call_is_music_playing()) ||
		    rest_interrupt_flag != 0 || game_state != 5)
			break;
		while (!advance_party_redraw_frame()) ; /* Wait for a redraw frame. */
		/* Mark each member tired while the party redraw is in progress. */
		for (member_index = 0; member_index < party_char_count; member_index++) {
			party_records[member_index].status[2] = 10;
			draw_party_member_panel(member_index, 1);
		}
		/* Relocate only once when the saved surface-cell flag is set. */
		if (is_party_cell_flagged && !relocation_checked) {
			relocation_checked = 1;
			if (relocate_party_if_none_active())
				party_region.region = maze_tables->map_first[party_map_piece];
		}
		/* A full-screen hotspot interrupts rest unless the special flag clears
		   it. */
		if (poll_fullscreen_hotspot())
			rest_interrupt_flag = 1;
		if (!advance_party_redraw_frame())
			delay_ms(10); /* Brief delay while a redraw frame is unavailable. */
		if (is_party_cell_flagged)
			rest_interrupt_flag = 0;
		if (rest_interrupt_flag != 0)
			continue;
		tick_counter++;
		game_time += 10; /* Each rest tick advances the game clock by ten. */
		set_maze_time_tint();
		decrement_party_status_timers(10);
		if (tick_counter == 24) {
			/* At tick 24, overwrite one code_characters entry with a random value. */
			member_index = random_below(100);
			code_characters[member_index] = random_below(100);
		}
		/* Update each member, then occasionally reduce accumulated poison. */
		for (member_index = 0; member_index < party_char_count; member_index++) {
			update_party_member_tick(member_index,
				(tick_counter % 6 == 0 && elapsed_minutes > 0) ?
					party_records[member_index].imported_fields[0] + 1 : 0,
				tick_counter % 6 == 0 ?
					party_records[member_index].imported_fields[1] : 0,
				1,
				tick_counter % 6 == 0 ? 1 : 0);
			party_records[member_index].status[2] = random_below(5);
			/* Poison weakens once every six ticks. */
			if (tick_counter % 6 == 0 &&
			    party_records[member_index].poison_strength > 0)
				party_records[member_index].poison_strength--;
		}
		party_records[random_below(party_char_count)].status[2] = 0;
		if (tick_counter % 6 == 0) { /* Run roaming turns every six ticks. */
			run_roaming_npc_turns();
			elapsed_minutes--;
			/* Difficulty option 1 makes rest encounters rarer. */
			random_threshold = scenario_header.difficulty == 1 ? 990 : 975;
			/* A sufficiently high roll starts an encounter unless region data forbids
			   it. */
			if (party_region_level_saved == 0 && !is_party_cell_flagged &&
			    random_below(1000) >= random_threshold) {
				if (story_music_enabled) { /* Stop score playback on early return. */
					call_stop_music();
					free_loaded_score(0);
				}
				return 1;
			}
		}
	}

	call_show_area(0, 146, 319, 152); /* Clear the message strip. */
	random_slot = random_below(2);	  /* One result controls age gain for all. */
	/* Restore ages, tiredness markers, and panels for every member. */
	for (member_index = 0; member_index < party_char_count; member_index++) {
		if (random_slot != 0) {
			party_records[member_index].age_days++;
		}
		if (party_records[member_index].stamina[0] >
		    party_records[member_index].stamina[1] / 2)
			/* Clear the tiredness marker when stamina is restored. */
			party_records[member_index].status[2] = 0;
		draw_party_member_panel(member_index, 1);
	}
	advance_party_redraw_frame();
	if (story_music_enabled) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	load_maze_variant_resources();
	return 0;
}
