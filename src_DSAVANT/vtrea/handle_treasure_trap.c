/* DISARM / OPEN / SPELL / USE / LEAVE menu for a trapped chest */
#include "structs/itemrec.h"
#include "msg.h"

extern int animation_frame, party_char_count, glyph_painter;
extern int chest_trap_type, chest_open_result, chest_trap_power;
extern int treasure_caption_on, mouse_active, menu_selection_index;
extern int treasure_message_row;
extern int random_below(), member_is_active(), play_sound_effect();
extern int roll_chest_trap(), spring_chest_trap(),
	show_trap_disarm_skill_dialog();
extern int select_treasure_grid_option(), load_message_string(),
	show_indexed_beveled_label();
extern int pick_party_member(), redraw_treasure_caption();
extern int cast_spell_from_dialog(), treasure_use_item_menu();
extern int show_treasure_message();

/* returns 0 once the trap is dealt with, -1 on LEAVE */
handle_treasure_trap(chest)
struct chest_record *chest;
{
	int index, unused5, member, menu_result;
	int unused1, unused2, unused3, unused4;
	int options[6];
	int menu_workspace[16];
	char message[60];
	int trap_row_count;

	animation_frame = 0;
	trap_row_count = roll_chest_trap(chest);
	if (chest->trap_effect == 2) {
		do {
			member = random_below(party_char_count);
		} while (!member_is_active(member));
		glyph_painter = 1;
		play_sound_effect(1);
		spring_chest_trap(chest_trap_type, member, chest->trap_power);
		return 0;
	}

	for (index = 0; index <= 5; index++)
		options[index] = 1;
	options[5] = -1;
	for (;;) {
		treasure_caption_on = 1;
		redraw_treasure_caption(0);
		treasure_caption_on = 0;
		menu_result = select_treasure_grid_option(5200, 0, 82, 156, 8, 52, 12, 2, 5,
			1, -1, 0, options);
		load_message_string(menu_result + MSG_DISARM, message);
		show_indexed_beveled_label(message, menu_selection_index, 82, 156, 8, 52, 12,
			2, 26);
		switch (menu_result) {
		case 1:
			if (!mouse_active)
				redraw_treasure_caption(1);
			member = pick_party_member();
			if (member != -1 && member_is_active(member)) {
				glyph_painter = 1;
				play_sound_effect(1);
				spring_chest_trap(chest_trap_type, member,
					chest->trap_power);
				return 0;
			}
			continue;
		case 0:
			if (!mouse_active)
				redraw_treasure_caption(1);
			member = pick_party_member();
			if (member != -1) {
				if (member_is_active(member)) {
					redraw_treasure_caption(0);
					index =
						show_trap_disarm_skill_dialog(member, MSG_INSPECT, 1, 1, trap_row_count,
							chest->trap_power);
					if (index == 0) {
						glyph_painter = 1;
						load_message_string(MSG_YOU_DISARMED_THE_TRAP, message);
						show_treasure_message(message, treasure_message_row, 2, 1);
						return 0;
					}
					if (index == 1) {
						glyph_painter = 1;
						play_sound_effect(1);
						spring_chest_trap(chest_trap_type, member,
							chest->trap_power);
						return 0;
					}
				}
			}
			continue;
		case 2:
		case 3:
			if (!mouse_active)
				redraw_treasure_caption(1);
			member = pick_party_member();
			if (member != -1 && member_is_active(member)) {
			chest_open_result = 0;
			chest_trap_power = chest->trap_power;
			if (menu_result == 2)
				cast_spell_from_dialog(member);
			else if (menu_result == 3)
				treasure_use_item_menu(member);
			if (chest_open_result == 1) {
				glyph_painter = 1;
				return 0;
			}
			if (chest_open_result == -1) {
				glyph_painter = 1;
				play_sound_effect(1);
				spring_chest_trap(chest_trap_type, member,
					chest->trap_power);
				return 0;
			}
			}
			continue;
		case 4:
			return -1;
		}
	}
}
