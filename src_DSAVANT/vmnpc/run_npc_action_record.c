/* Runs the rows of one NPC action record: the handler run by every event
   trigger. */
#include "structs/npc.h"
#include "structs/pcrec.h"
#include "structs/slotrec.h"
#include "structs/slotstat.h"
#include "structs/rgnstate.h"
#include "structs/maze.h"
#include "msg.h"
#include "structs/loadrec.h"
extern struct load_header scenario_header;
extern struct npc_record npc_record;

extern struct pc_rec party_records[];
extern struct slot_record slot_records[];
extern int npc_record_index, npc_action_state;
extern int npc_message_ready, npc_dialog_departure_flag;
extern int game_state, party_return_state;
extern int party_char_count;
extern int current_level, previous_level;
extern int previous_party_cell_x, previous_party_cell_y;
extern int previous_party_map_piece, previous_party_world_x;
extern int previous_party_world_y, previous_party_facing;
extern int party_cell_x, party_cell_y, party_map_piece;
extern int party_world_x, party_world_y, party_facing;
extern struct saved_region_blocks party_region;
extern struct maze_tables *maze_tables;
extern unsigned char picture_slot_number[];
extern int cell_slot_ref[3][3];
extern int npc_cell_effect_frame[3][3];
extern char npc_choice_message_buffer[], npc_effect_message_buffer[];
extern char npc_action_bitmap_copy[];
extern char faction_attitudes[];
extern int data_record_io();
extern int start_npc_attack(), begin_npc_message_display();
extern int display_npc_message_sequence(), end_npc_message_display();
extern int show_npc_message(), call_wait_sound(), free_picture_slot();
extern int load_monster_picture(), fill_npc_action_slots();
extern int animate_npc_encounter_cells(), run_npc_screen_animation();
extern int wait_ticks_abortable(), find_npc_message_match();
extern int load_message_string(), aztec_strlen(), display_npc_message();
extern int poll_fullscreen_hotspot(), step_npc_screen_animation();
extern int npc_give_item_to_party_member(), find_party_item_slot();
extern int is_quest_map_item(), give_quest_map(), clear_item_slot();
extern int pool_party_gold(), random_below(), set_bitmap_bit(), test_bit();
extern int clamp_between(), str_subst_char(), display_npc_text_message();
extern int init_item_slot(), play_sound_cue(), member_is_active();
extern int select_npc_event_message();
extern int run_npc_action_record();

