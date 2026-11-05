/* Run the treasure chest scene and restore the previous screen. */
#include "msg.h"

extern int selected_item_slot, selected_item_record;
extern int story_music_enabled, story_score_number, story_score_volume;
extern int party_return_state, party_region, file_param_word;

extern int prepare_treasure_scene(), redraw_treasure_caption();
extern int score_music_enabled(), load_score_files();
extern int play_score_at_volume(), process_chest_rewards();
extern int fade_out_music(), free_loaded_score();
extern int restore_treasure_scene();

/* Handle game_state 0x15, including its optional story music. */
run_treasure_chest_scene()
{
	selected_item_slot = -1;
	prepare_treasure_scene(MSG_A_CHEST);
	redraw_treasure_caption(0);
	if (selected_item_record != -1) {
		if (story_music_enabled = score_music_enabled()) {
			load_score_files(2, 1);
			story_score_number = file_param_word;
			story_score_volume = play_score_at_volume(1,
				story_score_number, 1);
		}
		party_return_state = 21;
		process_chest_rewards();
		if (story_music_enabled) {
			fade_out_music(story_score_number, story_score_volume);
			free_loaded_score(1);
		}
	}
	party_region++;
	restore_treasure_scene();
}
