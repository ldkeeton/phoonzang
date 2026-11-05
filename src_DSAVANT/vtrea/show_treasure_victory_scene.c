/* Show the victory message and distribute the treasure chest rewards. */
#include "msg.h"

extern int mouse_pointer_shape, mouse_pointer_shape_seg;
extern int story_music_enabled, story_score_file_number, story_score_number;
extern int story_score_volume, file_param_word;
extern int treasure_message_row;
extern long battle_experience;
extern int selected_item_record, party_return_state;

extern int prepare_treasure_scene(), redraw_treasure_caption();
extern int set_mouse_pointer_shape(), call_mouse_glide_to();
extern int score_music_enabled(), load_score_files();
extern int play_score_at_volume(), load_message_string();
extern int show_treasure_message(), call_is_music_playing();
extern int delay_ms(), refresh_treasure_panel_and_wait();
extern int distribute_survivor_experience(), call_mouse_glide_back();
extern int fade_out_music(), free_loaded_score();
extern int restore_treasure_scene(), process_chest_rewards();

/* Handle the victory scene, music, experience, and chest rewards. */
show_treasure_victory_scene()
{
	char message[80];

	prepare_treasure_scene(MSG_A_CHEST);
	redraw_treasure_caption(1);
	set_mouse_pointer_shape(mouse_pointer_shape, mouse_pointer_shape_seg);
	call_mouse_glide_to(302, 164, 0);
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(3, 0);
		load_score_files(2, 1);
		story_score_number = story_score_file_number;
		story_score_volume = play_score_at_volume(0, story_score_number, 0);
	}
	load_message_string(MSG_YOU_DEFEATED_THE_MONSTERS, message);
	show_treasure_message(message, treasure_message_row, -1, 169);
	if (story_music_enabled) {
		while (call_is_music_playing())
			;
		delay_ms(400);
		refresh_treasure_panel_and_wait(treasure_message_row,
			treasure_message_row);
		story_score_number = file_param_word;
		story_score_volume = play_score_at_volume(1, story_score_number, 1);
	}
	if (battle_experience > 0L)
		distribute_survivor_experience();
		call_mouse_glide_back(302, 164, 0);
	set_mouse_pointer_shape(0L);
	if (selected_item_record != -1) {
		party_return_state = 15;
		process_chest_rewards();
	}
	if (story_music_enabled) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(1);
		free_loaded_score(0);
	}
	restore_treasure_scene();
}
