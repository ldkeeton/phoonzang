/* Skill list display. */
#include "structs/pcrec.h"

extern long roster_screen;
extern char list_entry_text[][20];
extern struct pc_rec party_records[];
extern int call_restore_screen(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), draw_number_field();

extern int realm_text_colors[];

/* Restore the saved screen and draw the listed skill names and values. */
draw_skill_list_values(character, group, count, skill_ids)
int character, group, count;
int skill_ids[];
{
	int row;

	call_restore_screen(roster_screen, 0, 0);
	for (row = 0; row < count; row++) { /* Six pixels per text row. */
		call_set_text_color(realm_text_colors[group], 0);
		call_set_text_pos(6, 6 * row + 114);
		draw_text_glyphs(list_entry_text[row], 0);
		call_set_text_pos(133, 6 * row + 114);
		call_set_text_color(1, 0);
		draw_number_field(party_records[character].skills[skill_ids[row]], 3,
			0);	/* Three-digit field. */
	}
}
