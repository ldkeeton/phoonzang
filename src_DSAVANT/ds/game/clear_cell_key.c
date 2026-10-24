/* clears the key word of one 12-byte cell in the key grid */
struct grid_cell {
	int key;
	char pad[10];
};
struct grid_row {
	struct grid_cell cell[10];
};	/* 0x78 bytes */
struct grid_page {
	struct grid_row row[4];
	char pad[104];
};	/* 0x248 bytes */

extern struct grid_page cell_key_grid[];
extern compact_grid_page();

clear_cell_key(page, row, col)
int page, row, col;
{
	if (row == 0)			/* row 0 also drops the page-level entry */
		compact_grid_page(page, col);
	cell_key_grid[page].row[row].cell[col].key = 0;
}
