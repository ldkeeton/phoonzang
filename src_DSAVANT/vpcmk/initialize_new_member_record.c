/* Initialize a newly created party member's record and panel state. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int initialize_new_member_basics();
extern int draw_member_panel_glyphs();
extern int initialize_member_profession();

initialize_new_member_record(member_index)
int member_index;
{
	int slot;

	party_records[member_index].level_scaled_percent = 100;
	initialize_new_member_basics(member_index);
	draw_member_panel_glyphs(member_index);
	party_records[member_index].hp_regen = 0;
	party_records[member_index].hp_drain = 0;
	party_records[member_index].stamina_drain = 0;
	party_records[member_index].rank = 0;
	party_records[member_index].level = 1;
	party_records[member_index].deaths = 1;
	for (slot = 0; slot < 8; slot++)
		party_records[member_index].equipped[slot] = 255;
	initialize_member_profession(member_index);
	party_records[member_index].adjusted_stat4 = 1;
	party_records[member_index].adjusted_stat5 = 1;
	party_records[member_index].stat5_plus_power =
		party_records[member_index].stat[5] + 1;
}
