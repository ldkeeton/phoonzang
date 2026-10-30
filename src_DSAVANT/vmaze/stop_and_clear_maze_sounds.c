/* Wait for queued sound and clear the two maze sound slots. */

extern int call_wait_sound();
extern int wait_and_free_sound();
extern int maze_sound_slot_e;
extern int maze_sound_slot_f;
extern int maze_sound_pair_state;

stop_and_clear_maze_sounds()
{
	/* Flush queued sound before releasing maze slots. */
	call_wait_sound(1);

	/* Release slot E only when it contains a sound. */
	if (maze_sound_slot_e != 0)
		wait_and_free_sound(14);

	/* Release slot F only when it contains a sound. */
	if (maze_sound_slot_f != 0)
		wait_and_free_sound(15);

	maze_sound_slot_e = 0;
	maze_sound_slot_f = 0;
	maze_sound_pair_state = 0;
}
