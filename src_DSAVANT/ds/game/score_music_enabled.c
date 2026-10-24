/* whether a scene should load and play its score music: the mode must be one
   the score player runs in, and the music volume must be turned up */

extern unsigned char video_mode;
extern unsigned char music_volume;

score_music_enabled()
{
	/* modes 2 and 3 (and 0) are left out */
	return ((video_mode == 1 || video_mode > 3) && music_volume > 0) ? 1 : 0;
}
