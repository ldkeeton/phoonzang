/* Scale the current music setting before playing a score. */
extern unsigned char music_volume;
extern int call_play_score();

/* Play a score using a level scaled from the current music volume. */
int play_score_at_volume(score_type, score_number, option)
int score_type;
int score_number;
int option;
{
	int volume_delta;
	int playback_volume;

	/* The ten-step setting is converted to the remaining distance from full. */
	volume_delta = 10 - music_volume;

	/* Scale the squared distance to a 0..255 playback level. */
	playback_volume = (25500 - volume_delta * volume_delta * 255) / 100;
	call_play_score(score_type, score_number, playback_volume, option);
	return playback_volume;
}
