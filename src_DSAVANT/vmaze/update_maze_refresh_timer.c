/* Refresh the maze event deadline, or pause briefly while it is pending. */
extern long far *tick_counter_ptr;
extern long maze_refresh_deadline;
extern int maze_variant;
extern int random_below();
extern int delay_ms();
extern int maybe_play_maze_ambient_sound();

update_maze_refresh_timer(wait_for_deadline)
int wait_for_deadline;
{
	if (*tick_counter_ptr > maze_refresh_deadline) {
		maybe_play_maze_ambient_sound();
		/* Maze variants 3 and 5 add one more 60-tick interval. */
		maze_refresh_deadline = *tick_counter_ptr + random_below(60)
			+ ((maze_variant == 3 || maze_variant == 5) ? 60 : 0);
	} else if (wait_for_deadline) {
		/* Yield briefly while waiting for the next scheduled maze update. */
		delay_ms(10);
	}
}
