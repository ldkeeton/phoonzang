/* clears the key word of one 12-byte cell in a party record */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern compact_grid_page();

clear_cell_key(page, row, col)
int page, row, col;
{
	if (row == 0)			/* row 0 also drops the page-level entry */
		compact_grid_page(page, col);
	party_records[page].cell[row][col].key = 0;
}
