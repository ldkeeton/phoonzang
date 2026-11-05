/* Carry one item around a member's inventory and run its action buttons. */
#include "structs/pcrec.h"
#include "msg.h"

extern struct pc_rec party_records[];
extern int item_page, item_page_alt_mode, item_page_drawn;
extern char item_slot_names[10][22];
extern int item_slot_color[10], item_slot_attr[10];
extern char inventory_button_labels[][10];
extern int party_return_state, party_char_count, member_roster_index;
extern int mouse_active, hotspot_hit, hotspot_rects[];
extern int selected_equipment_slot;
extern int display_cursed_status_message();
extern int read_item_special_power(), use_item_special_power();
extern int aztec_strcpy(), aztec_strlen();
extern int clear_item_slot(), draw_member_item_page();
extern int pick_up_inventory_entry();
extern long call_save_area();
extern int call_restore_area(), call_show_area();
extern int set_hotspot(), poll_hotspots(), poll_filtered_key();
extern unsigned char get_filtered_key();
extern int draw_bevel_frame(), draw_frame_outline();
extern int call_set_text_color(), call_set_text_pos(), draw_text_glyphs();
extern int member_is_active();
extern int draw_selected_item_list_entry();
extern int flash_button(), show_indexed_beveled_label(), delay_ms();
extern int apply_item_device_effect();
extern int identify_and_show_item_details();
extern int load_message_string(), display_centered_message();
extern int merge_counted_item_slots(), split_counted_item_stack();
extern int play_sound_effect(), add_floor_item();
extern int refresh_member_inventory_panel(), equip_selected_party_item();
extern int draw_member_armor_class();

/* Pick up the item in slot_index and let the user drop it on another
 * slot, merge or split it, or press one of the action buttons under the
 * page.  A cursed item cannot be picked up: its special power runs instead. */
