/* power one keyed cell contributes: its +2 value times a level that
   scales with the cell's overlay kind */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern unsigned char cell_overlay_code[];

int
cell_power(page, row, col)
int page, row, col;
{
	int power;

	/* +0x58: the overlay kind that scales the cell by its level */
	power = cell_overlay_code[party_records[page].cell[row][col].overlay
		+ 88] == 1 ? party_records[page].cell[row][col].level : 1;
	if (power < 1)			/* every cell counts as at least one level */
		power = 1;
	return party_records[page].cell[row][col].value * power;
}
