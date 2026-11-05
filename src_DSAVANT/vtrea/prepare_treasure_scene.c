/* Prepare the treasure screen, its cached regions, and the optional
   caption. */
extern int saved_screen_pending, saved_screen_slot;
extern int screen_cache_0_seg;
extern long screen_cache, screen_cache_1_off;
extern long saved_area_a, saved_area_b;
extern int treasure_message_row, party_redraw_interval, show_area_bottom;
extern int treasure_caption_on;
extern char treasure_caption[];

extern int free_current_maze();
extern int load_sound_file(), load_monster_picture();
extern long call_cache_area(), call_save_area();
extern int restore_saved_screen(), draw_party_glyph_row();
extern int flush_keyboard(), load_message_string();

/* Set up the treasure scene and load its caption when requested. */
prepare_treasure_scene(message_id)
int message_id;
{
	free_current_maze();
	load_sound_file(5, 5, 1);
	load_monster_picture(9, 7);
	load_monster_picture(13, 15);
	screen_cache = call_cache_area(72, 33, 247, 143, 2, 0);
	if (saved_screen_pending) {
		restore_saved_screen(saved_screen_slot, 1);
		saved_screen_pending = 0;
	}
	screen_cache_1_off = call_cache_area(72, 33, 247, 143, 2, 0);
	draw_party_glyph_row();
	saved_area_a = call_save_area(25, 165, 295, 198);
	saved_area_b = call_save_area(65, 146, 255, 164);
	load_monster_picture(2, 1);
	load_monster_picture(3, 2);
	treasure_message_row = 1;
	party_redraw_interval = 5;
	show_area_bottom = 143;
	flush_keyboard();
	treasure_caption_on = 0;
	if (message_id > 0)
		load_message_string(message_id, treasure_caption);
}
