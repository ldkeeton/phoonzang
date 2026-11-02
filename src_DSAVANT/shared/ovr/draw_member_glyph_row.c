/* Stores a member's six panel glyph rows. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];

/* Set each of the member's panel glyph rows, raising any below 1 to 1. */
draw_member_glyph_row(member_index, row0, row1, row2, row3, row4, row5)
int member_index, row0, row1, row2, row3, row4, row5;
{
	party_records[member_index].glyph_row[0] = row0 < 1 ? 1 : row0;
	party_records[member_index].glyph_row[1] = row1 < 1 ? 1 : row1;
	party_records[member_index].glyph_row[2] = row2 < 1 ? 1 : row2;
	party_records[member_index].glyph_row[3] = row3 < 1 ? 1 : row3;
	party_records[member_index].glyph_row[4] = row4 < 1 ? 1 : row4;
	party_records[member_index].glyph_row[5] = row5 < 1 ? 1 : row5;
}
