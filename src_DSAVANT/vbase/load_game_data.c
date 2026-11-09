/* Load game state while preserving the current device settings. */
#include "structs/flooritm.h"
#include "structs/location.h"
#include "structs/mazechng.h"
#include "structs/pathedge.h"
#include "structs/questmap.h"
#include "structs/slotevt.h"
#include "structs/slotstat.h"
#include "msg.h"
#include "structs/pcrec.h"
#include "structs/loadrec.h"
#include "structs/filehdr.h"
extern struct load_header scenario_header, preserved_load_header;
extern struct disk_header disk_header;
extern struct load_state loaded_game_state;
extern struct status_pair party_effects[];
extern struct pc_rec party_records[], loaded_party_member;
extern int intro_screen_number, startup_option;
extern char default_game_data_name[], game_load_path[];
extern char game_data_drive[], selected_game_drive[];
extern struct maze_change *maze_change_log;
extern struct floor_item *floor_items;
extern char far *runtime_buffer_4k_a, *runtime_buffer_4k_b;
extern char game_block_a[], game_block_b[];
extern int party_world_x, party_world_y, party_cell_x, party_cell_y;
extern int party_map_piece, party_facing, current_level;
extern int previous_party_world_x, previous_party_world_y,
	previous_party_cell_x, previous_party_cell_y, previous_party_map_piece,
	previous_party_facing,
	previous_level;
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
extern int party_char_count, member_icon[];
extern char *data_file_path();
extern long aztec_lseek();

