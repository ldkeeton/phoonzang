/* Spell list display. */
#include "structs/pcrec.h"

extern int roster_screen_a, roster_screen_b;
extern char known_spell_names[][20];
extern struct pc_rec party_records[];
extern int call_restore_screen(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), draw_number_field();

extern int realm_text_colors[];

/* Restore the saved screen and draw the listed spell names and flag values. */
draw_known_spell_values(character, realm, count, spell_ids)
int character, realm, count;
int spell_ids[];
{
	int row;

	call_restore_screen(roster_screen_b, roster_screen_a, 0, 0);
	for (row = 0; row < count; row++) { /* Six pixels per text row. */
		call_set_text_color(realm_text_colors[realm], 0);
		call_set_text_pos(6, 6 * row + 114);
		draw_text_glyphs(known_spell_names[row], 0);
		call_set_text_pos(133, 6 * row + 114);
		call_set_text_color(1, 0);
		draw_number_field(party_records[character].skills[spell_ids[row]], 3,
			0);	/* Three-digit field. */
	}
}
