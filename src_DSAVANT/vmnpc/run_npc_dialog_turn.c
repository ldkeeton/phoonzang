/* Runs one action and response turn in an NPC dialog. */
#include "structs/pcrec.h"
#include "structs/slotstat.h"
#include "msg.h"
#include "structs/npc.h"
extern struct npc_record npc_record;

extern int npc_dialog_departure_flag, npc_pilfer_roll_bias;
extern int npc_dialog_initial_state;
extern int npc_encounter_sound;
extern int npc_cell_effect_frame, cell_slot_ref;
extern char faction_attitudes[];
extern int npc_record_index;
extern int npc_charm_bonus, npc_selected_dialog_option;
extern int party_char_count, game_state, npc_negotiation_tactic;
extern int menu_selection_index, message_delay;
extern char quest_map_message_buffer[];
extern struct pc_rec party_records[];
extern struct slot_record slot_records[];

extern int load_message_string(), begin_npc_message_display();
extern int display_npc_message_sequence(), end_npc_message_display();
extern int random_below(), play_sound_effect();
extern int run_npc_action_record(), animate_npc_encounter_cells();
extern int run_npc_screen_animation(), redraw_area_set();
extern int draw_npc_gold_frame(), draw_centered_text_at_x();
extern int draw_npc_dialog_action_menu(), draw_selected_menu_entry();
extern int pick_party_member(), member_is_active();
extern int run_npc_member_dialog(), run_npc_shop_transaction();
extern int show_centered_npc_message(), wait_ticks_abortable();
extern int cast_spell_from_npc_dialog(), use_item_on_npc();
extern int party_member_pilfer_npc(), negotiate_with_npc();
extern int share_npc_quest_map_knowledge(), test_bit();
extern int show_quest_map_information(), display_npc_message();
extern int adjust_npc_attitudes(), start_npc_attack();
extern int show_npc_message(), match_npc_event_trigger();

