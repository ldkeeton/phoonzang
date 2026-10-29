/* Load up to two selected sounds into the maze's sound slots. */

extern int stop_and_clear_maze_sounds();
extern int load_sound_file();
extern int maze_sound_slot_e;
extern int maze_sound_slot_f;
extern int maze_sound_pair_state;

load_maze_sound_pair(first_sound, second_sound)
int first_sound;
int second_sound;
{
	/* Release any sounds already using the maze slots before replacing them. */
	stop_and_clear_maze_sounds();

	/* Slot 14 receives the first sound when one was requested. */
	if (first_sound != 0) {
		load_sound_file(first_sound, 14, 1);
		maze_sound_slot_e = first_sound;
	}

	/* Slot 15 receives the second sound when one was requested. */
	if (second_sound != 0) {
		load_sound_file(second_sound, 15, 1);
		maze_sound_slot_f = second_sound;
	}

	/* Clear the pair's state after the requested sounds have been loaded. */
	maze_sound_pair_state = 0;
}
