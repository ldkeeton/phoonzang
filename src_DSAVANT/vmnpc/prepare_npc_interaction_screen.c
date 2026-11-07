/* Prepare the resources and initial state for the NPC interaction screen. */

#include "structs/ovlitem.h"

extern int game_state, loaded_score_num;
extern int saved_screen_pending, saved_screen_slot;
extern long screen_cache, screen_cache_1_off;
extern struct overlay_item *overlay_list[13];
extern int party_screen_animation_state;
extern int cell_slot_ref[3][3];
extern int npc_cell_effect_frame[3][3];
extern unsigned char picture_slot_number[], picture_slot_used[];
extern long far *tick_counter_ptr;
extern long party_redraw_last_tick;
extern int party_redraw_interval;
extern long saved_area_a, saved_area_b;
extern int npc_gold_paid_total, npc_gold_paid_total_high;
extern int action_bitmap[];
extern int npc_record_index;
extern int npc_record_buffer[];
extern int npc_event_message_seen[];
extern int npc_action_bitmap_copy;
extern int npc_message_ready, npc_action_state;
extern int npc_dialog_option_state, npc_dialog_secondary_state;
extern int npc_selected_dialog_option;
extern int call_is_music_playing(), free_loaded_score();
extern int free_current_maze();
extern long call_cache_area();
extern int restore_saved_screen();
extern char *malloc();
extern int release_and_exit();
extern int setmem();
extern long call_save_area();
extern int load_monster_picture();
extern int redraw_glyph_strip();
extern int data_record_io();
extern int movmem();

prepare_npc_interaction_screen()
{
	int i;
	int music_wait_result;
	int score_release_result;
	int maze_release_result;
	int first_cache_result;
	int saved_screen_result;
	int second_cache_result;
	int overlay_allocation_result;
	int cell_reset_result;
	int effect_reset_result;
	int picture_reset_result;
	int first_saved_area_result;
	int second_saved_area_result;
	int first_picture_result;
	int second_picture_result;

	game_state = 5;
	if (loaded_score_num != -1) {
		while (call_is_music_playing())
			;
		free_loaded_score(0);
	}
	free_current_maze();
	screen_cache = call_cache_area(72, 33, 247, 143, 2, 0);
	if (saved_screen_pending) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	screen_cache_1_off = call_cache_area(72, 33, 247, 143, 2, 0);
	for (i = 0; i < 12; ++i) {
		overlay_list[i + 1] = (struct overlay_item *)malloc(24);
		if (overlay_list[i + 1] == 0)
			release_and_exit(29);
		overlay_list[i + 1]->code = 255;
	}
	overlay_list[0] = 0;
	party_screen_animation_state = -2;
	setmem(cell_slot_ref, 18, 0);
	setmem(npc_cell_effect_frame, 18, 0);
	for (i = 15; i < 18; ++i) {
		picture_slot_number[i] = 255;
		picture_slot_used[i] = 0;
	}
	party_redraw_last_tick = *tick_counter_ptr;
	party_redraw_interval = 5;
	saved_area_a = call_save_area(8, 165, 314, 198);
	saved_area_b = call_save_area(65, 146, 255, 164);
	load_monster_picture(2, 1);
	load_monster_picture(3, 2);
	load_monster_picture(82, 12);
	redraw_glyph_strip(0);
	npc_message_ready = 1;
	npc_action_state = 0;
	npc_dialog_option_state = 0;
	npc_dialog_secondary_state = 0;
	npc_selected_dialog_option = -1;
	/* The record loader uses these fields as its index and scratch record. */
	data_record_io(5, npc_record_buffer, npc_record_index, 0);
	movmem(action_bitmap + 6 + npc_record_index,
		&npc_action_bitmap_copy, 2);
	npc_gold_paid_total_high = 0;
	npc_gold_paid_total = 0;
	setmem(npc_event_message_seen, 110, 0);
}
