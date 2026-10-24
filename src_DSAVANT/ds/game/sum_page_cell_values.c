/* sum the weighted value of each keyed cell into one grid page's record */

struct grid_cell {
	int key;		/* +0: cell key, counted only when positive */
	char pad[10];
};
struct grid_row {
	struct grid_cell cell[10];	/* ten cells, 12 bytes each */
};
struct grid_page {
	struct grid_row row[2];		/* two rows of 0x78 bytes */
	char pad[584 - 240];		/* 0x248-byte pages */
};

struct pc_rec {
	char pad0[4];
	int total;		/* +4: running total for the page */
	char pad1[584 - 6];
};

extern struct pc_rec pc_records[];
extern struct grid_page cell_key_grid[];
extern cell_power();

sum_page_cell_values(page)
int page;
{
	int col, row;		/* row is outer so it sits at bp-4 */

	pc_records[page].total = 0;
	for (row = 0; row < 2; row++) {		/* two rows */
		for (col = 0; col < 10; col++) {	/* ten cells per row */
			if (cell_key_grid[page].row[row].cell[col].key > 0)
				pc_records[page].total +=
					cell_power(page, row, col);
		}
	}
}
