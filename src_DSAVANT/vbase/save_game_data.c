/* Choose a save file and write the current game state and party. */
#include "structs/flooritm.h"
#include "structs/location.h"
#include "structs/mazechng.h"
#include "structs/pathedge.h"
#include "structs/questmap.h"
#include "structs/slotevt.h"
#include "structs/slotstat.h"
#include "msg.h"
#include "structs/loadrec.h"
#include "structs/pcrec.h"
#include "structs/rgnstate.h"
#include "structs/filehdr.h"
extern struct load_header scenario_header;
extern struct disk_header disk_header;
extern struct load_state loaded_game_state;
extern struct status_pair party_effects[];
extern struct pc_rec party_records[], loaded_party_member;
extern char game_load_path[];
extern char game_data_drive[], selected_game_drive[];
extern struct maze_change *maze_change_log;
extern struct floor_item *floor_items;
extern char far (*runtime_buffer_4k_a)[128], (*runtime_buffer_4k_b)[128];
extern char game_block_a[], game_block_b[];
extern int party_world_x, party_world_y, party_cell_x, party_cell_y;
extern int party_map_piece, party_facing, current_level;
extern int previous_party_world_x, previous_party_world_y,
	previous_party_cell_x, previous_party_cell_y, previous_party_map_piece,
	previous_party_facing, previous_level;
extern int saved_cell_x, saved_cell_y, saved_map_piece, saved_level,
	saved_position_extra;
extern long game_time, game_time_aux_a, game_time_aux_b;
extern char faction_attitudes[];
extern struct slot_event slot_event_logs[][5];
extern struct path_edge path_edges[];
extern struct location_record location_records[];
extern char code_characters[];
extern struct slot_record slot_records[];
extern struct quest_map quest_maps[];
extern int party_char_count;
extern long aztec_lseek();

extern char ending_save_filename[];
extern int explored_cell_bitmap[];
extern int current_map_block_a[];
extern struct saved_region_blocks party_region;

