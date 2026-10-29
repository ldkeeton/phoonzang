/* Selects and draws member panel stat glyphs. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern draw_member_glyph_row();

/* Choose the panel glyph layout from the member's stats and profession. */
draw_member_panel_glyphs(member_index)
int member_index;
{
	int stat_thirds;
	int glyph_row;

	stat_thirds = (party_records[member_index].stat[3]
		+ party_records[member_index].stat[2] * 2) / 3;
	glyph_row = 0;
	if (stat_thirds > 13)
		glyph_row++;
	if (stat_thirds > 16)
		glyph_row++;
	if (party_records[member_index].glyph_set == 5)
		glyph_row++;
	if (party_records[member_index].glyph_set == 6)
		glyph_row--;

	switch (party_records[member_index].profession) {
	case 0:
	case 3:
		draw_member_glyph_row(member_index, glyph_row + 1, glyph_row + 1,
			glyph_row + 1, glyph_row + 1, glyph_row + 1, glyph_row + 1);
		break;
	case 1:
		party_records[member_index].spell_school[0] = 2;
		draw_member_glyph_row(member_index, glyph_row + 3, glyph_row + 3,
			glyph_row + 2, glyph_row + 2, glyph_row + 2, glyph_row + 3);
		break;
	case 2:
		party_records[member_index].spell_school[1] = 2;
		draw_member_glyph_row(member_index, glyph_row + 2, glyph_row + 3,
			glyph_row + 2, glyph_row + 2, glyph_row + 3, glyph_row + 3);
		break;
	case 4:
		draw_member_glyph_row(member_index, glyph_row + 1, glyph_row + 1,
			glyph_row + 2, glyph_row + 2, glyph_row + 2, glyph_row + 1);
		break;
	case 5:
		party_records[member_index].spell_school[2] = 2;
		draw_member_glyph_row(member_index, glyph_row + 3, glyph_row + 2,
			glyph_row + 3, glyph_row + 3, glyph_row + 2, glyph_row + 2);
		break;
	case 6:
		draw_member_glyph_row(member_index, glyph_row + 2, glyph_row + 2,
			glyph_row + 1, glyph_row + 1, glyph_row + 2, glyph_row + 1);
		break;
	case 7:
		party_records[member_index].spell_school[3] = 2;
		draw_member_glyph_row(member_index, glyph_row + 3, glyph_row + 2,
			glyph_row + 2, glyph_row + 2, glyph_row + 4, glyph_row + 2);
		break;
	case 8:
		draw_member_glyph_row(member_index, glyph_row + 1, glyph_row + 2,
			glyph_row + 2, glyph_row + 1, glyph_row + 1, glyph_row + 2);
		break;
	case 9:
		party_records[member_index].spell_school[0] = 1;
		party_records[member_index].spell_school[1] = 1;
		draw_member_glyph_row(member_index, glyph_row + 2, glyph_row + 2,
			glyph_row + 2, glyph_row + 2, glyph_row + 2, glyph_row + 3);
		break;
	case 10:
		draw_member_glyph_row(member_index, glyph_row + 1, glyph_row + 2,
			glyph_row + 2, glyph_row + 1, glyph_row + 1, glyph_row + 2);
		break;
	case 11:
		draw_member_glyph_row(member_index, glyph_row + 2, glyph_row + 2,
			glyph_row + 1, glyph_row + 1, glyph_row + 1, glyph_row + 2);
		break;
	case 12:
		draw_member_glyph_row(member_index, glyph_row + 2, glyph_row + 1,
			glyph_row + 1, glyph_row + 1, glyph_row + 3, glyph_row + 1);
		break;
	case 13:
		draw_member_glyph_row(member_index, glyph_row + 2, glyph_row + 1,
			glyph_row + 2, glyph_row + 2, glyph_row + 1, glyph_row + 1);
		break;
	}
}
