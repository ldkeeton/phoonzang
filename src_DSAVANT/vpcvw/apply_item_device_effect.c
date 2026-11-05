/* Apply an item's special effect to a party member or the current map. */
#include "structs/itemrec.h"
#include "structs/rgnstate.h"
#include "structs/spell.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern struct spell_table_view spell_table[];
extern struct saved_region_blocks party_region;
extern unsigned char scenario_header_data[][16];
extern unsigned current_level;
extern int item_page;
extern int picked_item_slot;
extern int selected_spell_target_member;
extern int data_record_io();
extern int select_inventory_slot();
extern int select_party_member_from_roster();
extern int test_bit();
extern int load_message_string();
extern int display_centered_message();
extern int show_vpcvw_scene_messages();
extern int set_bitmap_bit();
extern int clamp_between();
extern int play_sound_effect();
extern int random_below();
extern int improve_party_skill_randomly();
extern int apply_char_view_spell_effect();
extern int consume_counted_item_use();

/* Apply an item's special effect to a party member or the current map. */
apply_item_device_effect(pc, slot)
int pc;
struct pc_item_slot *slot;
{
	int stop;
	struct item_record item;
	int spell_number;
	int spell_power;
	char message[80];

	data_record_io(1, &item, slot->item_id, 0);
	if (item.kind > 0) {
		switch (item.kind) {
		case 1:
			picked_item_slot = select_inventory_slot();
			if (picked_item_slot != -1)
				if (party_records[pc].item_slots[item_page][picked_item_slot].item_id
					== 471)
					show_vpcvw_scene_messages(MSG_PASSING_THE_DEVICE_OV_19480);
			break;
		case 2:
			show_vpcvw_scene_messages(item.message_or_stack_limit);
			break;
		case 3:
			if (test_bit(item.profession_mask,
				party_records[pc].profession)) {
				spell_number = item.spell_code % 256;
				if (2 * spell_table->spell[spell_number].realm_level.bytes.level >
					party_records[pc].level) {
					load_message_string(MSG_YOU_ARE_NOT_ADVANCED_EN_721, message);
					display_centered_message(message, 1);
				} else {
					set_bitmap_bit(party_records[pc].spell_bitmap,
						spell_number, 1);
					load_message_string(MSG_THE_SPELL_HAS_BEEN_SCRI_720, message);
					display_centered_message(message, 1);
					slot->item_id = 0;
				}
			} else {
				load_message_string(MSG_YOU_ARE_NOT_ELIGIBLE_TO_722, message);
				display_centered_message(message, 1);
			}
			break;
		case 4:
				if (current_level == item.u.key.map) {
					set_bitmap_bit(party_region.state[item.u.key.map],
					item.u.key.clear_bit,
					0);
					set_bitmap_bit(scenario_header_data[item.u.key.map],
					item.u.key.clear_bit, 0);
					set_bitmap_bit(party_region.state[item.u.key.map],
					item.u.key.set_bit, 1);
					set_bitmap_bit(scenario_header_data[item.u.key.map],
					item.u.key.set_bit, 1);
				consume_counted_item_use(slot);
			}
			break;
		case 6:
			if (party_records[pc].poison_strength < 3)
				party_records[pc].poison_strength = 3;
			party_records[pc].status[5] = clamp_between(
				party_records[pc].status[5] + 200, 0, 250);
			party_records[pc].status[8] = clamp_between(
				party_records[pc].status[8] + 200, 0, 250);
			consume_counted_item_use(slot);
			play_sound_effect(party_records[pc].gender + 8);
			break;
		case 10:
			stop = 0;
			while (party_records[pc].stat[7] > 0 && stop == 0) {
				--party_records[pc].stat[7];
				stop = random_below(3);
			}
			consume_counted_item_use(slot);
			break;
		case 11:
			improve_party_skill_randomly(pc, 20, 3, 4);
			consume_counted_item_use(slot);
			break;
		}
	} else if (item.spell_code != 0) {
		spell_power = item.spell_code / 256;
		spell_number = item.spell_code % 256;
		if (spell_table->spell[spell_number].targeting.bytes.targeted == 1) {
			selected_spell_target_member = select_party_member_from_roster();
			if (selected_spell_target_member == -1)
				return;
		}
		apply_char_view_spell_effect(pc, spell_number, spell_power,
			selected_spell_target_member);
		consume_counted_item_use(slot);
	} else
		play_sound_effect(0);
}
