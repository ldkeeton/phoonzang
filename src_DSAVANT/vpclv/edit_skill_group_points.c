/* Edit a character's skill point allocation within one skill group. */
#include "structs/pcrec.h"
extern struct pc_rec party_records[];
extern int skill_group_points[], slot_limit[];
extern char slot_label[][20];
extern int mouse_active, hotspot_hit;
extern int hotspot_rects[];
extern long call_save_area();

/* Draw skill controls, apply value changes, and return the chosen group. */
edit_skill_group_points(member, slot, slots, skills, enabled)
int member, slot, slots;
int *skills, *enabled;
{
	int i, total, y, hit, selected, value, count;
	int visible[12], button, result;
	long saved;
	int key, current;
	value = skill_group_points[slot];
	selected = 0;
	button = -1;
	saved = call_save_area(3, 187, 316, 198);
	for (;;) {
	draw_skill_list_values(member, slot, slots, skills);
	draw_skill_points_row(slot, value);
	call_set_text_color(1, 0);
	call_set_text_pos(127, 6 * selected + 114);
	draw_font_glyph(5, 0);
	call_set_text_pos(151, 6 * selected + 114);
	draw_font_glyph(6, 0);
	for (i = 0; i < slots; i++) {
	if (i == selected) {
	set_hotspot(i, 127, 6 * selected + 113, 132, 6 * selected + 118, 45, 0);
	set_hotspot(slots, 151, 6 * selected + 113, 156, 6 * selected + 118, 43,
		61);
	} else {
	set_hotspot(i, 6, 6 * i + 113, 156, 6 * i + 118,
		(selected + 1) % slots == i ? (char)32 : (char)0, 0);
	}
	}
	call_restore_area(saved, 0);
	total = value;
	i = 0;
	do { if (i != slot) total += skill_group_points[i]; } while (++i < 4);
	enabled[4] = total > 0 ? 0 : 1;
	count = 0;
	i = 0;
	do {
	if (enabled[i]) {
	y = 58 * count + 4;
	draw_bevel_frame(y, 188, y + 54, 196, 0);
	call_set_text_color(i == slot ? 26 : 1, 192);
	call_set_text_pos(y + (9 - aztec_strlen(slot_label[i])) * 6 / 2 + 1, 190);
	draw_text_glyphs(slot_label[i], 0);
	set_hotspot(slots + count + 1, y, 188, y + 54, 196, 0, 0);
	visible[count] = i;
	if (i == slot) {
		current = count;
		if (mouse_active == 0) fill_rectangle_border(y, 188, y + 54, 196, 22);
	}
	count++;
	}
	} while (++i <= 4);
	set_hotspot(slots + count + 1, -1, 0, 0, 0, 0, 0);
	call_show_area(1, 112, 316, 198);
	if (mouse_active) {
	do { hit = poll_hotspots(hotspot_rects) - 1; } while (hotspot_hit == 0);
	} else {
	hit = -1;
	i = current;
	do {
	y = 58 * i + 4;
	fill_rectangle_border(y, 188, y + 54, 196, 22);
	call_show_area(3, 187, 317, 199);
	fill_rectangle_border(y, 188, y + 54, 196, 0);
	while (poll_filtered_key(1) == 0) ;
	key = (unsigned char)get_filtered_key(1);
	switch (key) {
	case 8: i = (i + count - 1) % count; break;
	case 10: i = (i + 1) % count; break;
	case 13: hit = slots + i + 1; break;
	case '-': hit = selected; break;
	case '+': case '=': hit = slots; break;
	case ' ': hit = (selected + 1) % slots; break;
	}
	} while (hit == -1);
	}
	if (hit < slots && hit != selected) selected = hit;
	else if (hit == selected) {
	if (party_records[member].skills[skills[selected]]
	> slot_limit[skills[selected]]) {
	party_records[member].skills[skills[selected]]--;
	value++;
	} else play_sound_effect(0);
	} else if (hit == slots) {
	if (party_records[member].skills[skills[selected]] < 100 && value > 0) {
	party_records[member].skills[skills[selected]]++;
	value--;
	} else play_sound_effect(0);
	} else {
	button = hit - slots - 1;
	result = visible[button];
	}
	if (button != -1) break;
	}
	skill_group_points[slot] = value;
	flash_button(58 * button + 4, 188, 9, 1, 1);
	flash_button(58 * button + 4, 188, 9, 1, 0);
	call_restore_area(saved, 1);
	return result;
}
