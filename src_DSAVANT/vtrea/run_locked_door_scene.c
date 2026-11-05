/* Run the locked door or gate scene and its lock picking menu. */
#include "msg.h"

extern int maze_variant;
extern int story_music_enabled, story_score_number, story_score_volume;
extern int file_param_word, selected_item_record;

extern int prepare_treasure_scene();
extern int redraw_treasure_caption();
extern int call_show_area();
extern int score_music_enabled();
extern int load_score_files();
extern int play_score_at_volume();
extern int pick_lock_menu();
extern int fade_out_music();
extern int free_loaded_score();
extern int restore_treasure_scene();

run_locked_door_scene()
{
	prepare_treasure_scene(maze_variant == 1 ? MSG_LOCKED_GATE : MSG_LOCKED_DOOR);
	redraw_treasure_caption(0);
	call_show_area(55, 146, 265, 198);
	if (story_music_enabled = score_music_enabled()) {
		load_score_files(2, 1);
		story_score_number = file_param_word;
		story_score_volume = play_score_at_volume(1, story_score_number, 1);
	}
	pick_lock_menu(selected_item_record);
	redraw_treasure_caption(1);
	if (story_music_enabled) {
		fade_out_music(story_score_number, story_score_volume);
		free_loaded_score(1);
	}
	restore_treasure_scene();
}