run_npc_action_record(member_index, action_index)
int member_index;
int action_index;
{
	int i, data_record_index;
	struct npc_action_entry entries[8];
	int value, parameter;
	int page, slot, cell_row, cell_col, match;
	long amount;
	int unused_word, result, src_col, src_row;
	int special_scene;

	data_record_index = npc_record.action_record_lookup[action_index];
	data_record_io(6, entries, data_record_index, 0);
	i = 0;
	while (i < 8) {
		special_scene = 0;
		value = entries[i].value;
		parameter = entries[i].parameter;
		switch (entries[i].action) {
		case 0:
			return 0;
		case 1:
			if (npc_message_ready)
				begin_npc_message_display();
			display_npc_message_sequence(value, parameter);
			if (npc_message_ready)
				end_npc_message_display();
			break;
		case 2:
			if (value > 0)
				npc_record.attack_encounter_id = value;
			start_npc_attack(1);
			return 1;
		case 3:
			if (parameter == 0)
				show_npc_message(MSG_LEAVES, 1, 0, 85);
			npc_dialog_departure_flag = 1;
			game_state = 5;
			party_return_state = 18;
			return 1;
		case 36:
			special_scene = 1;
		case 4:
			slot = value / 256 + 15;
			cell_col = value % 256;
			cell_row = cell_col / 16;
			cell_col = cell_col % 16;
			if (parameter > 0) {
				if (picture_slot_number[slot] != 255) {
					call_wait_sound(1);
					free_picture_slot(slot);
				}
				load_monster_picture(parameter, slot);
				cell_slot_ref[cell_row][cell_col] = slot;
				fill_npc_action_slots(slot, cell_row, cell_col, -1);
				if (special_scene) {
					npc_cell_effect_frame[cell_row][cell_col] = 1;
					animate_npc_encounter_cells(0, 0);
				}
				run_npc_screen_animation();
			} else {
				if (special_scene) {
					npc_cell_effect_frame[cell_row][cell_col] = 1;
					animate_npc_encounter_cells(1, 0);
				}
				cell_slot_ref[cell_row][cell_col] = 0;
				run_npc_screen_animation();
			}
			break;
		case 5:
			wait_ticks_abortable(parameter, 1);
			break;
		case 6:
			if (npc_message_ready)
				begin_npc_message_display();
			match = find_npc_message_match(member_index, value, parameter);
			if (npc_message_ready)
				end_npc_message_display();
			if (match > 1) {
				if (run_npc_action_record(member_index, match) == 1)
					return 1;
			} else {
				load_message_string(value + 1, npc_choice_message_buffer);
				if (aztec_strlen(npc_choice_message_buffer) > 0)
					display_npc_message(npc_choice_message_buffer, 1);
			}
			break;
		case 7:
			while (!poll_fullscreen_hotspot())
				step_npc_screen_animation();
			break;
		case 8:
			if (current_level == previous_level) {
				party_cell_x = previous_party_cell_x;
				party_cell_y = previous_party_cell_y;
				party_map_piece = previous_party_map_piece;
				party_world_x = previous_party_world_x;
				party_world_y = previous_party_world_y;
				party_facing = previous_party_facing;
				party_region.region = maze_tables->map_first[party_map_piece];
				game_state = 5;
				party_return_state = 18;
				return 1;
			}
			break;
		case 9:
			npc_give_item_to_party_member(member_index, value, parameter);
			break;
		case 10:
			result = -1;
			cell_col = member_index;
			member_index = 0;
			for (; member_index < party_char_count && result == -1;
				member_index++) {
				result = find_party_item_slot(member_index, value);
				if (result != -1) {
					page = result / 256;
					slot = result % 256;
					if (is_quest_map_item(value))
						give_quest_map(npc_record.slot_index, 21, value - 400);
					clear_item_slot(member_index, page, slot);
				}
			}
			member_index = cell_col;
			break;
		case 11:
			amount = (long)value * (long)parameter;
			party_records[member_index].gold += amount;
			npc_record.gold -= amount;
			if (npc_record.gold < 0)
				npc_record.gold = 0;
			break;
		case 12:
			amount = (long)value * 10L;
			if (amount == 0L)
				for (slot = 0; slot < party_char_count; slot++) {
					if (parameter > 0) {
						amount = party_records[slot].gold / parameter;
						party_records[slot].gold -= amount;
					} else
						party_records[slot].gold = 0L;
				}
			if (party_records[member_index].gold < amount) {
				pool_party_gold(member_index);
				if (party_records[member_index].gold < amount && parameter > 0) {
					if (run_npc_action_record(member_index, parameter) == 1)
						return 1;
					return 0;
				}
			}
			party_records[member_index].gold -= amount;
			npc_record.gold += amount;
			break;
		case 13:
			for (slot = 0; slot < 10; slot++) {
				if (random_below(3) == 0) {
					if (party_records[member_index].item_slots[1][slot].item_id > 0 &&
						!(party_records[member_index].item_slots[1][slot].flags & 64)) {
						clear_item_slot(member_index, 1, slot);
						if (random_below(3) == 0)
							slot = 10;
					}
				}
			}
			break;
		case 14:
			if (value > 0 && value < 127) {
				set_bitmap_bit(party_region.state[current_level], value, parameter);
			}
			break;
		case 15:
			if (value > 0 && value < 127) {
				set_bitmap_bit(party_region.state[current_level], value, parameter);
				set_bitmap_bit(scenario_header.level_flags[current_level],
					value, parameter);
			}
			break;
		case 16:
			if (value > 0 && value < 15) {
				set_bitmap_bit(npc_action_bitmap_copy, value, parameter);
			}
			break;
		case 17:
			if (value > 0 && value < 15) {
				set_bitmap_bit(npc_action_bitmap_copy, value, parameter);
				set_bitmap_bit(&scenario_header.npc_action_bits[npc_record_index],
					value, parameter);
			}
			break;
		case 18:
			if (test_bit(party_region.state[current_level], value) == 1)
				return 0;
			break;
		case 19:
			if (!test_bit(party_region.state[current_level], value))
				return 0;
			break;
		case 20:
			if (test_bit(npc_action_bitmap_copy, value) == 1)
				return 0;
			break;
		case 21:
			if (!test_bit(npc_action_bitmap_copy, value))
				return 0;
			break;
		case 22:
		case 23:
			if (parameter == 0)
				result = find_party_item_slot(member_index, value);
			else {
				result = -1;
				for (slot = 0; slot < party_char_count && result == -1; slot++)
					result = find_party_item_slot(slot, value);
			}
			if ((entries[i].action == 22 && result == -1) ||
				(entries[i].action == 23 && result != -1))
				return 0;
			break;
		case 24:
			if (random_below(100) > value)
				return 0;
			break;
		case 25:
			if (!test_bit(party_region.state[current_level], value) &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 26:
			if (test_bit(party_region.state[current_level], value) == 1 &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 27:
			if (!test_bit(npc_action_bitmap_copy, value) &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 28:
			if (test_bit(npc_action_bitmap_copy, value) == 1 &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 29:
			if (random_below(100) < value &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 30:
			slot_records[value].health = slot_records[value].max_health;
			slot_records[value].activity = 0;
			slot_records[value].location = parameter;
			slot_records[value].destination = parameter;
			break;
		case 31:
			result = value;
			if (result < 0)
				result = 0 - random_below(result < 0 ? -result : result);
			else
				result = random_below(result);
			slot = parameter - 100;
			faction_attitudes[npc_record.faction_index] =
				clamp_between(faction_attitudes[npc_record.faction_index] + result,
					slot, 100);
			break;
		case 32:
			for (slot = 0; slot < party_char_count; slot++) {
				result = value - 1;
				if (result > 7)
					result = random_below(8);
				if (party_records[slot].stat[result] < 19) {
					party_records[slot].stat[result]++;
					load_message_string(MSG_INCREASED, npc_choice_message_buffer);
					load_message_string(MSG_STRENGTH_5050 + result,
						npc_effect_message_buffer);
					str_subst_char(npc_choice_message_buffer,
						&party_records[slot], 94);
					str_subst_char(npc_choice_message_buffer, npc_effect_message_buffer, 36);
					display_npc_text_message(npc_choice_message_buffer, 1, 1, 85);
				}
			}
			break;
		case 33:
			src_row = value / 16;
			src_col = value % 16;
			cell_row = parameter / 16;
			cell_col = parameter % 16;
			cell_slot_ref[cell_row][cell_col] = cell_slot_ref[src_row][src_col];
			fill_npc_action_slots(cell_slot_ref[cell_row][cell_col], cell_row, cell_col,
				-1);
			cell_slot_ref[src_row][src_col] = 0;
			break;
		case 34:
			if (run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 35:
			play_sound_cue(value);
			break;
		case 37:
			if (npc_record.slot_index != -1)
				for (result = 0; result < 11; result++)
					if (test_bit(slot_records[npc_record.slot_index].held_maps,
						result))
						npc_give_item_to_party_member(member_index, result + 400, parameter);
			break;
		case 38:
			if (!member_is_active(member_index) &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 39:
			return 1;
		case 40:
			party_world_x = 123; party_world_y = 128;
			party_cell_x = 3; party_cell_y = 0;
			party_map_piece = 2; party_facing = 0;
			current_level = 19; game_state = 6;
			party_return_state = 18;
			return 1;
		case 41:
			if (faction_attitudes[npc_record.faction_index] < value &&
				run_npc_action_record(member_index, parameter) == 1)
				return 1;
			break;
		case 42:
			result = -1;
			for (cell_col = 0; cell_col < party_char_count && result == -1;
				cell_col++) {
				result = find_party_item_slot(cell_col, parameter);
				if (result != -1) {
					page = result / 256;
					slot = result % 256;
					clear_item_slot(cell_col, page, slot);
					init_item_slot(cell_col, value,
						&party_records[cell_col].item_slots[page][slot], -1, 1);
					if (is_quest_map_item(value))
						give_quest_map(21, npc_record.slot_index, value - 400);
				}
			}
			break;
		case 43:
			slot = value / 256 + 15;
			result = value % 256;
			cell_row = result / 16;
			cell_col = result % 16;
			fill_npc_action_slots(slot, cell_row, cell_col, parameter);
			break;
		case 44:
			npc_action_state = parameter;
			break;
		case 45:
			select_npc_event_message(value, parameter, 0);
			break;
		case 46:
			npc_record.action_record_lookup[parameter] = value;
			break;
		case 47:
			i = value - 1;
			break;
		case 48:
			set_bitmap_bit(&scenario_header.npc_action_bits[value], parameter, 1);
			break;
		case 49:
			if (test_bit(scenario_header.action_bitmap, value) == parameter)
				return 0;
			if (value == 12 && slot_records[12].health == 0)
				return 0;
			break;
		}
		i++;
	}
	return 0;
}