/* Presents NPC options, handles the choice, and resolves the NPC response. */
void run_npc_dialog_turn()
{
	int action_index, unused_local, selected_action, loop_index;
	int attitude, member_index;
	int unused_dialog_state[6];
	int menu_flags[11];
	char message_scratch[10];
	char party_text[10];
	char versus_text[10];
	char choice_text[80];

	npc_dialog_departure_flag = 0;
	npc_pilfer_roll_bias = 0;
	npc_dialog_initial_state = 0;
	load_message_string(MSG_THE_PARTY, party_text);
	load_message_string(MSG_VS_1511, versus_text);
	if (npc_record.greeting_msg_id > 0) {
		begin_npc_message_display();
		display_npc_message_sequence(npc_record.greeting_msg_id, 1);
		end_npc_message_display();
	}
	member_index = 0;
	do {
		if (npc_encounter_sound > 0 && npc_record.monster_picture_id > 0 &&
			random_below(3) == 0)
			play_sound_effect(npc_encounter_sound);
		for (action_index = 0; action_index < 8; action_index++) {
			if (npc_record.action_enabled[action_index] > 0 &&
				run_npc_action_record(member_index,
					npc_record.action_enabled[action_index]) == 1) {
				if (npc_dialog_departure_flag == 1) {
					npc_cell_effect_frame = 1;
					animate_npc_encounter_cells(1, 0);
					cell_slot_ref = 0;
					run_npc_screen_animation();
				}
				return;
			}
		}
		for (selected_action = 0; selected_action <= 9; selected_action++)
			menu_flags[selected_action] = 0;
		menu_flags[7] = 1;
		attitude = faction_attitudes[npc_record.faction_index];
		if (npc_record.slot_index == -1)
			attitude += 35;
		if (attitude < -25) {
			menu_flags[3] = 1;
			menu_flags[9] = 1;
		} else if (attitude < 25) {
			menu_flags[3] = 1;
			menu_flags[4] = 1;
			menu_flags[5] = 1;
			menu_flags[6] = 1;
			menu_flags[8] = 1;
		} else {
			if (npc_record_index >= 60 &&
				npc_record_index <= 62) {
				menu_flags[7] = 0;
			} else {
				if (npc_record_index == 45 ||
					npc_record_index == 77 ||
					npc_record_index == 81 ||
					npc_record_index == 83) {
					menu_flags[7] = 0;
				} else {
					menu_flags[1] = 1;
					menu_flags[2] = 1;
					menu_flags[4] = 1;
				}
				menu_flags[0] = 1;
				menu_flags[5] = 1;
			}
			menu_flags[6] = 1;
			menu_flags[8] = 1;
		}
		menu_flags[10] = -1;
		member_index = -1;
		redraw_area_set(3);
		draw_npc_gold_frame();
		draw_centered_text_at_x(party_text, 160, 147, 1);
		draw_centered_text_at_x(versus_text, 160, 154, 22);
		selected_action = draw_npc_dialog_action_menu(1530, 3, 9,
			231, 166, 6, 42, 10, 2, 0, 1, menu_flags);
		load_message_string(MSG_TALK + selected_action, choice_text);
		draw_selected_menu_entry(choice_text, menu_selection_index, 9,
			231, 166, 6, 42, 10, 2, 26);
		switch (selected_action) {
		case 0:
		case 2:
			member_index = pick_party_member();
			if (member_index >= 0 && member_is_active(member_index)) {
				if (party_records[member_index].pad1[npc_record_index] +
					party_records[member_index].stat[6] +
					npc_charm_bonus > 0) {
				if (selected_action == 0)
						run_npc_member_dialog(member_index);
					else if (selected_action == 2)
						run_npc_shop_transaction(member_index);
				} else {
					load_message_string(MSG_NOT_WITH_YOU, choice_text);
					redraw_area_set(3);
					show_centered_npc_message(choice_text, 1);
					wait_ticks_abortable(message_delay, 0);
				}
			}
			break;
		case 3:
		case 4:
		case 5:
		case 6:
			member_index = pick_party_member();
			if (member_index >= 0 && member_is_active(member_index)) {
				action_index = 0;
				switch (selected_action) {
				case 5:
					cast_spell_from_npc_dialog(member_index);
					break;
				case 6:
					use_item_on_npc(member_index);
					break;
				case 4:
					action_index = party_member_pilfer_npc(member_index);
					break;
				case 3:
					action_index = negotiate_with_npc(member_index);
					break;
				}
				if (action_index == -1) {
					npc_dialog_departure_flag = 1;
					selected_action = 8;
				}
			}
			break;
		case 1:
			action_index = npc_selected_dialog_option == 1 ? -1 : 0;
			if (npc_selected_dialog_option == -1) {
				if (npc_record.slot_index != -1) {
					action_index = share_npc_quest_map_knowledge();
				} else {
					for (loop_index = 0; loop_index < 11; loop_index++) {
						if (test_bit(slot_records[21].known_maps, loop_index)) {
							show_quest_map_information(loop_index);
							action_index = 1;
						}
					}
				}
				npc_selected_dialog_option = action_index;
			}
			if (action_index <= 0) {
				load_message_string(action_index == 0 ?
					MSG_HEH_HEH_WHY_I_HAVEN_T_1641 :
					MSG_PERHAPS_YOU_D_LIKE_TO_1645,
					quest_map_message_buffer);
				display_npc_message(quest_map_message_buffer, 1);
			}
			break;
		case 7:
			for (action_index = 0; action_index < party_char_count;
				action_index++) {
				if (party_records[action_index].pad1[npc_record_index] > 0)
					party_records[action_index].pad1[npc_record_index] /= 5;
				adjust_npc_attitudes(action_index,
					0 - (random_below(15) + 15), 0);
			}
			if (faction_attitudes[npc_record.faction_index] > 0)
				faction_attitudes[npc_record.faction_index] /= 5;
			adjust_npc_attitudes(0, 0,
				0 - (random_below(15) + 15));
			start_npc_attack(0);
			selected_action = 8;
			break;
		case 8:
			npc_dialog_departure_flag = 1;
			break;
		case 9:
			npc_dialog_departure_flag = 0;
			game_state = 23;
			break;
		}
		if (member_index < 0 || party_char_count - 1 < member_index ||
			random_below(4) == 0)
			member_index = random_below(party_char_count);
		attitude = party_records[member_index].pad1[npc_record_index] +
			party_records[member_index].stat[6] + npc_charm_bonus;
		action_index = faction_attitudes[npc_record.faction_index] +
			npc_charm_bonus;
		if (game_state != 10 && (action_index < -10 || attitude < -10)) {
			loop_index = random_below(100) - 100;
			if (loop_index < action_index || loop_index < attitude) {
				if (random_below(2) == 1) {
					start_npc_attack(1);
					selected_action = 8;
				} else if (game_state != 23) {
					show_npc_message(MSG_LEAVES, 1, 0, 85);
					npc_dialog_departure_flag = 1;
					selected_action = 8;
				}
			}
		}
	} while (selected_action != 8 && selected_action != 9);
	if (npc_negotiation_tactic == 1)
		adjust_npc_attitudes(0, 0, 0 - (random_below(5) + 5));
	if (game_state == 10)
		match_npc_event_trigger(0, 6, 0, 0, 0);
	else if (game_state != 23)
		match_npc_event_trigger(0, 7, 0, 0, 0);
	if (npc_dialog_departure_flag == 1) {
		npc_cell_effect_frame = 1;
		animate_npc_encounter_cells(1, 0);
		cell_slot_ref = 0;
		run_npc_screen_animation();
	}
}
