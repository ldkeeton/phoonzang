/* Copy a battle member's current values into the party record and refresh its
   panel. */
#include "structs/member.h"
#include "structs/pcrec.h"

extern struct member_rec *battle_groups[];
extern struct pc_rec party_records[];
extern int movmem();
extern int strlen();
extern int draw_active_member_panel();
extern int call_fill_area();
extern int call_set_text_color();
extern int call_set_text_pos();
extern int draw_text_glyphs();
extern int call_show_area();

sync_member_party_panel(member, show_name)
int member;
int show_name;
{
	int panel_x;
	int panel_y;

	party_records[member].hp[0] = battle_groups[0]->unit[member].hp;
	party_records[member].stamina[0] = battle_groups[0]->unit[member].stamina;
	party_records[member].state = battle_groups[0]->unit[member].state;
	movmem(battle_groups[0]->unit[member].status,
		party_records[member].status, 10);
	party_records[member].poison_strength =
		battle_groups[0]->unit[member].poison_strength;
	draw_active_member_panel(member, 0);

	panel_x = (member % 2) * 252 + 5;
	panel_y = 18 + (member / 2) * 45;
	if (show_name != 0) {
		call_fill_area(panel_x + 3, panel_y + 32,
			strlen(party_records[member].name) * 6 + panel_x + 3,
			panel_y + 36, 23);
		call_set_text_color(1, 23);
		call_set_text_pos(panel_x + 4, panel_y + 32);
		draw_text_glyphs(party_records[member].name, 0);
	}
	call_show_area(panel_x, panel_y, panel_x + 59, panel_y + 43);
}
