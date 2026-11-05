/* Edit one spell slot, including its mouse and keyboard selection UI. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int slot_value[], slot_limit[], slot_label[];
extern int hotspot_rects[], hotspot_hit, mouse_active;
extern long call_save_area();
extern int call_restore_area(), call_show_area();
extern int draw_known_spell_values(), draw_slot_value_row();
extern int call_set_text_color(), call_set_text_pos(), draw_font_glyph();
extern int set_hotspot(), draw_bevel_frame(), draw_text_glyphs();
extern int draw_frame_outline(), aztec_strlen(), poll_hotspots();
extern int poll_filtered_key(), play_sound_effect(), flash_button();
extern unsigned char get_filtered_key();

edit_spell_slot_values(character, selected_slot, spell_count, spell_ids,
	spell_flags)
int character, selected_slot, spell_count, spell_ids[], spell_flags[];
{
	int index, total_points, frame_y, choice, active_spell;
	int selected_points, row_count, row_spell[12];
	int changed_index, previous_slot;
	long saved_area;
	int key, selected_row;

	selected_points = slot_value[selected_slot];
	active_spell = 0;
	changed_index = -1;
	saved_area = call_save_area(3, 187, 316, 198);
redraw:
	draw_known_spell_values(character, selected_slot, spell_count, spell_ids);
	draw_slot_value_row(selected_slot, selected_points);
	call_set_text_color(1, 0);
	call_set_text_pos(127, 114 + 6 * active_spell);
	draw_font_glyph(5, 0);
	call_set_text_pos(151, 114 + 6 * active_spell);
	draw_font_glyph(6, 0);
	for (index = 0; index < spell_count; index++) {
		if (index == active_spell) {
			set_hotspot(index, 127, 113 + 6 * active_spell,
				132, 118 + 6 * active_spell, 45, 0);
			set_hotspot(spell_count, 151, 113 + 6 * active_spell,
				156, 118 + 6 * active_spell, 43, 61);
		} else {
			set_hotspot(index, 6, 113 + 6 * index, 156,
				118 + 6 * index, ((active_spell + 1) % spell_count == index)
				? (char)32 : (char)0, 0);
		}
	}
	call_restore_area(saved_area, 0);
	total_points = selected_points;
	for (index = 0; index < 4; index++) {
		if (index != selected_slot)
			total_points += slot_value[index];
	}
	spell_flags[4] = total_points > 0 ? 0 : 1;
	row_count = 0;
	for (index = 0; index <= 4; index++) {
		if (spell_flags[index] != 0) {
			frame_y = 4 + 58 * row_count;
			draw_bevel_frame(frame_y, 188, frame_y + 54, 196, 0);
			call_set_text_color(index == selected_slot ? 26 : 1, 192);
			call_set_text_pos((9 - aztec_strlen((char *)slot_label +
				20 * index)) * 6 / 2 + frame_y + 1, 190);
			draw_text_glyphs((char *)slot_label + 20 * index, 0);
			set_hotspot(spell_count + row_count + 1, frame_y, 188,
				frame_y + 54, 196, 0, 0);
			row_spell[row_count] = index;
			if (index == selected_slot) {
				selected_row = row_count;
			if (mouse_active == 0)
					draw_frame_outline(frame_y, 188, frame_y + 54,
						196, 22);
			}
			row_count++;
		}
	}
	set_hotspot(spell_count + row_count + 1, -1, 0, 0, 0, 0, 0);
	call_show_area(1, 112, 316, 198);
	if (mouse_active != 0) {
		do {
			choice = poll_hotspots(hotspot_rects) - 1;
		} while (hotspot_hit == 0);
		goto choice_ready;
	}
	choice = -1;
	index = selected_row;
keyboard:
	frame_y = 4 + 58 * index;
	draw_frame_outline(frame_y, 188, frame_y + 54, 196, 22);
	call_show_area(3, 187, 317, 199);
	draw_frame_outline(frame_y, 188, frame_y + 54, 196, 0);
	while (!poll_filtered_key(1))
		;
	key = get_filtered_key(1);
	switch (key) {
	case 8:
		index = (index + row_count - 1) % row_count;
		break;
	case 10:
		index = (index + 1) % row_count;
		break;
	case 13:
		choice = spell_count + index + 1;
		break;
	case 45:
		choice = active_spell;
		break;
	case 43:
	case 61:
		choice = spell_count;
		break;
	case 32:
		choice = (active_spell + 1) % spell_count;
		break;
	}
check_choice:
	if (choice == -1)
		goto keyboard;
choice_ready:
	if (choice < spell_count && choice != active_spell) {
		active_spell = choice;
	} else if (choice == active_spell) {
		if (party_records[character].skills[spell_ids[active_spell]] >
			slot_limit[spell_ids[active_spell]]) {
			party_records[character].skills[spell_ids[active_spell]]--;
			selected_points++;
		} else {
			play_sound_effect(0);
		}
	} else if (choice == spell_count) {
		if (party_records[character].skills[spell_ids[active_spell]] < 100 &&
			selected_points > 0) {
			party_records[character].skills[spell_ids[active_spell]]++;
			selected_points--;
		} else {
			play_sound_effect(0);
		}
	} else {
		changed_index = choice - spell_count - 1;
		previous_slot = row_spell[changed_index];
	}
	if (changed_index == -1)
		goto redraw;
done:
	slot_value[selected_slot] = selected_points;
	flash_button(58 * changed_index + 4, 188, 9, 1, 1);
	flash_button(58 * changed_index + 4, 188, 9, 1, 0);
	call_restore_area(saved_area, 1);
	return previous_slot;
}
