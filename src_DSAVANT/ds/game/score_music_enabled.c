/* whether a scene should load and play its score music: the mode must be one
   the score player runs in, and the music volume must be turned up */
#include "structs/loadrec.h"
extern struct load_header scenario_header;


score_music_enabled()
{
	/* modes 2 and 3 (and 0) are left out */
	return ((
		scenario_header.music_device == 1 || scenario_header.music_device > 3)
		&& scenario_header.volumes[VOLUME_MUSIC] > 0) ? 1 : 0;
}
