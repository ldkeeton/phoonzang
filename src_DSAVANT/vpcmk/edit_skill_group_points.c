/* Edit one skill group's points, with mouse and keyboard selection. */
#include "structs/pcrec.h"

extern struct pc_rec party_records[];
extern int skill_group_points[], slot_limit[], slot_label[];
extern int hotspot_rects[], hotspot_hit, mouse_active;
extern long call_save_area();
extern int call_restore_area(), call_show_area();
extern int draw_skill_list_values(), draw_skill_points_row();
extern int call_set_text_color(), call_set_text_pos(), draw_font_glyph();
extern int set_hotspot(), draw_bevel_frame(), draw_text_glyphs();
extern int draw_frame_outline(), strlen(), poll_hotspots();
extern int poll_filtered_key(), play_sound_effect(), flash_button();
extern unsigned char get_filtered_key();

edit_skill_group_points(character, selected_group, skill_count, skill_ids,
	group_enabled)
int character, selected_group, skill_count, skill_ids[], group_enabled[];
{
	int index, total_points, frame_y, choice, active_skill;
	int selected_points, row_count, row_skill[12];
	int changed_index, previous_slot;
	long saved_area;
	int key, selected_row;

	selected_points = skill_group_points[selected_group];
	active_skill = 0;
	changed_index = -1;
	saved_area = call_save_area(3, 187, 316, 198);
	do {
		draw_skill_list_values(character, selected_group, skill_count,
			skill_ids);
		draw_skill_points_row(selected_group, selected_points);
		call_set_text_color(1, 0);
		call_set_text_pos(127, 114 + 6 * active_skill);
		draw_font_glyph(5, 0);
		call_set_text_pos(151, 114 + 6 * active_skill);
		draw_font_glyph(6, 0);
		for (index = 0; index < skill_count; index++) {
			if (index == active_skill) {
				set_hotspot(index, 127, 113 + 6 * active_skill,
					132, 118 + 6 * active_skill, 45, 0);
				set_hotspot(skill_count, 151, 113 + 6 * active_skill,
					156, 118 + 6 * active_skill, 43, 61);
			} else {
				set_hotspot(index, 6, 113 + 6 * index, 156,
					118 + 6 * index,
					((active_skill + 1) % skill_count == index)
						? (char)32 : (char)0, 0);
			}
		}
		call_restore_area(saved_area, 0);
		total_points = selected_points;
		for (index = 0; index < 4; index++) {
			if (index != selected_group)
				total_points += skill_group_points[index];
		}
		group_enabled[4] = total_points > 0 ? 0 : 1;
		row_count = 0;
		for (index = 0; index <= 4; index++) {
			if (group_enabled[index] != 0) {
				frame_y = 4 + 58 * row_count;
				draw_bevel_frame(frame_y, 188, frame_y + 54, 196, 0);
				call_set_text_color(index == selected_group ? 26 : 1,
					192);
				call_set_text_pos((9 - strlen((char *)slot_label +
					20 * index)) * 6 / 2 + frame_y + 1, 190);
				draw_text_glyphs((char *)slot_label + 20 * index, 0);
				set_hotspot(skill_count + row_count + 1, frame_y, 188,
					frame_y + 54, 196, 0, 0);
				row_skill[row_count] = index;
				if (index == selected_group) {
					selected_row = row_count;
					if (mouse_active == 0)
						draw_frame_outline(frame_y, 188,
							frame_y + 54, 196, 22);
				}
				row_count++;
			}
		}
		set_hotspot(skill_count + row_count + 1, -1, 0, 0, 0, 0, 0);
		call_show_area(1, 112, 316, 198);
		if (mouse_active != 0) {
			do {
				choice = poll_hotspots(hotspot_rects) - 1;
			} while (hotspot_hit == 0);
		} else {
			choice = -1;
			index = selected_row;
			do {
				frame_y = 4 + 58 * index;
				draw_frame_outline(frame_y, 188, frame_y + 54,
					196, 22);
				call_show_area(3, 187, 317, 199);
				draw_frame_outline(frame_y, 188, frame_y + 54,
					196, 0);
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
					choice = skill_count + index + 1;
					break;
				case 45:
					choice = active_skill;
					break;
				case 43:
				case 61:
					choice = skill_count;
					break;
				case 32:
					choice = (active_skill + 1) % skill_count;
					break;
				}
			} while (choice == -1);
		}
		if (choice < skill_count && choice != active_skill) {
			active_skill = choice;
		} else if (choice == active_skill) {
			if (party_records[character].skills[skill_ids[active_skill]]
				> slot_limit[skill_ids[active_skill]]) {
				party_records[character].skills[skill_ids[active_skill]]--;
				selected_points++;
			} else {
				play_sound_effect(0);
			}
		} else if (choice == skill_count) {
			if (party_records[character].skills[skill_ids[active_skill]]
				< 100 && selected_points > 0) {
				party_records[character].skills[skill_ids[active_skill]]++;
				selected_points--;
			} else {
				play_sound_effect(0);
			}
		} else {
			changed_index = choice - skill_count - 1;
			previous_slot = row_skill[changed_index];
		}
	} while (changed_index == -1);
	skill_group_points[selected_group] = selected_points;
	flash_button(58 * changed_index + 4, 188, 9, 1, 1);
	flash_button(58 * changed_index + 4, 188, 9, 1, 0);
	call_restore_area(saved_area, 1);
	return previous_slot;
}
