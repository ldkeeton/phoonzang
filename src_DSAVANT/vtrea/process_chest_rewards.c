/* Resolve chest loot and distribute gold, experience, and items. */
#include "structs/itemrec.h"
#include "structs/pcrec.h"
#include "structs/slotstat.h"
#include "msg.h"

extern int selected_item_record, selected_item_slot;
extern int party_return_state, loot_row_total, party_char_count;
extern int treasure_message_row;
extern char far *mouse_pointer_shape;
extern int game_state, glyph_painter;
extern struct slot_record slot_records[];
extern struct pc_rec party_records[];
extern int loot_row_value[], list_row_count[];
extern char list_row_name[];
extern int list_row_glyph[], list_row_marked[], loot_row_identified[],
	loot_row_flag2[];
extern unsigned char item_type_counted[];
extern int data_record_io(), call_show_area(), handle_treasure_trap();
extern int redraw_treasure_caption(), apply_region_nausea_and_flags();
extern int test_bit(), give_quest_map(), set_bitmap_bit(), random_below();
extern int is_quest_map_item(), aztec_ldv(), set_mouse_pointer_shape();
extern int call_mouse_glide_to(), load_message_string(), aztec_strcpy();
extern int replace_slashes_with_spaces(), format_int_decimal();
extern int add_random_steps();
extern int str_subst_char(), aztec_strlen(), show_treasure_message();
extern int format_long_decimal(), call_mouse_glide_back(), divvy_loot_menu();
extern int update_treasure_frame(), wait_treasure_input_or_timeout();

/* Resolves the opened chest rewards and updates the surviving party. */
process_chest_rewards()
{
	int row;
	struct chest_record chest;
	struct item_record item_data;
	int living_count;
	long gold_total, experience_total;
	char short_message[40];
	char message[80];
	char number[80];
	char item_name[80];

	data_record_io(7, &chest, selected_item_record, 0);
	selected_item_record = -1;
	if (chest.trap_effect > 0) {
		call_show_area(55, 146, 265, 198);
		if (handle_treasure_trap(&chest) == -1) {
			redraw_treasure_caption(1);
			return;
		}
		redraw_treasure_caption(1);
	}
	if (party_return_state == 21)
		apply_region_nausea_and_flags();
	redraw_treasure_caption(1);
	gold_total = 0;
	experience_total = 0;
	loot_row_total = 0;
	if (selected_item_slot != -1) {
		if (slot_records[selected_item_slot].health <= 0) {
			for (row = 0; row < 11; row++) {
				if (test_bit(slot_records[selected_item_slot].held_maps, row)) {
					give_quest_map(21, selected_item_slot, row);
					loot_row_value[loot_row_total] = row + 400;
					loot_row_total++;
				}
				if (test_bit(slot_records[selected_item_slot].known_maps, row))
					set_bitmap_bit(slot_records[21].known_maps, row, 1);
			}
		}
	}
	for (row = 0; row < 8; row++) {
		if (random_below(100) < chest.row[row].chance) {
			switch (chest.row[row].item_type) {
			case 1:
				gold_total += (long)random_below(chest.row[row].base -
					chest.row[row].span) + chest.row[row].span;
				break;
			case 4:
				experience_total += (long)chest.row[row].base *
					chest.row[row].span;
				break;
			case 2:
				loot_row_value[loot_row_total] =
					random_below(chest.row[row].span) +
					chest.row[row].base;
				if (is_quest_map_item(loot_row_value[loot_row_total]))
					give_quest_map(21, -1, loot_row_value[loot_row_total] + (unsigned)65136);
				if (loot_row_value[loot_row_total] > 0) loot_row_total++;
				break;
			}
		}
	}
	living_count = 0;
	for (row = 0; row < party_char_count; row++)
		if (party_records[row].state == 0) living_count++;
	if (living_count == 0) {
		game_state = 8;
		return;
	}
	gold_total = (long)gold_total / living_count;
	set_mouse_pointer_shape(mouse_pointer_shape);
	call_mouse_glide_to(302, 164, 0);
	load_message_string(MSG_YOU_FOUND, short_message);
	for (row = 0; row < loot_row_total; row++) {
		if (loot_row_value[row] <= 0) continue;
		data_record_io(1, &item_data, loot_row_value[row], 0);
		if (item_data.slot_flags & 1)
			aztec_strcpy(list_row_name + row * 22, item_data.name);
		else
			load_message_string(MSG_DAGGER_6000 + item_data.glyph,
				list_row_name + row * 22);
		aztec_strcpy(item_name, list_row_name + row * 22);
		replace_slashes_with_spaces(item_name);
		if (item_type_counted[item_data.item_type] == 1)
			list_row_count[row] =
				(unsigned char)add_random_steps(item_data.level_spec);
		else
			list_row_count[row] = -1;
		list_row_glyph[row] = item_data.glyph;
		list_row_marked[row] = 0;
		loot_row_flag2[row] = (item_data.slot_flags & 2) ? 1 : 0;
		loot_row_identified[row] = (item_data.slot_flags & 1) ? 1 : 0;
		aztec_strcpy(message, short_message);
		format_int_decimal(list_row_count[row] > 0 ? list_row_count[row]
			: 1, number);
		str_subst_char(message, number, 37);
		str_subst_char(message, item_name + (item_name[0] == '?'), 36);
		if (item_data.slot_flags & 1) {
			chest.message_length = aztec_strlen(message);
			switch (item_data.item_type) {
			case 12: load_message_string(MSG_POTION_5016,
				message + chest.message_length); break;
			case 13: load_message_string(MSG_SCROLL_5017,
				message + chest.message_length); break;
			case 16: load_message_string(MSG_POWDER_5018,
				message + chest.message_length); break;
			}
		}
		show_treasure_message(message, treasure_message_row, 1, 1);
	}
	if (gold_total > 0) {
		load_message_string(MSG_EACH_SHARE_OF_LOOT_WOR_5002, message);
		format_long_decimal(gold_total, number);
		str_subst_char(message, number, 36);
		show_treasure_message(message, treasure_message_row, 0, 85);
	}
	if (experience_total > 0) {
		load_message_string(MSG_EVERYONE_RECEIVES_A_EX_5003, message);
		format_long_decimal(experience_total, number);
		str_subst_char(message, number, 36);
		show_treasure_message(message, treasure_message_row, 1, 65);
	}
	call_mouse_glide_back(302, 164, 0);
	set_mouse_pointer_shape(0L);
	for (row = 0; row < party_char_count; row++)
		if (party_records[row].state == 0) {
			party_records[row].experience += experience_total;
			party_records[row].gold += gold_total;
		}
	if (loot_row_total > 0) divvy_loot_menu();
	glyph_painter = 0;
	update_treasure_frame();
	wait_treasure_input_or_timeout(2);
}
