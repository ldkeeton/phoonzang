/* Display a saved character file in a party record preview. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int remaining_stat_points;
extern int transfer_pc_file_record();
extern int draw_roster_member_summary();
extern int load_member_icon();
extern int draw_loaded_member_icon();
extern int display_character_statistics();
extern int call_show_area();

display_pc_file_record_preview(member_index, file_record_index)
int member_index, file_record_index;
{
	transfer_pc_file_record(&party_records[member_index], file_record_index, 0);
	remaining_stat_points = -1;
	draw_roster_member_summary(member_index);
	load_member_icon(party_records[member_index].portrait, 0);
	draw_loaded_member_icon(member_index, 14, 18);
	display_character_statistics(member_index, 0);
	call_show_area(0, 0, 319, 199);
}
