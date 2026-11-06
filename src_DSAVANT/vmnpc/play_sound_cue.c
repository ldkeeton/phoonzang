/* Load and play a sound cue for the current NPC encounter. */
extern int loaded_sound_id, npc_encounter_sound;
extern int ensure_sound_loaded(), play_sound_effect();

play_sound_cue(sound_id)
int sound_id;
{
	if (loaded_sound_id != sound_id)
		ensure_sound_loaded(sound_id);
	npc_encounter_sound = 16;
	play_sound_effect(npc_encounter_sound);
}
