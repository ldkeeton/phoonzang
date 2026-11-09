/* Manage the saved character files screen and restore its saved areas. */
#include "msg.h"
#include "structs/filehdr.h"
extern struct pc_file_header pc_file_header;

extern int pc_view_screen_file[];
extern char character_stat_labels[];
extern int remaining_points_label[];
extern long summary_panel_cache_low;
extern long detail_panel_cache_low;
extern long roster_screen_b;
extern long character_screen_cache_a_low;
extern long character_screen_cache_b_low;
extern long realm_panel_cache_high;
extern long saved_screen_handle_low;
extern long saved_screen;
extern int story_music_enabled, story_score_number, story_score_volume;
extern int camp_score_number;
extern int banner_offset, banner_plain_flag, banner_animation_frame;
extern int party_slot_frame[];
extern int party_redraw_interval;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int load_monster_picture();
extern long call_cache_area();
extern int load_screen_file_immediate();
extern int score_music_enabled();
extern int load_score_files();
extern int play_score_at_volume();
extern int load_message_string();
extern int call_restore_screen();
extern int find_unused_pc_file_record_slot();
extern int select_grid_text_option();
extern int call_show_area();
extern int create_character_from_prompt();
extern int choose_pc_file_character();
extern int delete_saved_character_file();
extern int show_pc_file_record_preview();
extern int rename_saved_character();
extern int preview_and_select_saved_member();
extern int fade_out_music();
extern int free_loaded_score();
extern int free_picture_slot();

/* Manage saved character files and restore the character screen. */
manage_character_files()
{
	int loop_index;
	int unused;
	int choice;
	int selected_character;
	int available_file_slot;
	long saved_area;
	int options[15];

	load_monster_picture(2, 1);
	load_monster_picture(3, 2);
	saved_area = call_cache_area(0, 0, 319, 199, 2, 0);
	load_screen_file_immediate(pc_view_screen_file, 0);
	banner_offset = 20;
	banner_plain_flag = 0;
	banner_animation_frame = 0;
	summary_panel_cache_low = call_cache_area(6, 6, 162, 103, 2, 0);
	detail_panel_cache_low = call_cache_area(228, 6, 310, 22, 2, 0);
	roster_screen_b = call_cache_area(1, 112, 159, 182, 2, 0);
	character_screen_cache_a_low = call_cache_area(220, 30, 319, 35, 2, 0);
	character_screen_cache_b_low = call_cache_area(276, 46, 310, 116, 2, 0);
	realm_panel_cache_high = call_cache_area(184, 126, 319, 191, 2, 0);
	saved_screen_handle_low = call_cache_area(102, 35, 168, 96, 2, 0);
	saved_screen = call_cache_area(90, 25, 101, 65, 2, 0);
	load_monster_picture(11, 15);
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(1, 0);
		story_score_number = camp_score_number;
		story_score_volume = play_score_at_volume(0, story_score_number, 1);
	}
	for (loop_index = 0; loop_index < 8; loop_index++)
		load_message_string(MSG_STR + loop_index,
			character_stat_labels + loop_index * 10);
	load_message_string(MSG_BONUS, remaining_points_label);
	for (loop_index = 0; loop_index < 6; loop_index++)
		party_slot_frame[loop_index] = 0;
	party_redraw_interval = 7;
	party_redraw_last_tick = *tick_counter_ptr;
	do {
		banner_offset = 20;
		banner_plain_flag = 0;
		call_restore_screen(summary_panel_cache_low, 0, 0);
		call_restore_screen(detail_panel_cache_low, 0, 0);
		call_restore_screen(roster_screen_b, 0, 0);
		call_restore_screen(character_screen_cache_a_low, 0, 0);
		call_restore_screen(character_screen_cache_b_low, 0, 0);
		call_restore_screen(realm_panel_cache_high, 0, 0);
		for (loop_index = 0; loop_index < 5; loop_index++)
			options[loop_index] = 0;
		options[5] = 1;
		options[6] = -1;
		available_file_slot = find_unused_pc_file_record_slot();
		if (available_file_slot != -1)
			options[0] = 1;
		for (loop_index = 0; loop_index < pc_file_header.record_count;
			loop_index++) {
			if (pc_file_header.availability[loop_index] == 1) {
				options[1] = 1;
				options[2] = 1;
				options[3] = 1;
				options[4] = 1;
			}
		}
		choice = select_grid_text_option(1130, 0, 4, 188, 8, 52, 12, 1,
			6, 1, -1, 0, options);
		switch (choice) {
		case 0:
			call_show_area(0, 0, 319, 199);
			create_character_from_prompt(available_file_slot);
			break;
		case 2:
			call_show_area(0, 0, 319, 199);
			selected_character = choose_pc_file_character(MSG_DELETE_WHO);
			if (selected_character != -1)
				delete_saved_character_file(selected_character);
			break;
		case 1:
			call_show_area(0, 0, 319, 199);
			selected_character = choose_pc_file_character(MSG_REVIEW_WHO);
			if (selected_character != -1)
				show_pc_file_record_preview(selected_character);
			break;
		case 3:
			call_show_area(0, 0, 319, 199);
			selected_character = choose_pc_file_character(MSG_RENAME_WHO);
			if (selected_character != -1)
				rename_saved_character(selected_character);
			break;
		case 4:
			call_show_area(0, 0, 319, 199);
			selected_character = choose_pc_file_character(MSG_CHANGE_WHO);
			if (selected_character != -1)
				preview_and_select_saved_member(selected_character);
			break;
		}
	} while (choice != 5);
	if (story_music_enabled) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	free_picture_slot(15);
	call_restore_screen(saved_screen, 1,
		0);
	call_restore_screen(saved_screen_handle_low, 1, 0);
	call_restore_screen(realm_panel_cache_high, 1, 0);
	call_restore_screen(character_screen_cache_b_low, 1, 0);
	call_restore_screen(character_screen_cache_a_low, 1, 0);
	call_restore_screen(roster_screen_b, 1, 0);
	call_restore_screen(detail_panel_cache_low, 1, 0);
	call_restore_screen(summary_panel_cache_low, 1, 0);
	call_restore_screen(saved_area, 1, 0);
	free_picture_slot(1);
	free_picture_slot(2);
	call_show_area(0, 0, 319, 199);
}
