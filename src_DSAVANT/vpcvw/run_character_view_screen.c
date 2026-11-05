/* Run the PCVW character view screen: inventory, actions, skills and
   spells. */
#include "structs/pcrec.h"
#include "msg.h"

extern int party_return_state, game_state;
extern int banner_offset, banner_plain_flag, banner_animation_frame;
extern int selected_item_list_index;
extern unsigned char picture_slot_number[];
extern int item_page_drawn, item_page_alt_mode, item_page;
extern int party_slot_frame[];
extern int party_redraw_interval;
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_char_count, hotspot_hit, member_roster_index;
extern int story_music_enabled, story_score_number, story_score_volume;
extern int file_param_word;
extern long member_screen_cache_low;
extern long member_detail_cache_low;
extern long roster_screen_b;
extern long ac_screen_a_handle_low;
extern long ac_screen_b_handle_low;
extern long realm_panel_cache_high;
extern long saved_screen;
extern struct pc_rec party_records[];
extern char character_view_screen_filename[];
extern char inventory_button_labels[];
extern int hotspot_rects[];
extern int load_monster_picture(), free_picture_slot(), free_current_maze();
extern int wait_and_free_sound(), load_screen_file_immediate();
extern long call_cache_area();
extern int load_score_files(), score_music_enabled(), play_score_at_volume();
extern int load_message_string(), refresh_title_and_member_panel();
extern int poll_hotspots(), set_hotspot(), refresh_member_inventory_panel();
extern int run_member_inventory_menu(), handle_member_action_menu();
extern int show_member_age_and_next_level(), choose_member_skill_group();
extern int member_is_active(), cast_spell_from_spell_picker();
extern int fade_out_music(), free_loaded_score(), call_restore_screen();
extern int draw_party_glyph_row(), load_sound_file(), call_show_area();

