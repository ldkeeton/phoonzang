/* Draw the current spell point total for each realm, centered in its row. */
#include "structs/realmpos.h"
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int realm_point_text_colors[6][2];
extern struct screen_point realm_spell_point_positions[];
extern int format_int_decimal(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), aztec_strlen();

draw_realm_spell_points(member_index)
int member_index;
{
	int realm_row;
	char text[10];

	for (realm_row = 0; realm_row < 6; realm_row++) {
		/* Show the current point value in the realm's first color. */
		format_int_decimal(
			party_records[member_index].realm_points[realm_row][0], text);
		call_set_text_color(realm_point_text_colors[realm_row][0], 0);
		/* Glyphs are six pixels wide; x + 9 centers them in the slot. */
		call_set_text_pos(realm_spell_point_positions[realm_row].x + 9 -
			(aztec_strlen(text) * 6) / 2, realm_spell_point_positions[realm_row].y);
		draw_text_glyphs(text, 0);
	}
}
