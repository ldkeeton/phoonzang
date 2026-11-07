/* Build each party member's battle order and review or cancel the orders. */
#include "structs/member.h"
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern struct member_rec *battle_groups[];
extern int party_char_count, monster_group_count;
extern int range_max_target_group[4];
extern char unit_targeted[][9];
extern int load_message_string(), random_below(), setmem();
extern int member_is_active(), flush_keyboard(), redraw_area_set();
extern int draw_monster_group_rows(), draw_centered_text_at_x();
extern int select_party_menu_target(), test_bit(), pick_spell_action();
extern int choose_member_item_to_use(), pick_party_member();
extern int play_sound_effect(), pick_group_target_unit();
extern int pick_random_set_bit(), show_area_set(), delay_ms();
extern int wait_for_hotspot_timeout(), draw_party_member_panel();
#define item_record(member, slot) \
	party_records[member].item_slots[0][slot]

choose_party_battle_orders()
{
	int working_value;
	int unused_word_04;
	int party_index;
	int menu_choice;
	int retry_count;
	int action_options[15];
	int hand_options[15];
	int unused_words[30];
	char final_orders_text[20];
	int selected_action;
	int target_group;
	int unused_word_9c;
	int retry_selection;
	int reset_orders;
	int attack_index;
	int attack_speed;
	int speed_step;
	int attack_count;
	struct combatant *active_member;
	int equipped_item;
	int other_equipped_item;
	int available_attacks;
	int attack_range;
	int active_party_count;
	int party_order[6];
	char versus_text[20];

	/* Show the matchup label before preparing the party's timing values. */
	load_message_string(MSG_VS_3503, versus_text);
	for (party_index = 0; party_index < party_char_count; party_index++) {
		active_member = &battle_groups[0]->unit[party_index];
		attack_speed = random_below(10) +
			party_records[party_index].speed_plus_level +
			battle_groups[0]->unit[party_index].speed_mod;
		if (attack_speed < 1)
			attack_speed = 1;
		if (attack_speed > 100)
			attack_speed = 100;
		speed_step = attack_speed /
			party_records[party_index].attacks_per_round;
		if (active_member->countdown > 0)
			active_member->countdown_roll = random_below(attack_speed / 2) +
				random_below(20) + attack_speed / 2;
		active_member->attack_cycle = 0;
		active_member->primary_attack = 0;
		active_member->secondary_attack = 1;
		attack_count = party_records[party_index].attacks_per_round +
			battle_groups[0]->unit[party_index].speed_mod / 10;
		if (attack_count < 1)
			attack_count = 1;
		if (attack_count > 4)
			attack_count = 4;
		/* Assign up to four action-speed slots, reducing speed by one step. */
		for (attack_index = 0; attack_index < 4; attack_index++) {
			if (attack_index >= attack_count ||
				party_records[party_index].state >= 2 ||
				party_records[party_index].status[3] > 0 ||
				party_records[party_index].status[2] > 0) {
				active_member->action_speed[attack_index] = 0;
			} else {
				active_member->action_speed[attack_index] = attack_speed;
				attack_speed -= speed_step;
			}
		}
	}

	/* Clear per-member target marks and gather the active party order. */
	setmem(unit_targeted, 45, 0);
	active_party_count = 0;
	flush_keyboard();
	party_index = 0;
	while (party_index < party_char_count) {
		/* Inactive members do not receive a new battle order. */
		if (member_is_active(party_index) != 0) {
			party_order[active_party_count] = party_index;
			active_party_count++;
			active_member = &battle_groups[0]->unit[party_index];
			do {
				if (battle_groups[0]->unit[party_index].target_group < 1
					|| battle_groups[0]->unit[party_index].target_group > monster_group_count)
					battle_groups[0]->unit[party_index].target_group = 1;
				/* Start with all eleven menu entries available, then apply
				   restrictions. */
				for (working_value = 0; working_value < 11; working_value++)
					action_options[working_value] = 1;
				if (party_records[party_index].race != 7)
					action_options[5] = 0;
				if (battle_groups[0]->unit[party_index].phase != 0 ||
					(party_records[party_index].profession != 3 &&
					party_records[party_index].profession != 13 &&
					party_records[party_index].profession != 4 &&
					party_records[party_index].profession != 6 &&
					party_records[party_index].profession != 12 &&
					party_records[party_index].skills[17] == 0))
					action_options[2] = 0;
				action_options[4] = 0;
				/* Check both inventory pages for any occupied slot
				   (the two item locals double as page and slot here). */
				for (other_equipped_item = 0; other_equipped_item < 2;
					other_equipped_item++) {
					for (equipped_item = 0; equipped_item < 10; equipped_item++) {
						if (party_records[party_index].item_slots[other_equipped_item]
							[equipped_item].item_id > 0)
							action_options[4] = 1;
					}
				}
				if (active_party_count < 2) {
					action_options[9] = 0;
					action_options[10] = 0;
				}
				/* A ranged weapon needs matching ammunition in the other hand. */
				equipped_item = party_records[party_index].equipped[0];
				if (equipped_item != 255 &&
					item_record(party_index, equipped_item).item_type == 3 &&
					(item_record(party_index, equipped_item).flags & 32) == 0) {
					other_equipped_item = party_records[party_index].equipped[1];
					if (other_equipped_item != 255) {
						if (item_record(party_index, other_equipped_item).item_type != 4) {
							action_options[0] = 0;
						} else if ((item_record(party_index, equipped_item).glyph == 11 &&
						item_record(party_index, other_equipped_item).glyph != 22) ||
						(item_record(party_index, equipped_item).glyph == 13 &&
						item_record(party_index, other_equipped_item).glyph != 23) ||
						(item_record(party_index, equipped_item).glyph == 12 &&
						item_record(party_index, other_equipped_item).glyph != 83))
							action_options[0] = 0;
					} else {
						action_options[0] = 0;
					}
				}
				attack_range = party_records[party_index].hand_attack[0].range;
				if (battle_groups[0]->unit[party_index].target_group >
					range_max_target_group[attack_range])
					action_options[0] = 0;
				if (party_index >= 3 && attack_range == 0 &&
					battle_groups[0]->unit[party_index].phase != 1)
					action_options[0] = 0;
				/* Order 5 is limited to the range-1 reach. */
				if (battle_groups[0]->unit[party_index].target_group
					> range_max_target_group[1])
					action_options[5] = 0;
				action_options[11] = -1;
				selected_action = -1;
				battle_groups[0]->unit[party_index].target_unit = 0;
				/* Draw the current member and let the player choose an order. */
				redraw_area_set(3);
				draw_monster_group_rows(
					battle_groups[0]->unit[party_index].target_group);
				draw_centered_text_at_x(party_records[party_index].name,
					160, 147, 1);
				draw_centered_text_at_x(versus_text, 160, 154, 22);
				retry_selection = 0;
				reset_orders = 0;
				menu_choice = select_party_menu_target(3000, 3, 9, 231, 166,
					6, 42, 10, 3, 1, 1, action_options);
				if (menu_choice < 0) {
					/* A negative result picks monster group -result instead. */
					retry_selection = 1;
					battle_groups[0]->unit[party_index].target_group =
						menu_choice < 0 ? -menu_choice : menu_choice;
					draw_monster_group_rows(0);
				} else switch (menu_choice) {
				case 0:
					/* Select a usable hand attack, then enforce its target range. */
					redraw_area_set(0);
					draw_centered_text_at_x(party_records[party_index].name,
						160, 147, 1);
					draw_centered_text_at_x(versus_text, 160, 154, 22);
					equipped_item = party_records[party_index].equipped[0];
					if (equipped_item != 255 &&
						item_record(party_index, equipped_item).item_type == 3) {
						available_attacks = 1;
						selected_action = 8;
					}
					if (selected_action == -1) {
						available_attacks = 0;
						for (working_value = 0; working_value < 8; working_value++) {
							hand_options[working_value] = test_bit(
								&party_records[party_index].hand_attack[0].attack_flags,
								working_value);
							/* Back-row members with a type-2 weapon keep only option 4. */
							if (working_value != 4 && party_index >= 3 && equipped_item != 255 &&
								item_record(party_index, equipped_item).item_type == 2)
								hand_options[working_value] = 0;
							if (hand_options[working_value] == 1) {
								available_attacks++;
								selected_action = working_value;
							}
						}
						hand_options[8] = -1;
					}
					if (available_attacks > 1) {
						selected_action = select_party_menu_target(3050, 0, 9, 231,
							166, 6, 42, 10, 3, 0, 27, hand_options);
					}
					if (selected_action != -1) {
						attack_range = party_records[party_index].hand_attack[0].range;
						if (attack_range == 2 && selected_action != 4)
							attack_range = 0;
						if (battle_groups[0]->unit[party_index].target_group
							> range_max_target_group[attack_range]) {
							play_sound_effect(0);
							retry_selection = 1;
						}
						if (attack_range == 0 && party_index >= 3 &&
							battle_groups[0]->unit[party_index].phase != 1) {
							play_sound_effect(0);
							retry_selection = 1;
						}
					} else
						retry_selection = 1;
					break;
				case 1:
					/* Offer the alternate action only when the offhand item supports it. */
					redraw_area_set(0);
					draw_centered_text_at_x(party_records[party_index].name,
						160, 147, 1);
					draw_centered_text_at_x(versus_text, 160, 154, 22);
					for (working_value = 0; working_value < 4; working_value++)
						action_options[working_value] = 1;
					action_options[0] = 0;
					equipped_item = party_records[party_index].equipped[1];
					if (equipped_item != 255 &&
						item_record(party_index, equipped_item).item_type == 11)
						action_options[0] = 1;
					action_options[4] = -1;
					selected_action = select_party_menu_target(3100, 0, 9,
						231, 166, 6, 42, 10, 3, 0, 27, action_options);
					if (selected_action == -1)
						retry_selection = 1;
					break;
				case 8:
					break;
				case 3:
					redraw_area_set(0);
					draw_centered_text_at_x(versus_text, 160, 154, 22);
					if ((selected_action = pick_spell_action(party_index)) ==
						-1)
						retry_selection = 1;
					break;
				case 4:
					redraw_area_set(0);
					draw_centered_text_at_x(versus_text, 160, 154, 22);
					if ((selected_action =
						choose_member_item_to_use(party_index)) == -1)
						retry_selection = 1;
					break;
				case 7:
					if ((selected_action = pick_party_member()) == -1)
						retry_selection = 1;
					break;
				case 2:
					break;
				case 5:
					selected_action = 8;
					break;
				case 6:
					break;
				case 9:
					/* Step back one member: re-mark the targets chosen before it
					   (target_group doubles as the party index here). */
					setmem(unit_targeted, 45, 0);
					for (target_group = 0; target_group < party_index - 1;
						target_group++) {
						if (battle_groups[0]->unit[target_group].target_group > 0)
							unit_targeted[
								battle_groups[0]->unit[target_group].target_group]
								[battle_groups[0]->unit[target_group].target_unit] = 1;
					}
					party_index = party_order[active_party_count - 2] - 1;
					active_party_count -= 2;
					reset_orders = 1;
					break;
				case 10:
					/* Start over from the first member. */
					setmem(unit_targeted, 45, 0);
					party_index = -1;
					reset_orders = 1;
					active_party_count = 0;
					break;
				}
			} while (retry_selection == 1);
			/* Restore the order panel before committing the selected action. */
			redraw_area_set(0);
			draw_centered_text_at_x(versus_text, 160, 154, 22);
			show_area_set(0);
			delay_ms(50);
			if (!reset_orders) {
				battle_groups[0]->unit[party_index].primary_action = selected_action;
				battle_groups[0]->unit[party_index].secondary_action = -1;
				battle_groups[0]->unit[party_index].action_kind = menu_choice;
				target_group = battle_groups[0]->unit[party_index].target_group;
				if (target_group >= 1 && target_group <= 5)
					battle_groups[0]->unit[party_index].target_unit =
						pick_group_target_unit(party_index, (unsigned char)target_group);
				/* Ordinary attacks may also pick a second hand action. */
				equipped_item = party_records[party_index].equipped[1];
				if (menu_choice == 0) {
					if (equipped_item == 255 &&
						party_records[party_index].equipped[0] == 255) {
						/* Bare hands: any allowed attack for the second swing. */
						if ((working_value = pick_random_set_bit(
							&party_records[party_index].hand_attack[0].attack_flags)) !=
							-1)
							battle_groups[0]->unit[party_index].secondary_action = working_value;
					} else if (equipped_item != 255) {
						if (item_record(party_index, equipped_item).item_type == 3 &&
							(item_record(party_index, equipped_item).flags & 32) != 0) {
							battle_groups[0]->unit[party_index].secondary_action = 8;
						} else if (item_record(party_index, equipped_item).item_type == 2 ||
							item_record(party_index, equipped_item).item_type == 12 ||
							item_record(party_index, equipped_item).item_type == 16) {
							battle_groups[0]->unit[party_index].secondary_action = 4;
						} else if (item_record(party_index, equipped_item).item_type < 2 &&
							(party_records[party_index].hand_attack[1].range == 1 ||
							(party_index < 3 && target_group < 3))) {
							/* Off-hand weapon: up to ten tries to avoid attack 4. */
							retry_count = 0;
							do {
								working_value = pick_random_set_bit(
									&party_records[party_index].hand_attack[1].attack_flags);
								retry_count++;
							} while (working_value == 4 && retry_count < 10);
							if (working_value == 4)
								working_value = -1;
							if (working_value != -1)
								battle_groups[0]->unit[party_index].secondary_action =
									working_value;
						}
					}
				}
			}
		}
		party_index++;
		if (party_index == party_char_count) {
			/* Show the final-order prompt and handle its review or cancel choices. */
			redraw_area_set(3);
			load_message_string(MSG_FINAL_ORDERS, final_orders_text);
			draw_centered_text_at_x(final_orders_text, 160, 153, 1);
			show_area_set(3);
			/* Three choices; "back" is hidden when no member is queued. */
			for (working_value = 0; working_value < 3; working_value++)
				action_options[working_value] = 1;
			if (active_party_count == 0)
				action_options[1] = 0;
			action_options[3] = -1;
			flush_keyboard();
			working_value = select_party_menu_target(3507, 1, 105, 105, 166,
				18, 120, 10, 3, 0, 1, action_options);
			if (working_value == 2) {
				/* Terminate: every member not already dead is killed. */
				wait_for_hotspot_timeout(5);
				for (party_index = 0; party_index < party_char_count; party_index++) {
					if (battle_groups[0]->unit[party_index].state != 3) {
						party_records[party_index].hp[0] = 0;
						party_records[party_index].stamina[0] = 0;
						party_records[party_index].state = 3;
						battle_groups[0]->unit[party_index].hp = 0;
						battle_groups[0]->unit[party_index].stamina = 0;
						battle_groups[0]->unit[party_index].state = 3;
						play_sound_effect(party_records[party_index].gender + 8);
						draw_party_member_panel(party_index, 1);
						wait_for_hotspot_timeout(8);
					}
				}
				return 1;
			}
			if (working_value == 1) {
				/* Back: re-mark targets and reopen the last active member
				   (target_group doubles as the party index here). */
				setmem(unit_targeted, 45, 0);
				for (target_group = 0;
					target_group < party_char_count - 1; target_group++) {
					if (battle_groups[0]->unit[target_group].target_group > 0)
						unit_targeted[
							battle_groups[0]->unit[target_group].target_group]
							[battle_groups[0]->unit[target_group].target_unit] = 1;
				}
				party_index = party_order[active_party_count - 1];
				active_party_count--;
			}
		}
	}
	/* Finalize turn speeds for members whose chosen action changes them. */
	for (party_index = 0; party_index < party_char_count; party_index++) {
		if (battle_groups[0]->unit[party_index].status[1] > 0 && random_below(100) >
			party_records[party_index].stat[6] + 80)
			battle_groups[0]->unit[party_index].action_kind = 6;
		if (battle_groups[0]->unit[party_index].action_kind == 1 ||
			battle_groups[0]->unit[party_index].action_kind == 7)
			battle_groups[0]->unit[party_index].action_speed[0] = 1;
		if (battle_groups[0]->unit[party_index].action_kind == 0) {
			if (battle_groups[0]->unit[party_index].secondary_action
				== -1) {
				battle_groups[0]->unit[party_index].action_speed[1] = 0;
				battle_groups[0]->unit[party_index].action_speed[3] = 0;
			}
		} else {
			for (working_value = 1; working_value < 4; working_value++)
				battle_groups[0]->unit[party_index].action_speed[working_value] = 0;
		}
	}
	return 0;
}

#undef item_record
