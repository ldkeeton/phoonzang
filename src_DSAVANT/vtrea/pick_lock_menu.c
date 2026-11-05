/* Prepare the pick/force menu and attempt the selected door action. */

#include "structs/maze.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern int lock_tumbler_values[];
extern int treasure_caption_on, menu_selection_index, mouse_active;
extern int get_bits(), random_below(), clamp_between();
extern int redraw_treasure_caption();
extern int select_treasure_grid_option();
extern int load_message_string();
extern int show_indexed_beveled_label();
extern int pick_party_member(), member_is_active();
extern int pick_lock_or_force_door();

pick_lock_menu(object_index)
int object_index;
{
	int outer, inner, member;
	int unused_frame_words[6];
	int initial_action_status;
	int menu_options[3];
	int menu_result, packed_level, difficulty, door_requirement;
	char label[80];

	door_requirement = maze_tables->party_mask[object_index];
	packed_level = maze_tables->arg[object_index];
	difficulty = get_bits(packed_level, 0, 5);
	for (outer = 0; outer < 6; outer++) {
		lock_tumbler_values[outer] = 2;
		for (inner = 0; inner < difficulty; inner++) {
			lock_tumbler_values[outer] += random_below(5);
		}
		lock_tumbler_values[outer] =
			clamp_between(lock_tumbler_values[outer], 0, 95);
	}
	outer = 0;
	do {
		menu_options[outer] = 1;
	} while (++outer <= 2);
	initial_action_status = -1;
	for (;;) {
		treasure_caption_on = 1;
		redraw_treasure_caption(0);
		treasure_caption_on = 0;
		menu_result = select_treasure_grid_option(2100, 0, 82, 156, 8, 52,
			12, 1, 3, 1, (unsigned)65535, 0, menu_options);
		load_message_string(menu_result + MSG_PICK, label);
		show_indexed_beveled_label(label, menu_selection_index,
			82, 156, 8, 52, 12, 1, 26);
		redraw_treasure_caption(0);
		switch (menu_result) {
		case 0:
			if (mouse_active == 0)
				redraw_treasure_caption(1);
			member = pick_party_member();
			if (member != -1 && member_is_active(member)) {
				if (pick_lock_or_force_door(member, object_index, 0) == 0)
					menu_result = 2;
			}
			break;
		case 1:
			if (pick_lock_or_force_door(0, object_index, 1) == 0)
				menu_result = 2;
			break;
		}
		if (menu_result == 2)
			break;
	}
	return;
}
