/* Replace the loaded sound only when the requested ID changes. */
extern int loaded_sound_id;

ensure_sound_loaded(sound_id)
int sound_id;
{
	if (loaded_sound_id != sound_id) {
		call_wait_sound(1);
		if (loaded_sound_id != -1) /* -1 means no sound is loaded */
			wait_and_free_sound(16); /* reuse sound slot 16 */
		loaded_sound_id = sound_id;
		load_sound_file(sound_id, 16, 0);
	}
}
