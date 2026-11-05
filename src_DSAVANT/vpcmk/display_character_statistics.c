/* Draw the eight statistics and remaining points for one party member. */
#include "structs/pcrec.h"

extern int saved_screen_handle_low;
extern int saved_screen_handle_high;
extern char character_stat_labels[];
extern int remaining_stat_points;
extern char remaining_points_label[];
extern struct pc_rec party_records[];
extern int call_restore_screen();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int draw_number_field();
extern int call_show_area();

/* Display a party member's statistics and optionally refresh their panel. */
display_character_statistics(member_index, show_remaining_points)
int member_index, show_remaining_points;
{
	int stat_index;

	call_restore_screen(saved_screen_handle_low, saved_screen_handle_high,
		0, 0);
	call_set_text_color(85, 0);

	for (stat_index = 0; stat_index < 8; stat_index++) {
		call_set_text_pos(115, 35 + 6 * stat_index);
		draw_text_glyphs(&character_stat_labels[10 * stat_index], 0);
		draw_number_field(
			party_records[member_index].stat[stat_index], 3, 0);
	}

	if (remaining_stat_points >= 0) {
		call_set_text_color(22, 0);
		call_set_text_pos(103, 89);
		draw_text_glyphs(remaining_points_label, 0);
		call_set_text_color(1, 0);
		draw_number_field(remaining_stat_points, 3, 0);
	}

	if (show_remaining_points != 0)
		call_show_area(102, 35, 168, 96);
}
