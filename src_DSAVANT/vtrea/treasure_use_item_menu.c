/* Use an item from a party member’s inventory. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "structs/spell.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern unsigned char item_type_counted[];
extern int list_row_count[], list_row_glyph[], list_row_marked[];
extern char list_row_name[];
extern int dialog_selection, cast_spell_target;
extern char empty_dialog_message[];
extern int data_record_io(), aztec_strcpy(), load_message_string();
extern int item_or_loot_dialog(), call_show_area(),
	draw_selected_button_label();
extern int pick_party_member(), consume_item_charge(),
	apply_spell_effect_alt();
extern int play_sound_effect(), add_floor_item(), clear_item_slot();
extern int draw_party_member_panel(), refresh_floor_item_icon();

/* Use an item from the selected party member's inventory. */
treasure_use_item_menu(member)
int member;
{
	int selection;
	struct item_record item_data;
	int dialog_result, group, slot;
	int encoded_position[32];
	int row_count;

	row_count = 0;
	for (group = 0; group < 2; group++) {
	for (slot = 0; slot < 10; slot++) {
	if (party_records[member].item_slots[group][slot].item_id > 0) {
	data_record_io(1, &item_data,
		party_records[member].item_slots[group][slot].item_id, 0);
	if (party_records[member].item_slots[group][slot].flags & 128)
		aztec_strcpy(list_row_name + row_count * 22, item_data.name);
	else
		load_message_string(MSG_DAGGER_6000 + item_data.glyph,
		list_row_name + row_count * 22);
	list_row_glyph[row_count] = item_data.glyph;
	list_row_marked[row_count] = group;
	if (
		item_type_counted[party_records[member].item_slots[group][slot].item_type]
		== 1)
		list_row_count[row_count] =
		party_records[member].item_slots[group][slot].level;
	else
		list_row_count[row_count] = 0;
	encoded_position[row_count] = group * 256 + slot;
	row_count++;
	}
	}
	}
	if (row_count == 0) return;
	dialog_result =
	item_or_loot_dialog(MSG_USE_2030, 1, 1, 1, row_count, empty_dialog_message);
	selection = dialog_selection;
	if (dialog_result == 2 || selection == -1) {
	call_show_area(54, 142, 265, 198);
	return;
	}
	group = encoded_position[selection] / 256;
	slot = encoded_position[selection] % 256;
	draw_selected_button_label(dialog_result + MSG_USE_2030, dialog_result, 63,
	150, 12, 16);
	if (dialog_result == 0) {
	data_record_io(1, &item_data,
	party_records[member].item_slots[group][slot].item_id, 0);
	if (item_data.spell_code != 0) {
	encoded_position[30] = item_data.spell_code / 256;
	encoded_position[31] = item_data.spell_code % 256;
	if (spell_table->spell[encoded_position[31]].targeted == 1) {
	cast_spell_target = pick_party_member();
	if (cast_spell_target == -1) encoded_position[31] = -1;
	}
	call_show_area(54, 142, 265, 198);
	if (encoded_position[31] != -1) {
	consume_item_charge(member, group, slot);
	apply_spell_effect_alt(member, encoded_position[31], encoded_position[30],
		cast_spell_target);
	}
	}
	} else if (dialog_result == 1) {
	if (party_records[member].item_slots[group][slot].flags & 2)
	play_sound_effect(0);
	else {
	add_floor_item(member * 584 + group * 120 + slot * 12 + 23604);
	clear_item_slot(member, group, slot);
	}
	}
	call_show_area(54, 142, 265, 198);
	draw_party_member_panel(member, 1);
	refresh_floor_item_icon();
}
