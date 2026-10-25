/* the eight-slot cell order of one party record */

#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern clamp_between();
extern reset_page_record();

/* clears a cell's keyed flag, drops it from the page's eight-slot order and
   re-spaces the slots that remain */
compact_grid_page(page, entry)
int page, entry;
{
	int i, j, q, r;

	party_records[page].cell[0][entry].flags &= ~1;
	party_records[page].attack = 0;
	party_records[page].defense = 0;
	for (i = 0; i < 14; i++)		/* carry the spacing into the new frame */
		party_records[page].cur[i] =
			party_records[page].prev[i];
	for (i = 0; i < 8; i++) {
		if (party_records[page].order[i] == entry) {
			party_records[page].order[i] = 255;
			switch (i) {
			case 0:
			case 1:		/* slots 0 and 1 also reset their 0x12-byte record */
				reset_page_record(page, i);
				party_records[page].count[1] +=
					party_records[page].cell[0][entry].weight;
				break;
			case 2:		/* slot 2 starts over at zero */
				party_records[page].count[2] = 0;
				break;
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:		/* later slots inherit slot 0's count */
				party_records[page].count[i] =
					party_records[page].count[0];
				break;
			}
		}
		if (party_records[page].order[i] == 255)
			continue;		/* slot already empty */
		for (j = 0; j < 2; j++) {	/* the cell's two packed positions */
			q = party_records[page].cell[0]
				[party_records[page].order[i]].pos[j] / 16;
			r = party_records[page].cell[0]
				[party_records[page].order[i]].pos[j] %
				16 * 10;	/* ten pixels per low nibble */
			party_records[page].cur[q] =
				clamp_between(party_records[page].cur[q] +
				r, 0, 125);	/* 0x7d: highest allowed position */
		}
		q = party_records[page].cell[0]
			[party_records[page].order[i]].coord / 16;
		r = party_records[page].cell[0]
			[party_records[page].order[i]].coord % 16;
		party_records[page].attack =
			party_records[page].attack < r ?
			r : party_records[page].attack;
		party_records[page].defense =
			party_records[page].defense < q ?
			q : party_records[page].defense;
	}
}
