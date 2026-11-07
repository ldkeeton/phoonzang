/* Maze file loading. */
extern char *data_file_path();
extern int open(), close();
extern int call_load_maze(), release_and_exit();

/* Load a maze file into the requested slot. */
load_maze_file(filename, maze_slot)
char *filename;
int maze_slot;
{
	int maze_fd;

	if ((maze_fd = open(data_file_path(filename, 1), 0)) == -1)
		release_and_exit(27); /* Maze file open failure. */
	call_load_maze(maze_fd, maze_slot, 0);
	close(maze_fd);
}