run_member_inventory_menu(member_index, slot_index)
int member_index, slot_index;
{
	int index;
	int choice;
	int unused_a, unused_b;	/* declared but never used: they hold frame room */
	int button_left;
	int button_top;
	int button_chars;
	int button_step;
	int button_count;
	int power;
	int use_label;
	int label_index;
	int next_step;
	int merge_mode;
	long saved_buttons;
	struct pc_item_slot held, target;
	char held_name[22], target_name[22];
	int held_color, target_color, held_label, target_label;
	int unused_c;		/* likewise never used */
	int shown;
	int button_action[10];
	int button_enabled[10];
	int key;
	char message[40];

	if (party_records[member_index].item_slots[item_page][slot_index].flags & 2) {
		display_cursed_status_message();
		power = read_item_special_power(member_index,
			&party_records[member_index].item_slots[item_page][slot_index]);
		if (power != 0)
			use_item_special_power(member_index, item_page, slot_index, power);
		return;
	}

	/* Lift the item out of its slot. */
	party_records[member_index].item_slots[item_page][slot_index].flags &= ~1;
	held = party_records[member_index].item_slots[item_page][slot_index];
	aztec_strcpy(held_name, item_slot_names[slot_index]);
	held_color = item_slot_color[slot_index];
	held_label = item_slot_attr[slot_index];
	clear_item_slot(member_index, item_page, slot_index);
	item_page_alt_mode = 1;
	draw_member_item_page(member_index);
	pick_up_inventory_entry(member_index, slot_index, &held, held_name,
		held_color, 0, 0);

	button_left = 4;
	button_top = 188;
	button_chars = 7;
	button_step = 6 * button_chars + 4;
	button_count = 4;
	saved_buttons = call_save_area(button_left - 1, button_top - 1,
		button_step * button_count + button_left + 1, button_top + 10);
	next_step = 1;
	merge_mode = 0;
	do {
		/* The ten item slots, the member arrows, the page and equip buttons. */
		for (index = 0; index < 10; index++)
			set_hotspot(index, index / 5 * 79 + 2, index % 5 * 14 + 113,
				index / 5 * 79 + 78, index % 5 * 14 + 125,
				(char)((index + 1) % 10 + '0'), 0);
		set_hotspot(10, 12, 17, 38, 74, 11, 0);
		set_hotspot(11, 39, 17, 67, 74, 9, 0);
		set_hotspot(12, 219, 83, 242, 110, 'B', 0);
		set_hotspot(13, 248, 41, 314, 126, 'E', 0);

		/* Which action buttons apply: use, identify, merge, drop. */
		use_label = held_label;
		for (index = 0; index < 4; index++)
			button_enabled[index] = 1;
		if (party_return_state == 4 || party_return_state == 13) {
			button_enabled[0] = 0;
			button_enabled[3] = 0;
		}
		if (!member_is_active(member_index)) {
			button_enabled[0] = 0;
			button_enabled[1] = 0;
		}
		button_enabled[4] = -1;
		call_restore_area(saved_buttons, 0);
		shown = 0;
		for (index = 0; ; index++) {
			if (button_enabled[index] == -1)
				break;
			if (button_enabled[index] == 1) {
				label_index = index == 0 ? use_label : index;
				draw_bevel_frame(button_step * shown + button_left, button_top,
					button_step * shown + 6 * button_chars + button_left,
					button_top + 8, 0);
				call_set_text_color(1, 192);
				call_set_text_pos((button_chars
					- aztec_strlen(inventory_button_labels[label_index])) * 6 / 2
					+ button_step * shown + button_left + 1, button_top + 2);
				draw_text_glyphs(inventory_button_labels[label_index], 0);
				set_hotspot(shown + 14, button_step * shown + button_left,
					button_top,
					button_step * shown + 6 * button_chars + button_left,
					button_top + 8, 0, 0);
				button_action[shown] = index;
				shown++;
			}
		}
		set_hotspot(shown + 14, -1, 0, 0, 0, 0, 0);
		call_show_area(button_left - 1, button_top - 1,
			button_step * button_count + button_left + 1, button_top + 10);
		next_step = 1;
		merge_mode = 0;

		do {
			if (mouse_active) {
				do
					choice = poll_hotspots(hotspot_rects) - 1;
				while (hotspot_hit == 0);
			} else if (merge_mode == 0) {
				/* Keyboard: the cursor walks the action buttons. */
				choice = -1;
				index = 0;
				do {
					draw_frame_outline(button_step * index + button_left,
						button_top,
						button_step * index + 6 * button_chars + button_left,
						button_top + 8, 22);
					call_show_area(button_left - 1, button_top - 1,
						button_step * button_count + button_left + 1,
						button_top + 10);
					draw_frame_outline(button_step * index + button_left,
						button_top,
						button_step * index + 6 * button_chars + button_left,
						button_top + 8, 0);
					while (!poll_filtered_key(1))
						;
					if ((key = get_filtered_key(1)) >= '0' && key <= '9') {
						if ((choice = key - '1') < 0)
							choice += 10;
					} else {
						switch (key) {
						case 11:
							choice = 10;
							break;
						case 9:
							choice = 11;
							break;
						case 'B':
							choice = 12;
							break;
						case 'E':
							choice = 13;
							break;
						case 8:
							index = (index + shown - 1) % shown;
							break;
						case 10:
							index = (index + 1) % shown;
							break;
						case 13:
							choice = index + 14;
							break;
						}
					}
				} while (choice == -1);
				call_show_area(button_left - 1, button_top - 1,
					button_step * button_count + button_left + 1, button_top + 10);
			} else {
				/* Merging: wait for a slot digit, Enter or Esc. */
				choice = -1;
				do {
					while (!poll_filtered_key(1))
						;
					if ((key = get_filtered_key(1)) >= '0' && key <= '9') {
						if ((choice = key - '1') < 0)
							choice += 10;
					}
					if (key == 13 || key == 27)
						merge_mode = 0;
				} while (key != 13 && key != 27 && choice == -1);
			}

			if (choice >= 0 && choice < 10) {
				/* Drop the held item on a slot and pick up what was there. */
				if (party_records[member_index].item_slots[item_page][choice].item_id > 0
						&& party_records[member_index].item_slots[item_page][choice].flags & 2) {
					display_cursed_status_message();
					next_step = 2;
				} else {
					slot_index = choice;
					party_records[member_index].item_slots[item_page][slot_index].flags &= ~1;
					target = party_records[member_index].item_slots[item_page][slot_index];
					aztec_strcpy(target_name, item_slot_names[slot_index]);
					target_color = item_slot_color[slot_index];
					target_label = item_slot_attr[slot_index];
					clear_item_slot(member_index, item_page, slot_index);
					if (merge_mode) {
						if (target.item_id > 0)
							merge_counted_item_slots(&held, &target, held_name,
								target_name);
						else {
							split_counted_item_stack(&held, &target, held_name,
								target_name);
							target_color = held_color;
							target_label = held_label;
						}
						merge_mode = 0;
					}
					party_records[member_index].item_slots[item_page][slot_index] = held;
					aztec_strcpy(item_slot_names[slot_index], held_name);
					item_slot_color[slot_index] = held_color;
					item_slot_attr[slot_index] = held_label;
					held = target;
					aztec_strcpy(held_name, target_name);
					held_color = target_color;
					held_label = target_label;
					if (target.item_id == 0) {
						item_page_alt_mode = 0;
						draw_member_item_page(member_index);
						pick_up_inventory_entry(member_index, 0 - slot_index - 1,
							(struct pc_item_slot *)0, (char *)0, 0, 36, 6);
						next_step = 0;
					} else {
						item_page_alt_mode = 1;
						draw_member_item_page(member_index);
						pick_up_inventory_entry(member_index, slot_index, &held,
							held_name, held_color, 36, 6);
						next_step = 2;
					}
				}
			} else if (choice >= 14 && shown + 14 > choice) {
				/* An action button. */
				merge_mode = 0;
				choice -= 14;
				flash_button(choice * button_step + button_left, button_top,
					button_chars, 1, 1);
				flash_button(choice * button_step + button_left, button_top,
					button_chars, 1, 0);
				label_index = button_action[choice] == 0 ? use_label
					: button_action[choice];
				show_indexed_beveled_label(inventory_button_labels[label_index],
					choice, button_left, button_top, button_chars, button_step,
					9, 1, 26);
				switch (button_action[choice]) {
				case 0:
					delay_ms(300);
					call_restore_area(saved_buttons, 0);
					call_show_area(button_left - 1, button_top - 1,
						button_step * button_count + button_left + 1,
						button_top + 10);
					apply_item_device_effect(member_index, &held);
					draw_member_item_page(member_index);
					if (held.item_id == 0) {
						item_page_alt_mode = 0;
						pick_up_inventory_entry(member_index, 0 - slot_index - 1,
							(struct pc_item_slot *)0, (char *)0, 0, 36, 6);
						next_step = 0;
					} else {
						pick_up_inventory_entry(member_index, slot_index, &held,
							held_name, held_color, 36, 6);
						next_step = 2;
					}
					call_show_area(1, 112, 171, 187);
					break;
				case 1:
					if (identify_and_show_item_details(member_index, &held, held_name,
						0) == -1) {
						delay_ms(300);
						call_restore_area(saved_buttons, 0);
						call_show_area(button_left - 1, button_top - 1,
							button_step * button_count + button_left + 1,
							button_top + 10);
						load_message_string(MSG_FAILURE_465, message);
						display_centered_message(message, 1);
					}
					draw_member_item_page(member_index);
					pick_up_inventory_entry(member_index, slot_index, &held,
						held_name, held_color, 36, 6);
					next_step = 2;
					break;
				case 2:
					merge_mode = 1;
					break;
				case 3:
					if (held.item_id == 553)
						play_sound_effect(0);
					else {
						add_floor_item(&held);
						item_page_alt_mode = 0;
						pick_up_inventory_entry(member_index, 0 - slot_index - 1,
							(struct pc_item_slot *)0, (char *)0, 0, 36, 6);
						next_step = 0;
					}
					break;
				}
			} else {
				merge_mode = 0;
				switch (choice) {
				case 10:
					/* Previous member. */
					if (party_return_state != 13 && party_return_state != 4) {
						member_index = member_roster_index
							= (member_index + party_char_count - 1) % party_char_count;
						item_page_drawn = 0;
						refresh_member_inventory_panel(member_index, 0);
						next_step = 2;
					}
					break;
				case 11:
					/* Next member. */
					if (party_return_state != 13 && party_return_state != 4) {
						member_index = member_roster_index
							= (member_index + 1) % party_char_count;
						item_page_drawn = 0;
						refresh_member_inventory_panel(member_index, 0);
						next_step = 2;
					}
					break;
				case 12:
					/* Other item page. */
					item_page = (item_page + 1) % 2;
					item_page_drawn = 0;
					draw_member_item_page(member_index);
					draw_selected_item_list_entry();
					call_show_area(1, 112, 171, 182);
					break;
				case 13:
					/* Equip screen. */
					call_restore_area(saved_buttons, 0);
					if ((power = equip_selected_party_item(member_index, &held)) != -1) {
						item_page = 0;
						item_page_drawn = 0;
						item_page_alt_mode = 0;
						draw_member_armor_class(member_index);
						draw_member_item_page(member_index);
						call_show_area(0, 0, 319, 199);
						pick_up_inventory_entry(member_index,
							0 - selected_equipment_slot - 1,
							(struct pc_item_slot *)0, (char *)0, 0, 36, 6);
						next_step = 0;
						if (power > 0)
							use_item_special_power(member_index, 0,
								selected_equipment_slot, power);
					} else
						next_step = 2;
					break;
				}
			}
		} while (next_step == 1);
	} while (next_step == 2);
	call_restore_area(saved_buttons, 1);
	call_show_area(button_left - 1, button_top - 1,
		button_step * button_count + button_left + 1, button_top + 10);
}
