#ifndef MAZECHNG_H
#define MAZECHNG_H

/* One entry of maze_change_log: a change log_maze_change records and
   replay_maze_changes reapplies after the level loads. */
struct maze_change {
	unsigned char level;	/* +0: maze level the change belongs to */
	unsigned char kind;	/* +1: 0 four walls, 1/2 own wall, 3/4 a
				   neighbour's shared wall, 5 cell kind and
				   direction, 6 region flags */
	int location;		/* +2: piece << 8 | x << 4 | y; kind 6: the
				   region index */
	int value;		/* +4: the new value, packed by kind */
};

#endif
