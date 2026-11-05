/* Equip a selected item and recompute the member's defenses. */
#include "structs/pcrec.h"
#include "structs/itemrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int item_page;
extern int data_record_io();
extern int item_inventory_category();
extern int play_sound_effect();
extern int equipped_item_is_cursed();
extern int display_cursed_status_message();
extern int call_show_area();
extern int select_grid_text_option();
extern int unequip_item_slot();
extern int set_party_hand_attack();
extern int clamp_between();
extern int selected_equipment_slot;

int equip_selected_party_item(member_index, selected_item)
int member_index;
struct pc_item_slot *selected_item;
{
	int i, j, category, unused_selected_slot;
	int equipment_position, inventory_page, item_index, resistance;
	int bonus, selected_index, previous_index, current_resistance;
	int option[3];
	struct item_record item;
	struct pc_item_slot saved_slot;

	selected_equipment_slot = 0;
	inventory_page = 0;
	item_index = 0;
	for (;;) {
		if (inventory_page >= 2)
			break;
		if (
			party_records[member_index].item_slots[inventory_page][item_index].item_id
			<= 0)
			break;
		++item_index;
		if (item_index == 10) {
			item_index = 0;
			++inventory_page;
			if (inventory_page == 2) {
				play_sound_effect(0);
				return -1;
			}
		}
	}

	data_record_io(1, &item, selected_item->item_id, 0);
	category = item_inventory_category(member_index, &item);
	if (category == -1) {
		play_sound_effect(0);
		return -1;
	}
	if (category == -2) {
		if (equipped_item_is_cursed(member_index, 0))
			category = 1;
		if (equipped_item_is_cursed(member_index, 1))
			category = 0;
	}
	if ((item.slot_flags & 4) && equipped_item_is_cursed(member_index, 1)) {
		display_cursed_status_message();
		return -1;
	}
	if (equipped_item_is_cursed(member_index, category)) {
		display_cursed_status_message();
		return -1;
	}
	if (category == 1 && party_records[member_index].equipped[0] != 255 &&
		party_records[member_index].item_slots[0]
			[party_records[member_index].equipped[0]].flags & 8 &&
		equipped_item_is_cursed(member_index, 0)) {
		display_cursed_status_message();
		return -1;
	}
	if (category == -2) {
		call_show_area(3, 187, 189, 198);
		option[0] = 1;
		option[1] = 1;
		option[2] = -1;
		category = select_grid_text_option(351, MSG_SELECT_WEAPON_PRIORITY,
			74, 112, 11, 106, 12, 1, 2, 1, -1, 0, option);
	}
	if (category == 0) {
		if (item.slot_flags & 4) {
			equipment_position = party_records[member_index].equipped[1];
			if (equipment_position != 255)
				unequip_item_slot(member_index, equipment_position);
		}
	} else if (category == 1) {
		equipment_position = party_records[member_index].equipped[0];
		if (equipment_position != 255 &&
			party_records[member_index].item_slots[0][equipment_position].flags & 8)
			unequip_item_slot(member_index, equipment_position);
	}
	equipment_position = party_records[member_index].equipped[category];
	if (equipment_position != 255)
		unequip_item_slot(member_index, equipment_position);

	if (inventory_page != 0) {
		party_records[member_index].item_slots[inventory_page][item_index] =
			party_records[member_index].item_slots[0][9];
		inventory_page = 0;
		item_index = 9;
	}
	selected_equipment_slot = item_index;
	party_records[member_index].item_slots[inventory_page][item_index] =
		*selected_item;
	party_records[member_index].item_slots[inventory_page][item_index].flags |= 1;
	party_records[member_index].equipped[category] = item_index;
	if ((unsigned char)item.pad3d > 0) {
		party_records[member_index].item_slots[inventory_page][item_index].flags |=
			2;
		display_cursed_status_message();
	}
	i = 0;
	equipment_position = 0;
	for (;;) {
		if (i >= 8)
			break;
		item_index = party_records[member_index].equipped[i];
		if (item_index != 255) {
			saved_slot = party_records[member_index].item_slots[0][item_index];
			while (item_index > equipment_position) {
				party_records[member_index].item_slots[0][item_index] =
					party_records[member_index].item_slots[0][item_index - 1];
				for (j = 0; j < 8; j++)
					if (party_records[member_index].equipped[j] == item_index - 1)
						party_records[member_index].equipped[j] = item_index;
				--item_index;
			}
			party_records[member_index].item_slots[0][equipment_position] = saved_slot;
			party_records[member_index].equipped[i] = equipment_position;
			if (category == i)
				selected_equipment_slot = equipment_position;
			++equipment_position;
		}
		++i;
	}
	if (category == 0 || category == 1) {
		party_records[member_index].armor_class[1] -= item.armor_class;
		set_party_hand_attack(member_index, category, &item);
	} else
		party_records[member_index].armor_class[category] -= item.armor_class;
	for (i = 0; i < 14; ++i)
		party_records[member_index].resistance_rows.named.resist[i] =
			party_records[member_index].resistance_rows.named.base_resist[i];
	for (i = 0; i < 8; ++i) {
		if (party_records[member_index].equipped[i] != 255) {
			for (resistance = 0; resistance < 2; ++resistance) {
				bonus = party_records[member_index].item_slots[0]
					[party_records[member_index].equipped[i]].resist_bonus[resistance] / 16;
				selected_index = party_records[member_index].item_slots[0]
					[party_records[member_index].equipped[i]]
					.resist_bonus[resistance] % 16 * 10;
				party_records[member_index].resistance_rows.named.resist[bonus] =
					clamp_between(
						party_records[member_index].resistance_rows.named.resist[bonus] +
						selected_index,
						0, 125);
			}
			bonus = party_records[member_index].item_slots[0]
				[party_records[member_index].equipped[i]].regen_drain / 16;
			selected_index = party_records[member_index].item_slots[0]
				[party_records[member_index].equipped[i]].regen_drain % 16;
			party_records[member_index].hp_regen =
				party_records[member_index].hp_regen < selected_index ?
				selected_index : party_records[member_index].hp_regen;
			party_records[member_index].hp_drain =
				party_records[member_index].hp_drain < bonus ?
				bonus : party_records[member_index].hp_drain;
		}
	}
	return item.special_power_code;
}
