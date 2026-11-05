/* List a member's items and return the chosen slot, picking a target if
   needed. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "structs/spell.h"
#include "structs/member.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern char item_type_counted[];
extern char list_row_name[][22];
extern int list_row_glyph[];
extern int list_row_marked[], list_row_count[];
extern int dialog_selection;
extern struct member_rec *battle_groups[];

extern int data_record_io(), aztec_strcpy(), load_message_string();
extern int wait_for_party_screen_animation(), item_action_dialog();
extern int call_show_area(), draw_selected_button_label();
extern int pick_party_member();

choose_member_item_to_use(pc)
int pc;
{
	int selection;
	struct item_record item;
	int action_result, page, slot, spell, spell_power;
	int item_row_scratch[10];
		/* uncertain: allocated but untouched in this routine */
	int row_count;
	int row_slots[20];
	int selected_target;

	row_count = 0;
	page = 0;
	/* Scan both ten-slot pages for occupied item slots. */
	do {
		slot = 0;
		do {
			if (party_records[pc].item_slots[page][slot].item_id > 0) {
				data_record_io(1, &item,
					party_records[pc].item_slots[page][slot].item_id, 0);
				if (party_records[pc].item_slots[page][slot].flags & 128)
					aztec_strcpy(list_row_name[row_count], item.name);
				else
					load_message_string(MSG_DAGGER_6000 +
						party_records[pc].item_slots[page][slot].glyph,
						list_row_name[row_count]);
				list_row_glyph[row_count] = item.glyph;
				list_row_marked[row_count] = page;
				if (item_type_counted[
					party_records[pc].item_slots[page][slot].item_type] == 1)
					list_row_count[row_count] =
						party_records[pc].item_slots[page][slot].level;
				else
					list_row_count[row_count] = 0;
				row_slots[row_count] = page * 256 + slot;
				++row_count;
			}
		} while (++slot < 10);
	} while (++page < 2);

	if (row_count == 0)
		return -1;
	wait_for_party_screen_animation();
	action_result = item_action_dialog(MSG_3030, 0, 1, 1,
		row_count, party_records[pc].name);
	selection = dialog_selection;
	if (action_result != 1 || selection == -1) {
		call_show_area(54, 142, 265, 198);
		return -1;
	}
	page = row_slots[selection] / 256;
	slot = row_slots[selection] % 256;
	draw_selected_button_label(MSG_3030 + action_result, action_result,
		63, 150, 12, 16);
	data_record_io(1, &item,
		party_records[pc].item_slots[page][slot].item_id, 0);
	if (item.spell_code != 0) {
		spell_power = item.spell_code / 256;
		spell = item.spell_code % 256;
		if (spell_table->spell[spell].targeting.bytes.targeted == 1) {
			selected_target = pick_party_member();
			if (selected_target == -1) {
				call_show_area(54, 142, 265, 198);
				return -1;
			}
			battle_groups[0]->unit[pc].target_group = 0;
			battle_groups[0]->unit[pc].target_unit = selected_target;
		}
	}
	call_show_area(54, 142, 265, 198);
	return page * 256 + slot;
}
