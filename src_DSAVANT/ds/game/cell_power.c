/* power one keyed cell contributes: its +2 value times a level that
   scales with the cell's overlay kind */
struct grid_cell {
	int key;			/* +0: cell key */
	int value;			/* +2: value of one level */
	unsigned char overlay;		/* +4: index into cell_overlay_code */
	char pad0;
	unsigned char level;		/* +6: level, one or more */
	char pad1[5];
};
struct grid_row {
	struct grid_cell cell[10];	/* ten 12-byte cells */
};
struct grid_page {
	struct grid_row row[4];
	char pad[104];			/* 0x248-byte pages */
};

extern struct grid_page cell_key_grid[];
extern unsigned char cell_overlay_code[];

int
cell_power(page, row, col)
int page, row, col;
{
	int power;

	/* +0x58: the overlay kind that scales the cell by its level */
	power = cell_overlay_code[cell_key_grid[page].row[row].cell[col].overlay
		+ 88] == 1 ? cell_key_grid[page].row[row].cell[col].level : 1;
	if (power < 1)			/* every cell counts as at least one level */
		power = 1;
	return cell_key_grid[page].row[row].cell[col].value * power;
}
