/* Stop maze sounds and optionally load and start the story score. */

extern int stop_and_clear_maze_sounds();
extern int score_music_enabled();
extern int load_score_files();
extern int play_score_at_volume();
extern int story_score_file_number;
extern int story_music_enabled;
extern int story_score_number;
extern int story_score_volume;
extern int party_entry_mode;
extern int party_entry_flag;
extern int game_state;

configure_story_music(entry_mode, entry_flag, load_score)
int entry_mode;
int entry_flag;
int load_score;
{
	stop_and_clear_maze_sounds();

	/* Load score data only when requested and music is enabled. */
	if (load_score != 0) {
		if ((story_music_enabled = score_music_enabled()) != 0) {
			load_score_files(3, 0); /* Select the story score files. */
			story_score_number = story_score_file_number;
			story_score_volume = play_score_at_volume(0, story_score_number, 0);
		}
	}

	party_entry_mode = entry_mode;
	party_entry_flag = entry_flag;
	game_state = 10; /* Enter the story game state. */
}
