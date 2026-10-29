/* Remove a member, compact the party, and restore the vacated panel. */
#include "structs/pcrec.h"

struct roster_state_view {
	int record_base_high;		/* +0: high word of the PCFILE record base */
	unsigned char availability[18];	/* +2: per-roster-entry state */
};

extern struct roster_state_view pc_file_record_base_hi;
extern int member_roster_index[], member_icon[], party_char_count;
extern struct pc_rec party_records[];
extern long panel_area[];
extern draw_party_member_panel(), call_restore_area(), call_show_area();

remove_party_member(member, reveal)
int member, reveal;
{
	int slot, panel_x, panel_y;

	pc_file_record_base_hi.availability[member_roster_index[member + 1]] = 1;
	party_char_count--;
	/* Shift later records, roster indices, and icons over the removed slot. */
	for (slot = member; slot < party_char_count; slot++) {
		party_records[slot] = party_records[slot + 1];
		member_roster_index[slot + 1] = member_roster_index[slot + 2];
		member_icon[slot] = member_icon[slot + 1];
	}
	/* Redraw the remaining panels and erase the now-unused final panel. */
	for (slot = 0; slot < party_char_count; slot++)
		draw_party_member_panel(slot, 1);
	call_restore_area(panel_area[party_char_count], 0);
	if (reveal) {
		/* Two columns 252 pixels apart, with rows spaced by 45 pixels. */
		panel_x = party_char_count % 2 * 252 + 5;
		panel_y = party_char_count / 2 * 45 + 18;
		call_show_area(panel_x, panel_y, panel_x + 59, panel_y + 43);
	}
}
