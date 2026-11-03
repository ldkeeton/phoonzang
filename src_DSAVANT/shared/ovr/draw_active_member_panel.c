/* Draws the active member's panel and its level marker. */

#include "structs/member.h"

extern struct member_rec *battle_groups[];
extern int member_is_active(), draw_party_member_panel();
extern int call_set_text_pos(), draw_font_glyph(), call_show_area();

draw_active_member_panel(member_index, draw_detail)
int member_index, draw_detail;
{
	/* The measured frame reserves two status words; the generated checks use
	   the return value and record field directly instead of these locals. */
	int active_member;
	int unit_phase;
	int panel_x;
	int panel_y;

	/* Inactive members and phases other than 1 or 3 use the ordinary panel. */
	if (!member_is_active(member_index))
		goto fallback_panel;
	if (battle_groups[0]->unit[member_index].phase != 1
			&& battle_groups[0]->unit[member_index].phase != 3)
		goto fallback_panel;

	draw_party_member_panel(member_index, 0);
	/* The two panel columns start at x=5 and x=257; rows are 45 pixels apart. */
	panel_x = (member_index % 2) * 252 + 5;
	panel_y = (member_index / 2) * 45 + 18;
	/* Place the level marker at its fixed slot offset. */
	call_set_text_pos(panel_x + 28, panel_y + 21);
	/* Glyph 11 is the level marker, drawn in style 6. */
	draw_font_glyph(11, 6);

	/* The optional detail box exposes the adjacent 59 by 43 pixel stat area. */
	if (draw_detail)
		call_show_area(panel_x, panel_y, panel_x + 59, panel_y + 43);
	goto done;

fallback_panel:
	draw_party_member_panel(member_index, draw_detail);
done:
	return;
}
