/* Preview a saved member and let the player choose its portrait. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern long call_save_area();
extern int call_restore_area();
extern int display_pc_file_record_preview();
extern int select_character_portrait();
extern int transfer_pc_file_record();

preview_and_select_saved_member(member_index)
int member_index;
{
	int original_portrait;
	long saved_area;

	saved_area = call_save_area(14, 18, 66, 74);
	display_pc_file_record_preview(0, member_index);
	original_portrait = party_records[0].portrait;
	select_character_portrait(0, saved_area);
	call_restore_area(saved_area, 1);
	if (party_records[0].portrait != original_portrait)
		transfer_pc_file_record(party_records, member_index, 1);
}
