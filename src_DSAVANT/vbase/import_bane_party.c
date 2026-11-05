/* Import the selected BANE party and initialize its party state. */
#include "msg.h"
#include "structs/pcrec.h"
#include "structs/spell.h"

struct bane_realm_entry {
	int value;
	int pad;
};
struct bane_item_entry {
	int item;
	char pad[4];
	unsigned char level;
	unsigned char flags;
};
struct bane_item_level {
	unsigned char level;
	char pad[7];
};
struct bane_item_flag {
	unsigned char flags;
	char pad[7];
};

extern int disk_header, party_char_count;
extern unsigned char install_mode;
extern char selected_game_directory[], selected_game_drive[];
extern char data_path_prefixes[], game_data_drive[], game_load_path[];
extern int member_icon[], intro_screen_number;
extern struct pc_rec party_records[];
extern int party_world_x, party_world_y, party_cell_x, party_cell_y;
extern int party_map_piece, party_facing, current_level;
extern int previous_party_world_x, previous_party_world_y;
extern int previous_party_cell_x, previous_party_cell_y;
extern int previous_party_map_piece, previous_party_facing;
extern int previous_level;
extern unsigned char scenario_header_data[];
extern char bane_source_filename[];
extern unsigned char bane_header_buffer[], bane_section_header[],
	bane_character_record[];

extern int bane_import_buffer, bane_level, bane_experience_value,
	bane_character_value_c, bane_character_value_b,
	bane_party_member_count;
extern long bane_character_value_a;
extern struct bane_realm_entry bane_realm_values[];
extern unsigned char bane_character_stats[], bane_character_stat_caps[],
	bane_resistances[], bane_spell_bits[];
extern unsigned char bane_story_values_a[], bane_story_values_b[],
	bane_character_race, bane_character_gender, bane_character_profession,
	bane_character_value_d;
extern unsigned char bane_power_adjustment, bane_item_count_a,
	bane_item_count_b;
extern struct bane_item_entry bane_items_a[];
extern struct bane_item_level bane_item_levels_a[];
extern struct bane_item_flag bane_item_flags_a[];
extern struct bane_item_entry bane_items_b[];
extern struct bane_item_level bane_item_levels_b[];
extern struct bane_item_flag bane_item_flags_b[];
extern struct spell_info spell_table[];

extern int call_wait_sound(), load_message_string(), choose_game_file();
extern int copy_through_char(), aztec_strcpy(), aztec_strcat(), aztec_strlen();
extern int aztec_strcmp(), prompt_disk_swap(), call_show_area(),
	draw_message_box();
extern int aztec_open(), aztec_lseek(), aztec_read(), aztec_close(),
	aztec_malloc();
extern int aztec_free(), release_and_exit(), show_load_disk_error();
extern int find_unused_member_icon(), random_below(), test_bit();
extern int map_bane_party_selector(), set_bitmap_bit();
extern long read_class_experience_threshold();
extern int map_bane_character_kind(), reset_hand_attack(),
	draw_member_panel_glyphs();
extern int init_item_slot(), map_bane_item_number(),
	initialize_intro_layout();

