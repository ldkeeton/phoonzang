/* Add selected PC-file records to the party and reveal their panels. */
#include "structs/pcrec.h"
#include "structs/roster.h"
#include "msg.h"

extern int party_char_count, member_roster_index[], member_icon[];
extern struct pc_rec party_records[];
extern struct roster_state_view pc_file_record_base_hi;
extern int choose_pc_file_character(), transfer_pc_file_record();
extern int find_unused_member_icon(), load_member_icon();
extern int draw_party_member_panel(), call_show_area();

add_character_from_pc_file()
{
	int selected_record_index, panel_x, panel_y;
	struct pc_rec selected_record;

	while (party_char_count < 6) {
		/* The dialog returns -1 when no PC-file entry was selected. */
		selected_record_index = choose_pc_file_character(MSG_ADD_CHARACTER_1200);
		if (selected_record_index == -1)
			goto finish;

		transfer_pc_file_record(&selected_record, selected_record_index, 0);
		pc_file_record_base_hi.availability[selected_record_index] = 2;
		member_roster_index[party_char_count + 1] = selected_record_index;
		member_icon[party_char_count] =
			find_unused_member_icon(party_char_count);
		load_member_icon(selected_record.kind,
			member_icon[party_char_count]);
		party_records[party_char_count] = selected_record;
		draw_party_member_panel(party_char_count, 0);

		/* Party slots occupy two columns, 252 pixels apart and 45 tall. */
		panel_x = party_char_count % 2 * 252 + 5;
		panel_y = party_char_count / 2 * 45 + 18;
		switch (party_char_count) {
		case 4:
			call_show_area(panel_x, panel_y, panel_x + 59, 141);
			call_show_area(panel_x, panel_y, 53, panel_y + 43);
			break;
		case 5:
			call_show_area(panel_x, panel_y, panel_x + 59, 141);
			call_show_area(266, panel_y, panel_x + 59, panel_y + 43);
			break;
		default:
			call_show_area(panel_x, panel_y, panel_x + 59, panel_y + 43);
			break;
		}
		party_char_count++;
	}

finish:
	call_show_area(54, 142, 265, 198);
}
