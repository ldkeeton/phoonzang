/* Draw a member's current and maximum points for each of the six realms. */
#include "structs/realmpos.h"
#include "structs/pcrec.h"

extern long realm_panel_cache;
extern int realm_point_text_colors[6][2];
extern struct realm_point_text_row realm_point_text_positions[6];
extern struct pc_rec party_records[];
extern int call_restore_screen(), call_set_text_color(), call_set_text_pos();
extern int draw_number_field(), draw_party_slot_letters();

/* Restore the cached panel, then draw the two realm point columns per row. */
draw_member_realm_points(member_index)
int member_index;
{
	int realm_row;
	int point_column;

	call_restore_screen(realm_panel_cache, 0, 0);
	for (realm_row = 0; realm_row < 6; realm_row++) {
		/* Each realm row displays its current and maximum point values. */
		for (point_column = 0; point_column < 2; point_column++) {
			call_set_text_color(realm_point_text_colors[realm_row][point_column], 0);
			call_set_text_pos(
				realm_point_text_positions[realm_row].column[point_column].x,
				realm_point_text_positions[realm_row].column[point_column].y);
			/* The field width and leading padding are both three. */
			draw_number_field(
				party_records[member_index].realm_points[realm_row][point_column],
				3, 3);
		}
	}
	/* Draw the animated slot letters after the point values. */
	draw_party_slot_letters(0, 0, 0);
}