load_game_data(load_mode)
int load_mode;
{
	int index, block, byte_count, read_count, fd, swap_needed, disk_number,
		keep_disk;
	char error_text[20], loading_text[20];

	swap_needed = 0;
	disk_number = disk_header.number;
	disk_number =
		scenario_header.install_mode == 5
			&& disk_number > 0 ? disk_number + 2 : disk_number;
			/* mode 5 disk numbering */
	call_wait_sound(0);
	load_message_string(MSG_DISK_ERROR, error_text);
	load_message_string(MSG_LOADING, loading_text);
	keep_disk = 1;
	if (load_mode == 0 || load_mode == 2) { /* default data, including import */
		intro_screen_number = 4;
		aztec_strcpy(game_load_path, data_file_path(default_game_data_name, 1));
	} else {
		intro_screen_number = 0;
		if (choose_game_file(MSG_LOAD_SAVEGAME_1400, 0, 1, 1,
			scenario_header.paths[PATH_SAVE_DIR],
				scenario_header.paths[PATH_SAVE_FILE]) == 2)
			return -1;
		copy_through_char(game_data_drive, scenario_header.paths[PATH_DATA],
			':');	/* drive delimiter */
		copy_through_char(selected_game_drive, scenario_header.paths[PATH_SAVE_DIR],
			':');
		aztec_strcpy(game_load_path, scenario_header.paths[PATH_SAVE_DIR]);
		if (aztec_strlen(game_load_path) > 0) {
			index = aztec_strlen(game_load_path) - 1;
			if (game_load_path[index] != '\\') {
				game_load_path[index + 1] = '\\';
				game_load_path[index + 2] = 0;
			}
		}
		aztec_strcat(game_load_path, scenario_header.paths[PATH_SAVE_FILE]);
		if (scenario_header.install_mode == 1
			&& !aztec_strcmp(game_data_drive, selected_game_drive)) {
		} else if (aztec_strlen(selected_game_drive) > 0) {
			if (!aztec_strcmp(game_data_drive, selected_game_drive)
				|| scenario_header.install_mode == 5)
				swap_needed = 1;
			prompt_disk_swap(selected_game_drive, -1, swap_needed, 0);
			keep_disk = swap_needed ? 0 : 1;
		} else if (scenario_header.install_mode > 1) {
			swap_needed = 1;
			prompt_disk_swap(game_data_drive, -1, swap_needed, 0);
			keep_disk = swap_needed ? 0 : 1;
		}
	}
	if (load_mode != 2)
		call_show_area(0, 0, 319, 199);
	if ((fd = aztec_open(game_load_path, 0)) == -1) {
		show_load_disk_error(error_text);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	if (load_mode == 0 || load_mode == 2) { /* default data, including import */
	} else {
		call_show_area(0, 0, 319, 199);
		draw_message_box(loading_text, 3, 97, 36, 18, 13, 1);
	}
	preserved_load_header = scenario_header;
	aztec_lseek(fd, 0L, 0);
	read_count = aztec_read(fd, &scenario_header, 844);
	if (read_count <= 0) { /* reject failed or empty reads */
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	for (index = 0; index < 4; index++)
		/* preserve all four path/option entries */
		aztec_strcpy(scenario_header.paths[index],
			preserved_load_header.paths[index]);
	scenario_header.store_ems = preserved_load_header.store_ems;
	scenario_header.store_ramdisk = preserved_load_header.store_ramdisk;
	aztec_strcpy(scenario_header.store_drive, preserved_load_header.store_drive);
	scenario_header.palette[PALETTE_BASE] =
		preserved_load_header.palette[PALETTE_BASE];
	scenario_header.palette[PALETTE_SCALE] =
		preserved_load_header.palette[PALETTE_SCALE];
	for (index = 0; index < 4; index++)
		/* preserve all four path/option entries */
		scenario_header.volumes[index] = preserved_load_header.volumes[index];
	scenario_header.sound_device = preserved_load_header.sound_device;
	scenario_header.music_device = preserved_load_header.music_device;
	scenario_header.sound_port = preserved_load_header.sound_port;
	scenario_header.sound_aux = preserved_load_header.sound_aux;
	scenario_header.combat_delay = preserved_load_header.combat_delay;
	scenario_header.install_mode = preserved_load_header.install_mode;
	scenario_header.difficulty = preserved_load_header.difficulty;
	scenario_header.use_mouse = preserved_load_header.use_mouse;
	scenario_header.graphics_mode = preserved_load_header.graphics_mode;
	scenario_header.has_second_path = preserved_load_header.has_second_path;
	scenario_header.no_dissolve = preserved_load_header.no_dissolve;
	startup_option = scenario_header.combat_delay;
	if ((byte_count = 6 * scenario_header.maze_change_count) > 0) {
		/* six bytes per record */
		if ((read_count = aztec_read(fd, maze_change_log, byte_count)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
	}
	if ((byte_count = scenario_header.floor_item_count << 3) > 0) {
		/* eight bytes per record */
		if ((read_count = aztec_read(fd, floor_items, byte_count)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
	}
	for (block = 0; block < 32; block++) { /* paired 128-byte blocks */
		if ((read_count = aztec_read(fd, game_block_a, 128)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
		if ((read_count = aztec_read(fd, game_block_b, 128)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
		app_memmove((char far *)game_block_a, runtime_buffer_4k_a + (block << 7),
			128);
		app_memmove((char far *)game_block_b, runtime_buffer_4k_b + (block << 7),
			128);
	}
	if ((read_count = aztec_read(fd, &loaded_game_state, 76)) <= 0) {
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	if (loaded_game_state.level == -1) {
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	party_world_x = loaded_game_state.world_x;
	party_world_y = loaded_game_state.world_y;
	party_cell_x = loaded_game_state.cell_x;
	party_cell_y = loaded_game_state.cell_y;
	party_map_piece = loaded_game_state.map_piece;
	party_facing = loaded_game_state.facing;
	current_level = loaded_game_state.level;
	previous_party_world_x = loaded_game_state.previous_world_x;
	previous_party_world_y = loaded_game_state.previous_world_y;
	previous_party_cell_x = loaded_game_state.previous_cell_x;
	previous_party_cell_y = loaded_game_state.previous_cell_y;
	previous_party_map_piece = loaded_game_state.previous_map_piece;
	previous_party_facing = loaded_game_state.previous_facing;
	previous_level = loaded_game_state.previous_level;
	saved_cell_x = loaded_game_state.saved_x;
	saved_cell_y = loaded_game_state.saved_y;
	saved_map_piece = loaded_game_state.saved_piece;
	saved_level = loaded_game_state.saved_level;
	saved_position_extra = loaded_game_state.saved_extra;
	for (index = 0; index < 6; index++) { /* six status pairs */
		party_effects[index].timer = loaded_game_state.status[index].timer;
		party_effects[index].strength = loaded_game_state.status[index].strength;
	}
	game_time = loaded_game_state.time;
	game_time_aux_a = loaded_game_state.time_a;
	game_time_aux_b = loaded_game_state.time_b;
	read_count = aztec_read(fd, path_edges, 128);
	read_count = aztec_read(fd, faction_attitudes, 144);
	read_count = aztec_read(fd, location_records, 104);
	read_count = aztec_read(fd, slot_event_logs, 330);
	read_count = aztec_read(fd, slot_records, 836);
	read_count = aztec_read(fd, quest_maps, 66);
	if (read_count <= 0) { /* reject failed or empty reads */
		show_load_disk_error(error_text);
		aztec_close(fd);
		if (swap_needed)
			prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
		return -1;
	}
	for (index = 0; index < 100; index++) /* initialize the clue character pool */
		code_characters[index] = random_below(100);
	if (load_mode == 1) { /* saved games include member records */
		if ((read_count = aztec_read(fd, code_characters, 100)) <= 0) {
			show_load_disk_error(error_text);
			aztec_close(fd);
			if (swap_needed)
				prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
			return -1;
		}
		party_char_count = 0;
		for (index = 0; index < loaded_game_state.member_count; index++) {
			if ((read_count = aztec_read(fd, &loaded_party_member, 584)) <= 0) {
				show_load_disk_error(error_text);
				aztec_close(fd);
				if (swap_needed)
					prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
				return -1;
			}
			member_icon[party_char_count] = find_unused_member_icon(party_char_count);
			party_records[party_char_count] = loaded_party_member;
			party_char_count++;
		}
	}
	aztec_close(fd);
	if (swap_needed)
		prompt_disk_swap(game_data_drive, disk_number, keep_disk, 1);
	if (load_mode == 2) { /* replace the cleared party with the imported party */
		for (index = 0; index < 6; index++)
			aztec_setmem(&party_records[index], sizeof(struct pc_rec), 0);
		if (import_bane_party() == -1)
			return -1;
	}
	for (index = 0; index < party_char_count; index++) {
		/* rebuild member icons */
		load_member_icon(party_records[index].portrait, member_icon[index]);
		if (load_mode != 2)
			draw_party_member_panel(index, 0);
	}
	call_show_area(0, 0, 319, 199);
	return 0;
}
