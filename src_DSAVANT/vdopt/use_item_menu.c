/* List a member's items, run the Use/Drop dialog and apply the chosen
   action. */
#include "structs/pcrec.h"
#include "structs/spell.h"
#include "structs/rgnstate.h"
#include "msg.h"

struct item_record {
	char pad0[30];				/* +0x00..+0x1d */
	int map;				/* +0x1e */
	unsigned char clear_bit;		/* +0x20 */
	unsigned char set_bit;			/* +0x21 */
	int spell_code;				/* +0x22 */
	char pad1[21];				/* +0x24..+0x38 */
	unsigned char glyph;			/* +0x39 */
	char pad2[5];				/* +0x3a..+0x3e */
	unsigned char kind;			/* +0x3f */
	char pad3[8];				/* +0x40..+0x47 */
};

extern struct pc_rec party_records[];
extern struct spell_info spell_table[];
extern struct saved_region_blocks party_region;
extern unsigned char scenario_header_data[][16];
extern unsigned char cell_overlay_code[];
extern int party_redraw_interval, spell_target, spell_dialog_result;
extern int pending_event, pending_event_hi, game_state_arg;
extern int list_row_marked[], list_row_glyph[], list_row_count[];
extern char list_row_name[][22];
extern char item_dialog_first_label[];
extern int item_kind5_used_flag;

extern int data_record_io(), item_action_dialog();
extern int aztec_strcpy(), load_message_string(), set_bitmap_bit();
extern int consume_item_charge(), trigger_item_cell_object();
extern int get_cell_wall(), apply_spell_effect();
extern int pick_party_member(), play_sound_effect(), clear_item_slot();
extern int call_show_area(), show_event_message();
extern int draw_selected_button_label(), add_floor_item();

use_item_menu(pc)
int pc;
{
	int selection, item_id;
	struct item_record item;
	int action_result, page, slot;
	int spell, spell_power, row_slots[30], row_count;

	party_redraw_interval = 5;
	row_count = 0;
	page = 0;
	/* Scan both ten-slot pages and list the slots holding an item. */
	do {
		slot = 0;
		do {
			if (party_records[pc].item_slots[page][slot].item_id > 0) {
				data_record_io(1, &item,
					party_records[pc].item_slots[page][slot].item_id, 0);
				if (party_records[pc].item_slots[page][slot].flags & 128)
					aztec_strcpy(list_row_name[row_count],
						(char *)&item);
				else
					load_message_string(MSG_DAGGER_6000 +
						item.glyph, list_row_name[row_count]);
				list_row_glyph[row_count] = item.glyph;
				list_row_marked[row_count] = page;
				if (cell_overlay_code[
					party_records[pc].item_slots[page][slot].overlay + 88] == 1)
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
		return;

	/* 0x100 separates the displayed page from its slot index. */
	action_result = item_action_dialog(MSG_USE_2030, 1, 1, 1,
		row_count, item_dialog_first_label);
	selection = spell_dialog_result;
	if (action_result == 2 || selection == -1) {
		call_show_area(54, 142, 265, 198);
		return;
	}
	page = row_slots[selection] / 256;
	slot = row_slots[selection] % 256;
	draw_selected_button_label(MSG_USE_2030 + action_result, action_result,
		63, 150, 12, 16);
	item_id = party_records[pc].item_slots[page][slot].item_id;

	if (action_result == 0) {
		if (trigger_item_cell_object(pc, page, slot) == 0) {
			data_record_io(1, &item, item_id, 0);
			if (item.spell_code != 0) {
				/* The high byte is the power and the low byte the spell. */
				spell_power = item.spell_code / 256;
				spell = item.spell_code % 256;
				if (spell_table[spell].targeted == 1) {
					spell_target = pick_party_member();
					if (spell_target == -1)
						spell = -1;
				}
				if (spell != -1) {
					consume_item_charge(pc, page, slot);
					if (spell == 77)
						call_show_area(54, 142, 265, 198);
					apply_spell_effect(pc, spell,
						spell_power, spell_target);
				}
			} else if (item.kind == 4 &&
				game_state_arg == item.map) {
				/* Clear one flag bit and set the other in both region bitmaps. */
				set_bitmap_bit(party_region.state[item.map],
					item.clear_bit, 0);
				set_bitmap_bit(scenario_header_data[item.map],
					item.clear_bit, 0);
				set_bitmap_bit(party_region.state[item.map],
					item.set_bit, 1);
				set_bitmap_bit(scenario_header_data[item.map],
					item.set_bit, 1);
				consume_item_charge(pc, page, slot);
			} else if (item.kind == 5) {
				if (game_state_arg == 8)
					item_kind5_used_flag = 1;
				else {
					pending_event = 2055;
					pending_event_hi = 1;
				}
			} else {
				pending_event = 2046;
				pending_event_hi = 1;
			}
		} else if (item_id != 264 && item_id != 265 &&
			item_id != 257 && item_id != 259) {
			consume_item_charge(pc, page, slot);
		}
	} else if (action_result == 1) {
		if ((party_records[pc].item_slots[page][slot].flags & 2) ||
			item_id == 553)
			play_sound_effect(0);
		else {
			add_floor_item(
				&party_records[pc].item_slots[page][slot]);
			clear_item_slot(pc, page, slot);
		}
	}

	/* Restore the screen and show any pending message after handling a choice. */
	call_show_area(54, 142, 265, 198);
	if (pending_event > 0)
		show_event_message(pending_event);
}
