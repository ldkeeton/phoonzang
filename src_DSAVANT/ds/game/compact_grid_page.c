/* two views of one 0x248-byte key-grid page: 12-byte cells and the
   eight-slot compaction tables laid over them */
struct grid_cell {
	int key;			/* +0: 0 when the cell is free */
	char pad[5];			/* +2 */
	unsigned char flags;		/* +7: bit 0 keyed */
	unsigned char pos[2];		/* +8: high nibble column, low nibble * 10px */
	unsigned char coord;		/* +0xa: packed nibbles tracked as page maxima */
	unsigned char weight;		/* +0xb */
};
struct grid_row {
	struct grid_cell cell[10];
};	/* 0x78 */
struct grid_page {
	union {
		struct grid_row row[4];		/* 0x000 */
		struct {
			char pad0[276];
			unsigned char order[8];	/* +0x114: cell index per slot, 0xff free */
			char pad1[62];
			unsigned char prev[14];	/* +0x15a: slot spacing last frame */
			unsigned char cur[14];	/* +0x168: slot spacing this frame */
			unsigned char count[8];	/* +0x176: per-slot tallies */
			char pad2[126];
			unsigned char max_low;	/* +0x1fc: highest low nibble seen */
			unsigned char max_high;	/* +0x1fd: highest high nibble seen */
			char pad3[74];
		} compact;
	} view;
};

extern struct grid_page cell_key_grid[];
extern clamp_between();
extern reset_page_record();

/* clears a cell's keyed flag, drops it from the page's eight-slot order and
   re-spaces the slots that remain */
compact_grid_page(page, entry)
int page, entry;
{
	int i, j, q, r;

	cell_key_grid[page].view.row[0].cell[entry].flags &= ~1;
	cell_key_grid[page].view.compact.max_low = 0;
	cell_key_grid[page].view.compact.max_high = 0;
	for (i = 0; i < 14; i++)		/* carry the spacing into the new frame */
		cell_key_grid[page].view.compact.cur[i] =
			cell_key_grid[page].view.compact.prev[i];
	for (i = 0; i < 8; i++) {
		if (cell_key_grid[page].view.compact.order[i] == entry) {
			cell_key_grid[page].view.compact.order[i] = 255;
			switch (i) {
			case 0:
			case 1:		/* slots 0 and 1 also reset their 0x12-byte record */
				reset_page_record(page, i);
				cell_key_grid[page].view.compact.count[1] +=
					cell_key_grid[page].view.row[0].cell[entry].weight;
				break;
			case 2:		/* slot 2 starts over at zero */
				cell_key_grid[page].view.compact.count[2] = 0;
				break;
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:		/* later slots inherit slot 0's count */
				cell_key_grid[page].view.compact.count[i] =
					cell_key_grid[page].view.compact.count[0];
				break;
			}
		}
		if (cell_key_grid[page].view.compact.order[i] == 255)
			continue;		/* slot already empty */
		for (j = 0; j < 2; j++) {	/* the cell's two packed positions */
			q = cell_key_grid[page].view.row[0].cell
				[cell_key_grid[page].view.compact.order[i]].pos[j] / 16;
			r = cell_key_grid[page].view.row[0].cell
				[cell_key_grid[page].view.compact.order[i]].pos[j] %
				16 * 10;	/* ten pixels per low nibble */
			cell_key_grid[page].view.compact.cur[q] =
				clamp_between(cell_key_grid[page].view.compact.cur[q] +
				r, 0, 125);	/* 0x7d: highest allowed position */
		}
		q = cell_key_grid[page].view.row[0].cell
			[cell_key_grid[page].view.compact.order[i]].coord / 16;
		r = cell_key_grid[page].view.row[0].cell
			[cell_key_grid[page].view.compact.order[i]].coord % 16;
		cell_key_grid[page].view.compact.max_low =
			cell_key_grid[page].view.compact.max_low < r ?
			r : cell_key_grid[page].view.compact.max_low;
		cell_key_grid[page].view.compact.max_high =
			cell_key_grid[page].view.compact.max_high < q ?
			q : cell_key_grid[page].view.compact.max_high;
	}
}