/* Run the character view screen until the player closes it. */
int run_character_view_screen(member_index)
int member_index;
{
	int loop_index;
	int selection;
	int roster_mode;
	int picture_ids[5];
	long saved_cache_handle;


	game_state = party_return_state;
	banner_offset = 20;
	banner_plain_flag = 0;
	banner_animation_frame = 0;
	selected_item_list_index = -1;
	if (game_state != 13) {
		free_current_maze();
		load_monster_picture(2, 1);
		load_monster_picture(3, 2);
	} else {
		for (loop_index = 15; loop_index < 18; ++loop_index) {
			picture_ids[loop_index - 13] = picture_slot_number[loop_index];
			if (picture_ids[loop_index - 13] != 255)
				free_picture_slot(loop_index);
		}
		free_picture_slot(7);
		wait_and_free_sound(10);
		wait_and_free_sound(11);
		wait_and_free_sound(12);
	}

	saved_cache_handle = call_cache_area(0, 0, 319, 199, 2, 0);
	load_screen_file_immediate(character_view_screen_filename, 0);
	member_screen_cache_low = call_cache_area(6, 6, 162, 103, 2, 0);
	member_detail_cache_low = call_cache_area(228, 6, 310, 22, 2, 0);
	roster_screen_b = call_cache_area(1, 112, 171, 187, 2, 0);
	ac_screen_a_handle_low = call_cache_area(220, 30, 319, 35, 2, 0);
	ac_screen_b_handle_low = call_cache_area(276, 46, 310, 116, 2, 0);
	realm_panel_cache_high = call_cache_area(184, 126, 319, 191, 2, 0);
	saved_screen = call_cache_area(90, 25, 101, 65, 2, 0);
	load_monster_picture(11, 15);
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(2, 0);
		story_score_number = file_param_word;
		story_score_volume = play_score_at_volume(0, story_score_number, 1);
	}
	item_page_drawn = 0;
	item_page_alt_mode = 0;
	item_page = 0;
	for (loop_index = 0; loop_index < 9; ++loop_index)
		load_message_string(MSG_USE_300 + loop_index,
			inventory_button_labels + loop_index * 10);
	for (loop_index = 0; loop_index < 6; ++loop_index)
		party_slot_frame[loop_index] = 0;
	party_redraw_interval = 7;
	party_redraw_last_tick = *tick_counter_ptr;
	roster_mode = (party_return_state == 4 || party_return_state == 13) ? 0 : 1;

	for (;;) {
		refresh_member_inventory_panel(member_index, 0);
		set_hotspot(0, 19, 77, 61, 83, 69, 0);
		set_hotspot(1, 12, 17, 38, 74, 11, 0);
		set_hotspot(2, 39, 17, 67, 74, 9, 0);
		set_hotspot(3, 90, 31, 102, 75, 67, 0);
		set_hotspot(4, 90, 92, 150, 98, 0, 0);
		set_hotspot(5, 179, 85, 217, 110, 0, 0);
		set_hotspot(6, 219, 83, 242, 110, 66, 0);
		set_hotspot(7, 175, 12, 213, 47, 83, 0);
		set_hotspot(8, 239, 29, 312, 35, 0, 0);
		set_hotspot(9, 262, 41, 278, 57, 0, 0);
		set_hotspot(10, 258, 58, 283, 78, 0, 0);
		set_hotspot(11, 260, 79, 280, 105, 0, 0);
		set_hotspot(12, 286, 65, 301, 79, 0, 0);
		set_hotspot(13, 260, 106, 287, 126, 0, 0);
		set_hotspot(14, 302, 43, 314, 72, 0, 0);
		for (loop_index = 0; loop_index < 10; ++loop_index)
			set_hotspot(loop_index + 15, 2 + (loop_index / 5) * 79,
				113 + (loop_index % 5) * 14,
				78 + (loop_index / 5) * 79,
				125 + (loop_index % 5) * 14,
				(char)(48 + ((loop_index + 1) % 10)), 0);
		set_hotspot(25, 182, 131, 319, 194, 77, 0);
		set_hotspot(26, 315, 30, 319, 120, 88, 27);
		set_hotspot(27, -1, 0, 0, 0, 0, 0);
		do {
			refresh_title_and_member_panel(member_index);
			selection = poll_hotspots(hotspot_rects) - 1;
		} while (hotspot_hit == 0);
		if (selection >= 15 && selection < 25) {
			if (
				party_records[member_index].item_slots[item_page][selection - 15].item_id
				> 0) {
				run_member_inventory_menu(member_index, selection - 15);
				member_index = member_roster_index;
			}
		} else {
			switch (selection) {
			case 0: handle_member_action_menu(member_index); break;
			case 1:
				if (roster_mode) {
					member_roster_index =
						(member_index + party_char_count - 1) % party_char_count;
					member_index = member_roster_index;
					item_page_drawn = 0;
				}
				break;
			case 2:
				if (roster_mode) {
					member_roster_index = (member_index + 1) % party_char_count;
					member_index = member_roster_index;
					item_page_drawn = 0;
				}
				break;
			case 3: show_member_age_and_next_level(member_index); break;
			case 4: break;
			case 5: break;
			case 6: item_page = (item_page + 1) % 2; item_page_drawn = 0; break;
			case 7: choose_member_skill_group(member_index); break;
			case 8: case 9: case 10: case 11: case 12: case 13: case 14:
				break;
			case 25:
				if (member_is_active(member_index))
					cast_spell_from_spell_picker(member_index, roster_mode);
				break;
			}
		}
		if (selection == 26)
			break;
	}
	if (story_music_enabled) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(0);
	}
	free_picture_slot(15);
	call_restore_screen(saved_screen, 1, 0);
	call_restore_screen(realm_panel_cache_high, 1, 0);
	call_restore_screen(ac_screen_b_handle_low, 1, 0);
	call_restore_screen(ac_screen_a_handle_low, 1, 0);
	call_restore_screen(roster_screen_b, 1, 0);
	call_restore_screen(member_detail_cache_low, 1, 0);
	call_restore_screen(member_screen_cache_low, 1, 0);
	call_restore_screen(saved_cache_handle, 1, 0);
	draw_party_glyph_row();
	if (party_return_state == 13) {
		load_sound_file(10, 10, 1);
		load_sound_file(11, 11, 1);
		load_sound_file(12, 12, 1);
		load_monster_picture(9, 7);
		for (loop_index = 15; loop_index < 18; ++loop_index)
			if (picture_ids[loop_index - 13] != 255)
				load_monster_picture(picture_ids[loop_index - 13], loop_index);
	} else {
		free_picture_slot(1);
		free_picture_slot(2);
	}
	call_show_area(0, 0, 319, 199);
}
