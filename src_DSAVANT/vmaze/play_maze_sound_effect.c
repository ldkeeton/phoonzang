/* Route a maze sound through the direct or replaceable sound slot. */

extern int play_sound_effect();
extern int ensure_sound_loaded();
extern int wait_and_free_sound();
extern int loaded_sound_id;

play_maze_sound_effect(sound_id)
int sound_id;
{
	/* Ignore nonpositive IDs; these do not select a sound effect. */
	if (sound_id > 0) {
		/* These IDs play directly; other effects use replaceable slot 16. */
		if (sound_id < 5 || sound_id == 8 || sound_id == 9) {
			play_sound_effect(sound_id);
		} else {
			ensure_sound_loaded(sound_id);
			play_sound_effect(16); /* Slot 16 is the replaceable sound. */
			wait_and_free_sound(16);
			loaded_sound_id = -1;
		}
	}
}