save_game_data(save_mode)
int save_mode;
{
	int index, block, byte_count, write_count, fd, dialog_message, swap_needed,
		disk_number, keep_disk;
	char filename[20], error_text[20], saving_text[20];

	swap_needed = 0;
	disk_number = disk_header.number;
	/* Installation mode five uses disk numbers two higher. */
	disk_number =
		scenario_header.install_mode == 5
			&& disk_number > 0 ? disk_number + 2 : disk_number;
	call_wait_sound(0);
	load_message_string(MSG_DISK_ERROR, error_text);
	load_message_string(MSG_SAVING, saving_text);
	keep_disk = 1;
	if (save_mode == 1) { /* the ending uses its own file and dialog */
		aztec_strcpy(filename, ending_save_filename);
		dialog_message = 1425; /* ending-save dialog */
	} else {
		aztec_strcpy(filename, scenario_header.paths[PATH_SAVE_FILE]);
		dialog_message = 1410; /* ordinary-save dialog */
	}
	if (choose_game_file(dialog_message, 0, 1, 1,
		scenario_header.paths[PATH_SAVE_DIR],
						 filename) == 2)
		return -1;
	if (save_mode == 0)
		aztec_strcpy(scenario_header.paths[PATH_SAVE_FILE], filename);
	copy_through_char(game_data_drive, scenario_header.paths[PATH_DATA], ':');
	copy_through_char(selected_game_drive, scenario_header.paths[PATH_SAVE_DIR],
		':');
	aztec_strcpy(game_load_path, scenario_header.paths[PATH_SAVE_DIR]);
	/* Add a directory separator only when a nonempty path needs it. */
	if (aztec_strlen(game_load_path) > 0) {
		index = aztec_strlen(game_load_path) - 1;
		if (game_load_path[index] != '\\') {
			game_load_path[index + 1] = '\\';
			game_load_path[index + 2] = 0;
		}
	}
	aztec_strcat(game_load_path, filename);
	if (scenario_header.install_mode == 1 &&
		!aztec_strcmp(game_data_drive, selected_game_drive)) {
	} else if (aztec_strlen(selected_game_drive) > 0) {
		if (!aztec_strcmp(game_data_drive, selected_game_drive) ||
			scenario_header.install_mode == 5)
			swap_needed = 1;
		prompt_disk_swap(selected_game_drive, -1, swap_needed, 0);
		keep_disk = swap_needed ? 0 : 1;
	} else if (scenario_header.install_mode > 1) {
		swap_needed = 1;
		prompt_disk_swap(game_data_drive, -1, swap_needed, 0);
		keep_disk = swap_needed ? 0 : 1;
	}
	call_show_area(0, 0, 319, 199);
	/* Create or truncate the selected save file. */
	if ((fd = aztec_open(game_load_path, 769)) == -1) {
		show_load_disk_error(error_text);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	if (current_level < 0) {
	} else {
		draw_message_box(saving_text, 3, 97, 36, 18, 13, 1);
		app_memmove((char far *)current_map_block_a,
					runtime_buffer_4k_a[current_level], 128);
		app_memmove((char far *)explored_cell_bitmap,
					runtime_buffer_4k_b[current_level], 128);
		aztec_movmem(party_region.state[current_level],
					 scenario_header.level_flags[current_level], 16);
	}
	aztec_lseek(fd, 0L, 0);
	if ((write_count = aztec_write(fd, &scenario_header, 844)) <= 0) {
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	if ((byte_count = 6 * scenario_header.maze_change_count) > 0) {
		/* variable record block */
		if ((write_count = aztec_write(fd, maze_change_log, byte_count)) <=
			0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
	}
	if ((byte_count = scenario_header.floor_item_count << 3) > 0) {
		/* variable record block */
		if ((write_count =
				 aztec_write(fd, floor_items, byte_count)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
	}
	/* Write all thirty-two paired 128-byte map blocks. */
	for (block = 0; block < 32; block++) {
		app_memmove(runtime_buffer_4k_a[block], (char far *)game_block_a, 128);
		app_memmove(runtime_buffer_4k_b[block], (char far *)game_block_b, 128);
		if ((write_count = aztec_write(fd, game_block_a, 128)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
		if ((write_count = aztec_write(fd, game_block_b, 128)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
	}
	loaded_game_state.world_x = party_world_x;
	loaded_game_state.world_y = party_world_y;
	loaded_game_state.cell_x = party_cell_x;
	loaded_game_state.cell_y = party_cell_y;
	loaded_game_state.map_piece = party_map_piece;
	loaded_game_state.facing = party_facing;
	loaded_game_state.level = current_level;
	loaded_game_state.previous_world_x = previous_party_world_x;
	loaded_game_state.previous_world_y = previous_party_world_y;
	loaded_game_state.previous_cell_x = previous_party_cell_x;
	loaded_game_state.previous_cell_y = previous_party_cell_y;
	loaded_game_state.previous_map_piece = previous_party_map_piece;
	loaded_game_state.previous_facing = previous_party_facing;
	loaded_game_state.previous_level = previous_level;
	loaded_game_state.saved_x = saved_cell_x;
	loaded_game_state.saved_y = saved_cell_y;
	loaded_game_state.saved_piece = saved_map_piece;
	loaded_game_state.saved_level = saved_level;
	loaded_game_state.saved_extra = saved_position_extra;
	/* Save all six timer/offset pairs. */
	for (index = 0; index < 6; index++) {
		loaded_game_state.status[index].timer = party_effects[index].timer;
		loaded_game_state.status[index].strength =
			party_effects[index].strength;
	}
	loaded_game_state.time = game_time;
	loaded_game_state.time_a = game_time_aux_a;
	loaded_game_state.time_b = game_time_aux_b;
	loaded_game_state.member_count = party_char_count;
	if ((write_count = aztec_write(fd, &loaded_game_state, 76)) <= 0) {
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	write_count = aztec_write(fd, path_edges, 128);
	write_count = aztec_write(fd, faction_attitudes, 144);
	write_count = aztec_write(fd, location_records, 104);
	write_count = aztec_write(fd, slot_event_logs, 330);
	write_count = aztec_write(fd, slot_records, 836);
	write_count = aztec_write(fd, quest_maps, 66);
	if (write_count <= 0) {
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	if ((write_count = aztec_write(fd, code_characters, 100)) <= 0) {
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	/* Copy and write each complete 584-byte member record. */
	for (index = 0; index < party_char_count; index++) {
		loaded_party_member = party_records[index];
		if ((write_count = aztec_write(fd, &loaded_party_member, 584)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
	}
	aztec_close(fd);
	if (swap_needed)
		prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
	return 0;
}
