/* Exchange two party members and redraw their screen panels. */
#include "structs/pcrec.h"
extern struct pc_rec party_records[];
extern int member_roster_index[], member_icon[];
extern long panel_area[];
extern int call_fill_area(), call_set_text_color(), call_set_text_pos();
extern int draw_text_glyphs(), call_show_area(), pick_party_member();
extern int draw_party_member_panel(), call_restore_area();

/* Prompt for a second member, then swap the records and panel metadata. */
swap_party_members(member)
int member;
{
	int other;
	struct pc_rec saved;
	int saved_roster, saved_icon;
	int left, top;
	left = member % 2 * 252 + 5;
	top = member / 2 * 45 + 18;
	call_fill_area(left + 3, top + 32,
	left + 3 + 6 * strlen(party_records[member].name), top + 36, 23);
	call_set_text_color(1, 23);
	call_set_text_pos(left + 4, top + 32);
	draw_text_glyphs(party_records[member].name, 0);
	call_show_area(left + 3, top + 32, left + 45, top + 36);
	other = pick_party_member();
	if (other == -1 || other == member) {
	draw_party_member_panel(member, 1);
	return;
	}
	saved = party_records[member];
	saved_roster = member_roster_index[member + 1];
	saved_icon = member_icon[member];
	party_records[member] = party_records[other];
	member_roster_index[member + 1] = member_roster_index[other + 1];
	member_icon[member] = member_icon[other];
	party_records[other] = saved;
	member_roster_index[other + 1] = saved_roster;
	member_icon[other] = saved_icon;
	call_restore_area(panel_area[member], 0);
	left = member % 2 * 252 + 5;
	top = member / 2 * 45 + 18;
	call_show_area(left, top, left + 59, top + 43);
	call_restore_area(panel_area[other], 0);
	left = other % 2 * 252 + 5;
	top = other / 2 * 45 + 18;
	call_show_area(left, top, left + 59, top + 43);
	draw_party_member_panel(member, 1);
	draw_party_member_panel(other, 1);
}
