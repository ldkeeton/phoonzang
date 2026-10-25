/* sum the weighted value of each keyed cell into one party record */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern cell_power();

sum_page_cell_values(page)
int page;
{
	int col, row;		/* row is outer so it sits at bp-4 */

	party_records[page].power_total = 0;
	for (row = 0; row < 2; row++) {		/* two rows */
		for (col = 0; col < 10; col++) {	/* ten cells per row */
			if (party_records[page].cell[row][col].key > 0)
				party_records[page].power_total +=
					cell_power(page, row, col);
		}
	}
}
