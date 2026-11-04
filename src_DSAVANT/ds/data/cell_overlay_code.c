/* Melee and NPC screen cell tables, and the item types counted by level. */

/* Base overlay sort code per cell on the melee screen. */
int cell_overlay_code[3][3] = {
	{ 25, 30, 30 },
	{ 15, 20, 20 },
	{ 5, 10, 10 },
};
/* Per cell, subtracted from 100 for an overlay's y on the NPC screen. */
int npc_cell_overlay_y_offset[3][3] = {
	{ 100, 81, 81 },
	{ 61, 51, 51 },
	{ 41, 36, 36 },
};
/* Base overlay sort code per cell on the NPC screen. */
int npc_cell_overlay_code[3][3] = {
	{ 30, 25, 25 },
	{ 15, 20, 20 },
	{ 5, 10, 10 },
};
/* row * 10 + column of the cell a unit moves to when its group advances. */
int next_cell_toward_party[3][3] = {
	{ 0, 1, 2 },
	{ 0, 1, 2 },
	{ 10, 11, 12 },
};
/* Overlay code of each round of the action overlay animation. */
int action_overlay_steps[2][4] = {
	{ 88, 44, 22, 11 },
	{ 11, 22, 44, 88 },
};
/* By item type: 1 when the item is a stack whose level is its count. */
char item_type_counted[18] = {
	0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0,
};
