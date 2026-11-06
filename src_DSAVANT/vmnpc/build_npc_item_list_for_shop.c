/* Builds the NPC's shop rows from the NPC's quest maps and shop stock. */
#include "structs/slotstat.h"
#include "structs/itemrec.h"
#include "structs/npc.h"

extern struct slot_record slot_records[];
extern long game_time;
extern int npc_item_list_count;
extern int npc_item_list_item_id[];
extern unsigned char npc_item_list_profession_mask[];
extern unsigned char npc_item_list_race_mask[];
extern unsigned char npc_item_list_gender_mask[];
extern unsigned char npc_item_list_item_type[];
extern unsigned char npc_item_list_glyph[];
extern unsigned long npc_item_list_value[];
extern int npc_item_list_item_count[];
extern char npc_item_list_name[][22];
extern unsigned char item_type_counted[];
extern unsigned char code_characters[];
extern char npc_slot_index;
extern unsigned char npc_shop_stock_record_index;
extern int npc_shop_price_markup;
extern int aztec_setmem(), test_bit(), data_record_io();
extern int aztec_strcpy(), is_quest_map_item();

build_npc_item_list_for_shop()
{
	int row;
	int field;
	int random_index;
	int stock_chance;
	struct npc_shop_stock_entry stock[9];
	struct item_record item;

	npc_item_list_count = 0;
	aztec_setmem(npc_item_list_item_id, 60, 0);
	if (npc_slot_index != -1) {
		for (row = 0; row < 11; ++row) {
		if (test_bit(slot_records[npc_slot_index].held_maps,
				row)) {
				npc_item_list_item_id[npc_item_list_count] = row + 400;
				++npc_item_list_count;
			}
		}
	}
	if (npc_shop_stock_record_index > 0) {
		data_record_io(7, stock, npc_shop_stock_record_index, 0);
		random_index = 0;
		for (row = 0; row < 8; ++row) {
			stock_chance = stock[row].state == 2 ? stock[row].time_code : 0;
			if (stock[row].state == 3) {
				stock_chance = (int)(game_time / 1440L) -
					stock[row].time_code * 5;
				if (stock_chance > 50)
					stock_chance = 50;
			}
			if (stock_chance > 0 && stock[row].first_item_id > 0) {
				while (npc_item_list_count < 30 && stock[row].item_id_count > 0) {
					if (code_characters[random_index] < stock_chance) {
						npc_item_list_item_id[npc_item_list_count] =
							stock[row].first_item_id;
						++npc_item_list_count;
					}
					random_index = (random_index + 1) % 100;
					++stock[row].first_item_id;
					--stock[row].item_id_count;
				}
			}
		}
	}
	for (row = 0; row < npc_item_list_count; ++row) {
		data_record_io(1, &item, npc_item_list_item_id[row], 0);
		aztec_strcpy(npc_item_list_name[row], item.name);
		npc_item_list_item_type[row] = item.item_type;
		npc_item_list_item_count[row] = item.level_spec.base +
			item.level_spec.count * item.level_spec.span;
		if (item_type_counted[item.item_type] == 1)
			item.price *= npc_item_list_item_count[row];
		npc_item_list_value[row] = is_quest_map_item(
			npc_item_list_item_id[row]) ? item.price :
			item.price * npc_shop_price_markup / 100;
		npc_item_list_glyph[row] = item.glyph;
		for (field = 0; field < 2; ++field) {
			npc_item_list_profession_mask[row * 2 + field] =
				item.profession_mask[field];
			npc_item_list_race_mask[row * 2 + field] = item.race_mask[field];
		}
		npc_item_list_gender_mask[row] = item.gender_mask[0];
	}
}
