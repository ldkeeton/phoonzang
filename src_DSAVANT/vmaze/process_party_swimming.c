/* One swimming step: each member loses stamina (less with Swimming skill) and
   drowns at 0; inactive members drown. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int party_map_piece, party_cell_x, party_cell_y;
extern int saved_map_piece, saved_cell_x, saved_cell_y;
extern int save_location_flag, party_char_count;
extern int member_is_active(), mark_party_member_dead();
extern int display_member_message(), random_below();
extern int try_raise_member_skill(), draw_party_member_panel();
extern int redraw_maze_view();

process_party_swimming()
{
	int member_index;
	int stamina_loss;

	/* With save_location_flag set, only record the location. */
	if (save_location_flag) {
		saved_map_piece = party_map_piece;
		saved_cell_x = party_cell_x;
		saved_cell_y = party_cell_y;
		return;
	}
	redraw_maze_view();
	/* Resolve each party member after the view is redrawn. */
	for (member_index = 0; member_index < party_char_count; member_index++) {
		if (!member_is_active(member_index)) {
			if (party_records[member_index].state < 3) {
				mark_party_member_dead(member_index, 1);
				display_member_message(member_index, MSG_DROWNED, 0);
			}
		} else {
			/* Swimming skill sets the divisor; stamina sets the random range. */
			stamina_loss = party_records[member_index].stamina[1] /
				(party_records[member_index].skills[10] /
				 (random_below(4) + 7) + 1) +
				random_below(party_records[member_index].stamina[1] / 10);
			party_records[member_index].stamina[0] -= stamina_loss;
			if (party_records[member_index].stamina[0] <= 0) {
				mark_party_member_dead(member_index, 1);
				display_member_message(member_index, MSG_DROWNED, 0);
			} else {
				try_raise_member_skill(member_index, 10, 3);
				draw_party_member_panel(member_index, 1);
			}
		}
	}
}
