/* Maze helper that advances and redraws the party status animation. */
extern int party_status_frame;
extern int redraw_maze_view();
extern int play_sound_effect();

/* Advance the party status animation for the requested number of steps. */
animate_party_status_frame(step_count, update_frame)
int step_count;
int update_frame;
{
	while (step_count > 0) {
		if (update_frame != 0) {
			/* The status display alternates between its two frames. */
			party_status_frame = (party_status_frame + 1) % 2;
			redraw_maze_view();
			play_sound_effect(16); /* Slot 16 is the replaceable sound. */
		}
		step_count--;
	}
}
