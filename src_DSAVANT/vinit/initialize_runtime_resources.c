/* Load startup resources and prepare runtime buffers. */
#include "structs/flooritm.h"
#include "structs/maze.h"
#include "structs/mazecell.h"
#include "structs/mazechng.h"
#include "structs/filehdr.h"
#include "structs/loadrec.h"
#include "structs/msgdir.h"
extern struct load_header scenario_header;
extern struct disk_header disk_header;
extern struct pc_file_header pc_file_header;
extern struct master_header master_header;
extern char far *load_file_data();
extern char far *app_malloc();
extern long call_get_free_space();
extern char *aztec_malloc(), *data_file_path();
extern int npc_id_decoy, scenario_header_fd, message_delay,
	startup_option, startup_hardware_flags;
extern int *npc_id_address, *npc_id_clue_relay, mouse_active, hotspot_hit;
extern int *npc_id_answer_relay, msg_dbs_fd, message_block_current;
extern int message_cache_next, message_cache_ids[], saved_screen_kind[];
extern char saved_screen_file[][20];
extern long saved_screen_ref[];
extern int data_file_fd, loaded_sound_id, loaded_score_num;
extern int *npc_id_target;
extern char far *pointer_image_zero;
extern char far *mouse_pointer_shape;
extern char far *pointer_image_two;
extern char far *runtime_buffer_1k;
extern char far *runtime_buffer_4k_a;
extern char far *runtime_buffer_4k_b;
extern struct maze_tables *maze_tables;
extern struct maze_cells *maze_data;
extern struct maze_change *maze_change_log;
extern struct floor_item *floor_items;
extern int startup_check_stage, game_state;
extern char code_characters[];
extern struct message_directory message_directory;
extern char startup_scenario_header_name[];
extern char startup_vbfont0_name[];
extern char startup_vbfont1_name[];
extern char startup_vbfont2_name[];
extern char startup_vbfont3_name[];
extern char startup_vcfont1_name[];
extern char startup_vcport0_name[];
extern char startup_vcfont2_name[];
extern char startup_vcfont3_name[];
extern char startup_vmpntr0_name[];
extern char startup_vmpntr1_name[];
extern char startup_vmpntr2_name[];
extern char startup_base_data_name[];
extern char startup_master_header_name[];
extern char startup_disk_header_name[];
extern char startup_message_header_name[];
extern char startup_pcfile_name[];
extern char startup_misc_header_name[];
extern char startup_message_database_name[];
extern char startup_scenario_database_name[];
extern char startup_palette_definition_name[];

