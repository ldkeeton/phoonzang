/* Pick an NPC id from one of the maze's 12 weighted choice groups. */
#include "structs/mazecell.h"

extern struct maze_cells *maze_data;
extern int random_below();

choose_region_npc(group)
int group;
{
	int column;
	int tier_roll;
	int tier;

	/* Select one of the group's four columns. */
	column = random_below(100) % 4;
	tier_roll = random_below(100);

	/* Weighted row: rolls 0-73 pick 0, 74-91 pick 1, 92-99 pick 2. */
	tier = tier_roll < 74 ? 0 :
		(tier_roll < 92 ? 1 : 2);

	return maze_data->region_npc_choices[group][column][tier];
}
