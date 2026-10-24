/* state 0x0a: tears down the map screen, loads the sound and monster picture
   slots, saves the two screen areas and sets up the melee party */

extern int battle_setup_done, row_limit, loaded_score_num;
extern int requested_row_limit, e1_event_flag;
extern int show_melee_result;		/* nonzero unless the melee goes to VMNPC */
extern int saved_screen_pending, saved_screen_slot;
extern int party_return_state, party_member_count, npc_melee;
extern int game_state;
extern long screen_cache[];		/* cached full-screen far pointers */
extern long saved_area_a, saved_area_b;
extern long party_redraw_last_tick;
extern long far *tick_counter_ptr;
extern char *party_char[];		/* 0x1a4-byte member records */
extern char *party_char_ext[];		/* 0xe8-byte extended member records */
extern unsigned char *party_member_ext_1;
extern unsigned char picture_slot_number[], picture_slot_used[];
struct overlay_item {
	int x, y;
	int clip_left, clip_right;
	char text[12];
	unsigned char code;		/* 0x14: sort key, 0xff marks a free slot */
	unsigned char color, variant, flag;
};
extern struct {
	int count;
	struct overlay_item *items[12];
} overlay_list;

extern clamp_between(), gfx_is_music_playing(), app_gfx_free_score(),
	free_current_maze(), free_picture_slot(), load_sound_file(),
	load_monster_picture(), restore_saved_screen(),
	release_and_exit(), restore_areas_redraw_glyph(), setup_melee_party(),
	wait_for_hotspot_timeout(), aztec_strcpy(), titlecase_string(),
	aztec_strlen(), load_message_string(), show_centered_message(),
	advance_melee_item_slots();
extern char *aztec_malloc();
extern long gfx_cache_area(), gfx_save_area();

start_melee_battle()
{
	int i, len;
	char buf[82];
	char spare[676];		/* untouched; keeps the original 0x2fa frame */

	battle_setup_done = 1;
	row_limit = clamp_between(requested_row_limit, 0, 2);
	e1_event_flag = 0;
	if (loaded_score_num != -1) {	/* -1: no score loaded */
		while (gfx_is_music_playing())
			;
		app_gfx_free_score(0);
	}
	free_current_maze();
	free_picture_slot(0);
	free_picture_slot(4);
	free_picture_slot(6);
	/* 1: load flag; sound number repeated as the slot */
	load_sound_file(5, 5, 1);
	load_sound_file(6, 6, 1);
	load_sound_file(7, 7, 1);
	load_sound_file(10, 10, 1);
	load_sound_file(11, 11, 1);
	load_sound_file(12, 12, 1);
	load_monster_picture(9, 7);	/* records 9/82 into picture slots 7/12 */
	load_monster_picture(82, 12);
	/* cache the play area; 2: memory store, 0: no file */
	screen_cache[0] = gfx_cache_area(72, 33, 247, 143, 2, 0);
	if (saved_screen_pending) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	screen_cache[1] = gfx_cache_area(72, 33, 247, 143, 2, 0);
	for (i = 0; i < 7; i++) {	/* 7 party slots */
		party_char_ext[i] = aztec_malloc(232);		/* extended record */
		party_char[i] = aztec_malloc(420);		/* member record */
		if (party_char_ext[i] == 0 || party_char[i] == 0)
			release_and_exit(29);
	}
	for (i = 0; i < 12; i++) {	/* 12 overlay slots, skip the count */
		overlay_list.items[i] = aztec_malloc(24);
		if (overlay_list.items[i] == 0)
			release_and_exit(29);
		overlay_list.items[i]->code = 255;	/* 0xff: slot free */
	}
	for (i = 15; i < 18; i++) {	/* the 3 monster picture slots */
		picture_slot_number[i] = 255;	/* 0xff: slot empty */
		picture_slot_used[i] = 0;
	}
	saved_area_a = gfx_save_area(8, 165, 314, 198);		/* box corners */
	saved_area_b = gfx_save_area(65, 146, 255, 164);
	load_monster_picture(2, 1);	/* monster 2 into picture slot 1 */
	load_monster_picture(3, 2);	/* monster 3 into picture slot 2 */
	restore_areas_redraw_glyph(0);
	setup_melee_party();
	show_melee_result = party_return_state == 18 ? 0 : 1;
	npc_melee = party_return_state == 18 ? 1 : 0;
	if (party_return_state == 18		/* 0x12: to the NPC state */
	    && party_member_count > 1) {
		restore_areas_redraw_glyph(1);
		wait_for_hotspot_timeout(1);
		aztec_strcpy(buf, party_member_ext_1);
		titlecase_string(buf);
		len = aztec_strlen(buf);
		/* 0xdb8: message id appended to the member's name */
		load_message_string(3512, buf + len);
		show_centered_message(buf, 17);	/* 17: message sound */
	}
	advance_melee_item_slots();
	party_redraw_last_tick = *tick_counter_ptr;
	game_state = 11;		/* next state: redraw the party */
}
