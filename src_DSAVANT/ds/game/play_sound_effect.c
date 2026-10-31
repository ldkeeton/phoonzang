/* Play a sound using its slot data and the configured device volume. */
#include "structs/sndslot.h"

extern struct sound_slot_info_rec sound_slot_info[];
extern unsigned char sound_device_setting;
extern unsigned char volume_settings[];
extern int loaded_sound_id;
extern int call_play_sound();

play_sound_effect(sound_id)
int sound_id;
{
	int sound_number;
	int volume;
	int volume_index;

	volume = sound_slot_info[sound_id].volume;
	sound_number = sound_id;
	/* A zero size redirects to the record's alternate sound number. */
	if (sound_slot_info[sound_id].size.full_size == 0)
		sound_number = sound_slot_info[sound_id].alias_num;
	/* Double volume for a configured device, capped at 255. */
	if (sound_device_setting > 0) {
		volume *= 2;
		if (volume > 255)
			volume = 255;
	}
	/* Monster and ambient sound IDs use their own volume settings. */
	volume_index = 0;
	if (sound_id == 16 && loaded_sound_id >= 30)
		volume_index = 1;
	else if (sound_id == 14 || sound_id == 15)
		volume_index = 2;
	volume = volume_settings[volume_index] * volume / 10;
	if (volume > 0)
		call_play_sound(sound_number,
			sound_slot_info[sound_id].rate, volume,
			sound_slot_info[sound_id].play_flags);
}
