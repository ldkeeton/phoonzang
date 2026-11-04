/* Set the maze tint from the current time-of-day palette entry. */
extern long game_time;
extern int call_set_rgb();

struct maze_rgb_entry {
	unsigned char red;
	unsigned char green;
	unsigned char blue;
};

extern struct maze_rgb_entry hourly_maze_tints[];

set_maze_time_tint()
{
	int palette_index;

	palette_index = (game_time % 1440L) / 60L;
	/* Apply this hour's red, green and blue tint. */
	call_set_rgb(255, hourly_maze_tints[palette_index].red,
		hourly_maze_tints[palette_index].green,
			hourly_maze_tints[palette_index].blue);
}
