/* Temporarily adjust a sound slot's rate while its sound is played. */
#include "structs/sndslot.h"

extern struct sound_slot_info_rec sound_slot_info[];
extern int play_sound_effect();

play_sound_with_rate_adjustment(sound_id, rate_adjustment)
int sound_id;
int rate_adjustment;
{
	struct sound_slot_info_rec saved_slot;

	saved_slot = sound_slot_info[sound_id];
	sound_slot_info[sound_id].rate += rate_adjustment;
	play_sound_effect(sound_id);
	sound_slot_info[sound_id] = saved_slot;
}