/* Load startup resources and allocate the buffers required before play. */
initialize_runtime_resources()
{
	int hardware_mode, palette_fd, index, unused_count;
	int sound_device, sound_port;
	char unused_name[14];
	char palette[768];

	npc_id_decoy = 0;
	pointer_image_zero = 0L;
	mouse_pointer_shape = 0L;
	pointer_image_two = 0L;
	if ((scenario_header_fd = aztec_open(startup_scenario_header_name, 0)) == -1)
		release_and_exit(1);
	aztec_read(scenario_header_fd, &scenario_header, sizeof(scenario_header));
	aztec_close(scenario_header_fd);
	message_delay = 54; /* initial message timing */
	startup_option = scenario_header.combat_delay;
	switch (scenario_header.graphics_mode) {
	case 255: /* rejected hardware setting */ release_and_exit(2); break;
	case 1: hardware_mode = 1; break;
	case 2: hardware_mode = 2; break;
	default: release_and_exit(2); break;
	}
	startup_hardware_flags = init_system_hardware(hardware_mode);
	if ((startup_hardware_flags & 1) || (startup_hardware_flags & 2)) {
		/* either flag suffices */
	} else
		release_and_exit(3);
	npc_id_address = &npc_id_decoy;
		/* npc_id_decoy until the protection chain passes */
	if ((sound_device = scenario_header.sound_device) == 6)
		/* normalize device selector */
		sound_device = 4;
	sound_port = sound_device == 0 ? 0 : scenario_header.sound_port;
	call_play_select_device(sound_port, sound_device);
	npc_id_clue_relay = &npc_id_decoy;
		/* npc_id_decoy until the protection chain passes */
	mouse_active = 0;
	hotspot_hit = 0;
	for (index = 0; index < 100; index++) /* seed the check character pool */
		code_characters[index] = random_below(100);
	set_npc_id_address();
	if (call_get_free_space(0, 0) < 90624L) /* minimum driver free space */
		release_and_exit(4);
	load_startup_font(startup_vbfont0_name, 0);
	load_startup_font(startup_vbfont1_name, 1);
	load_startup_font(startup_vbfont2_name, 2);
	load_startup_font(startup_vbfont3_name, 3);
	load_startup_font(startup_vcfont1_name, 4);
	load_startup_font(startup_vcport0_name, 5);
	load_startup_font(startup_vcfont2_name, 6);
	load_startup_font(startup_vcfont3_name, 7);
	pick_code_char();
	pointer_image_zero = load_file_data(startup_vmpntr0_name);
	mouse_pointer_shape = load_file_data(startup_vmpntr1_name);
	pointer_image_two = load_file_data(startup_vmpntr2_name);
	load_startup_maze(startup_base_data_name, 3);
	npc_id_answer_relay = &npc_id_decoy;
		/* npc_id_decoy until the protection chain passes */
	read_startup_file(startup_master_header_name, &master_header,
		sizeof(master_header));
	read_startup_file(startup_disk_header_name, &disk_header,
		sizeof(disk_header));
	read_startup_file(startup_message_header_name, &message_directory,
		11774);
	read_startup_file(startup_pcfile_name, &pc_file_header,
		sizeof(pc_file_header));
	load_startup_misc(startup_misc_header_name);
	if ((msg_dbs_fd = aztec_open(data_file_path(startup_message_database_name, 0),
		0)) == -1)
		release_and_exit(9);
	message_block_current = -1;
	for (message_cache_next = 0; message_cache_next < 4; message_cache_next++)
		/* invalidate cache slots */
		message_cache_ids[message_cache_next] = -1;
	message_cache_next = 0;
	for (index = 0; index < 5; index++) { /* no saved screens yet */
		saved_screen_kind[index] = -1;
		saved_screen_file[index][0] = 0;
		saved_screen_ref[index] = 0L;
	}
	if ((data_file_fd = aztec_open(data_file_path(
		startup_scenario_database_name, 0), 0)) == -1)
		release_and_exit(10);
	prepare_code_answer();
	load_sound_file(0, 0, 1);
	load_sound_file(1, 1, 1);
	load_sound_file(2, 2, 1);
	load_sound_file(3, 3, 1);
	load_sound_file(4, 4, 1);
	load_sound_file(8, 8, 1);
	load_sound_file(9, 9, 1);
	loaded_sound_id = -1;
	loaded_score_num = -1;
	npc_id_target = &npc_id_decoy;
		/* npc_id_decoy until the protection chain passes */
	runtime_buffer_1k = 0L;
	runtime_buffer_4k_a = 0L;
	runtime_buffer_4k_b = 0L;
	maze_data = 0;
	maze_tables = 0;
	maze_change_log = 0;
	floor_items = 0;
	runtime_buffer_1k = app_malloc(1024L);
	if (runtime_buffer_1k == 0L)
		release_and_exit(13);
	runtime_buffer_4k_a = app_malloc(4096L);
	if (runtime_buffer_4k_a == 0L)
		release_and_exit(13);
	runtime_buffer_4k_b = app_malloc(4096L);
	if (runtime_buffer_4k_b == 0L)
		release_and_exit(13);
	maze_data = (struct maze_cells *)aztec_malloc(master_header.sizes[2]);
	if (maze_data == 0)
		release_and_exit(13);
	maze_tables = (struct maze_tables *)aztec_malloc(master_header.sizes[3]);
	if (maze_tables == 0)
		release_and_exit(13);
	maze_change_log = (struct maze_change *)aztec_malloc(3072);
	if (maze_change_log == 0)
		release_and_exit(13);
	floor_items = (struct floor_item *)aztec_malloc(1024);
	if (floor_items == 0)
		release_and_exit(13);
	startup_check_stage = 0;
	if ((palette_fd = aztec_open(data_file_path(
		startup_palette_definition_name, 0), 0)) == -1)
		release_and_exit(14);
	aztec_read(palette_fd, palette, 768);
	aztec_close(palette_fd);
	build_palette_map(scenario_header.palette[PALETTE_BASE],
		scenario_header.palette[PALETTE_SCALE], palette);
	game_state = 1;
}