import_bane_party()
{
	int path_index, record_index, selector_result, loop_index, read_handle;
	int bytes_read, disk_swap, file_disk_number, prompt_result;
	struct pc_rec *record;
	int row_index, column_index, stat_value, max_stat, stat_sum;
	int calc_a, leftover_slot;
	char source_path[20], selected_path[20], disk_error_message[20],
		loading_message[20];

	/* Show the disk messages and let the file chooser pick the source. */
	disk_swap = 0;
	file_disk_number = disk_header;
	file_disk_number = (install_mode == 5 && file_disk_number > 0)
		? disk_header + 1 + 1 : file_disk_number;
	call_wait_sound(0);
	load_message_string(MSG_DISK_ERROR, disk_error_message);
	load_message_string(MSG_LOADING, loading_message);
	aztec_strcpy(source_path, bane_source_filename);
	aztec_strcpy(selected_path, selected_game_directory);
	prompt_result = 1;
	if (choose_game_file(MSG_IMPORT_BANE_1415, 0, 1, 1, selected_path,
		source_path) == 2)
		return -1;

	/* Build the full path and choose whether a disk swap is needed. */
	copy_through_char(game_data_drive, data_path_prefixes, 58);
	copy_through_char(selected_game_drive, selected_path, 58);
	aztec_strcpy(game_load_path, selected_path);
	if (aztec_strlen(game_load_path) > 0) {
		path_index = aztec_strlen(game_load_path) - 1;
		if (game_load_path[path_index] != '\\') {
			game_load_path[path_index + 1] = '\\';
			game_load_path[path_index + 2] = 0;
		}
	}
	aztec_strcat(game_load_path, source_path);
	/* A hard-disk install reading its own drive needs no disk prompt. */
	if (install_mode != 1 ||
	    aztec_strcmp(game_data_drive, selected_game_drive) != 0) {
		if (aztec_strlen(selected_game_drive) > 0) {
			if (aztec_strcmp(game_data_drive, selected_game_drive) == 0
				|| install_mode == 5)
				disk_swap = 1;
			prompt_disk_swap(selected_game_drive, -1, disk_swap, 0);
			prompt_result = disk_swap != 0 ? 0 : 1;
		} else if (install_mode > 1) {
			disk_swap = 1;
			prompt_disk_swap(game_data_drive, -1, disk_swap, 0);
			prompt_result = disk_swap != 0 ? 0 : 1;
		}
	}
	call_show_area(0, 0, 319, 199);
	draw_message_box(loading_message, 3, 97, 36, 18, 13, 1);
	read_handle = aztec_open(game_load_path, 0);
	if (read_handle == -1) {
		show_load_disk_error(disk_error_message);
		if (disk_swap)
			prompt_disk_swap(game_data_drive, file_disk_number, prompt_result, 1);
		return -1;
	}
	aztec_lseek(read_handle, 0L, 0);
	bytes_read = aztec_read(read_handle, bane_header_buffer, 414);
	if (bytes_read <= 0) {
		show_load_disk_error(disk_error_message);
		aztec_close(read_handle);
		if (disk_swap) prompt_disk_swap(game_data_drive, file_disk_number,
			prompt_result, 1);
		return -1;
	}
	bane_import_buffer = aztec_malloc(1750);
	if (bane_import_buffer == 0) release_and_exit(29);
	/* Skip the sixteen fixed-size blocks before the party section. */
	for (loop_index = 0; loop_index < 16; loop_index++) {
		bytes_read = aztec_read(read_handle, bane_import_buffer, 1346);
		if (bytes_read <= 0) {
			aztec_free(bane_import_buffer); show_load_disk_error(disk_error_message);
			aztec_close(read_handle);
			if (disk_swap) prompt_disk_swap(game_data_drive, file_disk_number,
				prompt_result, 1);
			return -1;
		}
		bytes_read = aztec_read(read_handle, bane_import_buffer, 1740);
		if (bytes_read <= 0) {
			aztec_free(bane_import_buffer); show_load_disk_error(disk_error_message);
			aztec_close(read_handle);
			if (disk_swap) prompt_disk_swap(game_data_drive, file_disk_number,
				prompt_result, 1);
			return -1;
		}
	}
	aztec_free(bane_import_buffer);
	bytes_read = aztec_read(read_handle, bane_section_header, 66);
	if (bytes_read <= 0) {
		show_load_disk_error(disk_error_message); aztec_close(read_handle);
		if (disk_swap) prompt_disk_swap(game_data_drive, file_disk_number,
			prompt_result, 1);
		return -1;
	}

	/* Read each imported character and translate its fields into a party
	   record. */
	party_char_count = 0;
	for (path_index = 0; path_index < bane_party_member_count; path_index++) {
		bytes_read = aztec_read(read_handle, bane_character_record, 432);
		if (bytes_read <= 0) {
			show_load_disk_error(disk_error_message); aztec_close(read_handle);
			if (disk_swap) prompt_disk_swap(game_data_drive, file_disk_number,
				prompt_result, 1);
			return -1;
		}
		member_icon[party_char_count] =
			find_unused_member_icon(party_char_count);
		record = &party_records[party_char_count];
		record->level = bane_level > 5 ? 5 : bane_level;
		aztec_strcpy(record->name, bane_character_record);
		record->age_days = bane_character_value_a;
		record->marks = 0L;
		record->gold = 0L;
		for (record_index = 0; record_index < 8; record_index++) {
			record->stat[record_index] = bane_character_stats[record_index];
			if (bane_level > 5 && record->stat[record_index] > 14)
				record->stat[record_index] -= random_below(4);
		}
		/* Derive power bounds from the imported rank and two character stats. */
		record->hp[1] =
			(bane_experience_value / bane_level) * record->level;
		if (record->hp[1] < 7) record->hp[1] = 7;
		if (record->level * 8 + 8 < record->hp[1])
			record->hp[1] = random_below(8) + record->level * 8;
		record->hp[0] = record->hp[1];
		stat_value = record->stat[0];
		max_stat = record->stat[3];
		stat_sum = (max_stat * 2 + stat_value) * 3;
		calc_a = (stat_value * 2 + max_stat) * 3;
		if (max_stat > 15) stat_sum += max_stat;
		if (max_stat > 17) stat_sum += max_stat;
		if (stat_value > 15) calc_a += stat_value;
		if (stat_value > 17) calc_a += stat_value;
		stat_sum += 5 * record->level;
		record->stamina[0] = stat_sum;
		record->stamina[1] = stat_sum;
		record->carried_weight = 0;
		record->carry_capacity = 15 * calc_a;
		if (record->race == 5) record->carry_capacity =
			(record->carry_capacity * 2) / 3;
		record->deaths = bane_character_value_c;
		for (record_index = 0; record_index < 6; record_index++) {
			record->realm_points[record_index][1] =
				(bane_realm_values[record_index].value / bane_level) *
				record->level;
			if (record->level * 7 + 7 <
				record->realm_points[record_index][1])
				record->realm_points[record_index][1] =
					random_below(7) + record->level * 7;
			record->realm_points[record_index][0] =
				record->realm_points[record_index][1];
		}

		/* Fill the imported flag table and clamp each value to the source cap. */
		for (record_index = 0; record_index < 30; record_index++) {
			stat_value = record_index;
			switch (record_index) {
			case 11: stat_value = 12; break; case 12: stat_value = 13; break;
			case 13: stat_value = 14; break; case 14: stat_value = 15; break;
			case 15: stat_value = 16; break; case 16: stat_value = 17; break;
			case 17: stat_value = -1; break; case 18: stat_value = -1; break;
			case 19: stat_value = -1; break; case 20: stat_value = -1; break;
			case 21: stat_value = -1; break;
			case 22: stat_value = 24; break; case 23: stat_value = -1; break;
			case 24: stat_value = 27; break; case 25: stat_value = 29; break;
			case 26: stat_value = 30; break; case 27: stat_value = 31; break;
			case 28: stat_value = 32; break; case 29: stat_value = 33; break;
			}
			if (stat_value >= 0) {
				max_stat = bane_level;
				if (max_stat > 18) max_stat = 18;
				while (max_stat > 0
					&& record->skills[stat_value] < bane_character_stat_caps[record_index]) {
					record->skills[stat_value] += random_below(3) + 1;
					max_stat--;
				}
				if (record->skills[stat_value] > bane_character_stat_caps[record_index])
					record->skills[stat_value] = bane_character_stat_caps[record_index];
			}
		}

		/* Scale the imported resistances by level and initialize the party's
		   bit-marked spells. */
		for (record_index = 0; record_index < 14; record_index++) {
			record->resistance_rows.named.resist[record_index] =
				(bane_resistances[record_index] / bane_level) *
				record->level;
			record->resistance_rows.named.base_resist[record_index] =
				record->resistance_rows.named.resist[record_index];
		}
		for (record_index = 0; record_index < 79; record_index++) {
			if (test_bit(bane_spell_bits, record_index)) {
				selector_result = map_bane_party_selector(record_index);
				if (selector_result >= 0 && spell_table[selector_result].level < 4) {
					if (random_below(6) >= spell_table[selector_result].level)
						set_bitmap_bit(record->spell_bitmap,
							selector_result, 1);
				}
			}
		}
		for (record_index = 0; record_index < 4; record_index++) {
			record->imported_flags[record_index] =
				bane_story_values_a[record_index];
			record->story_flags[record_index] =
				bane_story_values_b[record_index];
		}
		record->race = bane_character_race;
		record->gender = bane_character_gender;
		record->profession = bane_character_profession;
		record->experience = read_class_experience_threshold(
			record->profession, record->level);
		record->kind = map_bane_character_kind(record->race,
			record->gender, record->profession);
		record->rank = bane_character_value_d;
		record->state = 0;
		record->stamina_drain = 0;
		record->imported_fields[0] = 1;
		record->imported_fields[1] = 10;
		record->adjusted_stat4 = 1;
		record->adjusted_stat5 = 1;
		record->stat5_plus_power = record->stat[5] + record->level;

		/* Initialize derived percentage and per page values. */
		record_index = 3 * bane_level + (signed char)bane_power_adjustment
			- 3 * record->level;
		if (100 - record->level * 8 > record_index)
			record_index = random_below(5) + (100 - record->level * 8);
		if (record_index > 100) record_index = 100;
		record->level_scaled_percent = record_index;
		for (record_index = 0; record_index < 2; record_index++)
			reset_hand_attack(party_char_count, record_index);
		record->armor_class[0] = 10;
		record->armor_class[0] -= record->stat[5] > 15 ? 1 : 0;
		record->armor_class[0] -= record->stat[5] > 17;
		record->armor_class[0] -= record->race == 5 ? 2 : 0;
		if (record->profession == 13 || record->profession == 12)
			record->armor_class[0] -= record->skills[17] / 10;
		record->armor_class[1] = 0;
		record->armor_class[2] = 0;
		for (record_index = 3; record_index < 8; record_index++)
			record->armor_class[record_index] = record->armor_class[0];
		for (record_index = 0; record_index < 96; record_index++)
			record->pad1[record_index] = 40 - 4 *
				(record->stat[7] - 9 < 0 ? -(record->stat[7] - 9)
					: record->stat[7] - 9);
		for (record_index = 0; record_index < 8; record_index++)
			record->equipped[record_index] = 255;
		draw_member_panel_glyphs(party_char_count);

		/* Give starting items: 411 to the first member, then one or two by
		   profession (glyph set 5 gets 397 instead). */
		row_index = 0;
		column_index = 0;
		if (party_char_count == 0) {
			init_item_slot(party_char_count, 411,
				&record->item_slots[row_index][column_index], -2, 1);
			column_index++;
		}
		record_index = 0;
		selector_result = 0;
		switch (bane_character_profession) {
		case 0: record_index = 8; break;
		case 1: record_index = 18; break;
		case 2: record_index = 24; break;
		case 3: record_index = 6; break;
		case 4: record_index = 31; selector_result = 33; break;
		case 5: record_index = 18; break;
		case 6: record_index = 29; selector_result = 30; break;
		case 7: record_index = 1; break;
		case 8: record_index = 22; break;
		case 9: record_index = 24; break;
		case 10: record_index = 9; break;
		case 11: record_index = 10; break;
		case 12: record_index = 25; break;
		case 13: record_index = 47; break;
		}
		if (bane_character_race == 5) {
			record_index = 397;
			selector_result = 0;
		}
		if (record_index > 0) {
			init_item_slot(party_char_count, record_index,
				&record->item_slots[row_index][column_index], -2, 1);
			column_index++;
		}
		if (selector_result > 0) {
			init_item_slot(party_char_count, selector_result,
				&record->item_slots[row_index][column_index], -2, 1);
			column_index++;
		}

		/* Map both imported item lists into the item slots.  One item the
		   game has no match for (flag bit 0 set) may be kept; an index from
		   the second list is past the first's ten entries. */
		leftover_slot = -1;
		for (record_index = 0; record_index < bane_item_count_a;
			record_index++) {
			selector_result = bane_items_a[record_index].item;
			if (selector_result > 0) {
				selector_result = map_bane_item_number(selector_result);
				if (selector_result < 0) {
					if (leftover_slot == -1 || random_below(3) == 0) {
						if (bane_item_flags_a[record_index].flags & 1)
							leftover_slot = record_index;
					}
				} else if (selector_result > 0 && row_index < 2) {
					init_item_slot(party_char_count,
						selector_result, &record->item_slots[row_index][column_index],
						bane_item_levels_a[record_index].level, 1);
					column_index++;
					if (column_index >= 10) {
						column_index = 0;
						row_index++;
					}
				}
			}
		}
		for (record_index = 0; record_index < bane_item_count_b;
			record_index++) {
			selector_result = bane_items_b[record_index].item;
			if (selector_result > 0) {
				selector_result = map_bane_item_number(selector_result);
				if (selector_result < 0) {
					if (leftover_slot == -1 || random_below(3) == 0) {
						if (bane_item_flags_b[record_index].flags & 1)
							leftover_slot = record_index + 10;
					}
				} else if (selector_result > 0 && row_index < 2) {
					init_item_slot(party_char_count,
						selector_result, &record->item_slots[row_index][column_index],
						bane_item_levels_b[record_index].level, 1);
					column_index++;
					if (column_index >= 10) {
						column_index = 0;
						row_index++;
					}
				}
			}
		}
		if (leftover_slot != -1 && row_index < 2) {
			selector_result = map_bane_item_number(
				bane_items_a[leftover_slot].item);
			if (selector_result < 0)
				selector_result = selector_result < 0
					? -selector_result : selector_result;
			if (selector_result > 0)
				init_item_slot(party_char_count,
					selector_result, &record->item_slots[row_index][column_index],
					bane_item_levels_a[leftover_slot].level, 1);
		}

		/* The imported traits determine the starting scene after all records
		   load. */
		party_char_count++;
	}
	aztec_close(read_handle);
	/* A set story bit chooses which starting scene and layout to initialize. */
	stat_value = -1;
	for (record_index = 0; record_index < party_char_count; record_index++)
		for (selector_result = 0; selector_result < 3; selector_result++)
			if (test_bit(party_records[record_index].story_flags, selector_result))
				stat_value = selector_result;
	switch (stat_value) {
	case 0:
		party_world_x = 92; party_world_y = 79;
		party_cell_x = 4; party_cell_y = 7; party_map_piece = 3;
		party_facing = 2; current_level = 0;
		party_records[0].gold = 5000L;
		initialize_intro_layout(-90, -20, 10, 10, 0, 0, -20, 20, 90, 0);
		intro_screen_number = 1;
		break;
	case 1:
		party_world_x = 140; party_world_y = 125;
		party_cell_x = 4; party_cell_y = 5; party_map_piece = 11;
		party_facing = 3; current_level = 6;
		party_records[0].gold = 10000L;
		initialize_intro_layout(-50, -90, 40, -40, 10, 0, 10, 10, 0, 90);
		intro_screen_number = 2;
		break;
	case 2:
		party_world_x = 110; party_world_y = 142;
		party_cell_x = 6; party_cell_y = 6; party_map_piece = 1;
		party_facing = 2; current_level = 2;
		initialize_intro_layout(0, 35, -95, 25, -50, -20, 20, 0, -90, -90);
		intro_screen_number = 3;
		break;
	case -1:
		intro_screen_number = 4;
		break;
	}
	if (stat_value != -1) {
		set_bitmap_bit(scenario_header_data, 1, 1);
		set_bitmap_bit(scenario_header_data, 2, 1);
		set_bitmap_bit(scenario_header_data + (current_level << 4), 20, 0);
		set_bitmap_bit(scenario_header_data + (current_level << 4), 21, 0);
		previous_party_world_x = party_world_x;
		previous_party_world_y = party_world_y;
		previous_party_cell_x = party_cell_x;
		previous_party_cell_y = party_cell_y;
		previous_party_map_piece = party_map_piece;
		previous_party_facing = party_facing;
		previous_level = current_level;
	}
	return 0;
}
