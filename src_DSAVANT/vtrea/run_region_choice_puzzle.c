/* Region menu puzzle: one choice, or a sequence of choices checked against
 * the answer string, then update the region bits. */
#include "structs/maze.h"
#include "structs/rgnstate.h"
#include "msg.h"

extern struct maze_tables *maze_tables;
extern struct saved_region_blocks party_region;
extern int current_level, message_delay, menu_selection_index;
extern int treasure_caption_on;
extern int get_bits();
extern int load_message_string();
extern int redraw_treasure_caption();
extern int show_indexed_beveled_label();
extern int wait_treasure_input_or_timeout();
extern int play_sound_effect();
extern int strpos();
extern int set_bitmap_bit();
extern int update_region_flag_bitmaps();
extern int show_scene_message_sequence();
extern int select_treasure_grid_option();
extern unsigned int aztec_strlen();
extern char treasure_caption[];

/* (0, w) * n keeps Aztec from folding w = len * 6 times n into one constant */
run_region_choice_puzzle()
{
	int index, found_at, selected_index, object_flags, message_index;
	int text_length, option_count, option_start, message_number, bit_8, bit_9;
	int bit_12, bit_13, bit_14, changed, finished, bit_15;
	char message[80];
	char answer_code[80];
	int option_enabled[16];
	int menu_left, menu_rows;

	if (maze_tables->arg[party_region.region] > 0)
		show_scene_message_sequence(maze_tables->key[party_region.region] +
			maze_tables->arg[party_region.region], 0);

	object_flags = maze_tables->flags[party_region.region];
	option_count = get_bits(object_flags, 0, 4);
	option_start = get_bits(object_flags, 4, 4);
	bit_8 = get_bits(object_flags, 8, 1);
	bit_9 = get_bits(object_flags, 9, 1);
	bit_12 = get_bits(object_flags, 12, 1);
	bit_13 = get_bits(object_flags, 13, 1);
	bit_14 = get_bits(object_flags, 14, 1);
	bit_15 = get_bits(object_flags, 15, 1);
	message_index = maze_tables->key[party_region.region];
	if (bit_13 == 0) {
		load_message_string(message_index, treasure_caption);
		message_index++;
	}
	load_message_string(message_index, answer_code);
	message_index++;
	for (index = 0; index < option_count; index++)
		option_enabled[index] = 1;
	option_enabled[option_count] = -1;
	treasure_caption_on = 1;
	redraw_treasure_caption(0);

	if (bit_13 == 1) {
		load_message_string(message_index, message);
		text_length = aztec_strlen(message);
		selected_index = select_treasure_grid_option(message_index, 0,
			161 - (6 * text_length) / 2, 156, text_length,
			6 * text_length + 4, 12, 3, option_count, 1,
			-1, 0, option_enabled);
		load_message_string(message_index + selected_index, message);
		show_indexed_beveled_label(message, menu_selection_index,
			161 - (6 * text_length) / 2, 156, text_length,
			6 * text_length + 4, 12, 3, 26);
		wait_treasure_input_or_timeout(message_delay / 2);
		redraw_treasure_caption(0);
		message_number = (unsigned char)answer_code[selected_index * 2] * 10 +
			(unsigned char)answer_code[selected_index * 2 + 1] - 528;
		if (message_number > 0 && message_number < 128)
			set_bitmap_bit(party_region.state[current_level], message_number, 0);
	} else {
		changed = 0;
		finished = 0;
		for (index = 0; index < option_start; index++) {
			load_message_string(message_index, message);
			text_length = aztec_strlen(message);
			if (option_count > 6) {
				menu_left = 161 - ((0, text_length * 6) * 3 + 62) / 2;
				menu_rows = (option_count - 1) / 3 + 1;
			} else {
				menu_left = 161 - ((0, 6 * text_length) * 2 + 40) / 2;
				menu_rows = (option_count - 1) / 2 + 1;
			}
			selected_index = select_treasure_grid_option(message_index, 0,
				menu_left, 156, text_length + 3, 6 * text_length + 22,
				12, menu_rows, option_count, 1, -1, 0,
				option_enabled);
			load_message_string(message_index + selected_index, message);
			show_indexed_beveled_label(message, menu_selection_index,
				menu_left, 156, text_length + 3, 6 * text_length + 22,
				12, menu_rows, 26);
			redraw_treasure_caption(0);
			if (bit_14 == 1)
				option_enabled[selected_index] = 0;
			if (bit_9 == 0 && selected_index == option_count - 1) {
				index = option_start;
				if (changed == 0)
					finished = 1;
			} else {
				if (bit_8 != 0)
					play_sound_effect(4);
				found_at = strpos(answer_code, (unsigned char)(selected_index + 48));
				if (found_at == -1 || (bit_12 == 0 &&
					(unsigned char)answer_code[index] - 48 != selected_index)) {
					changed = 1;
					if (bit_15 == 1)
						index = option_start;
				}
			}
		}
		if (finished == 0) {
			object_flags = maze_tables->party_mask[party_region.region];
			update_region_flag_bitmaps(get_bits(object_flags, 0, 8),
				get_bits(object_flags, 8, 8), changed);
		}
	}
	treasure_caption_on = 0;
	party_region.region++;
}
