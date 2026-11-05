/* Restore the cached treasure-screen state and dissolve back to the scene. */

extern char far *screen_cache[];
extern long saved_area_a, saved_area_b;

extern int call_restore_screen(), call_restore_area();
extern int draw_party_glyph_row(), free_picture_slot();
extern int wait_and_free_sound(), redraw_treasure_caption();
extern int dissolve_or_show_area();

/* Finish the treasure view by restoring the underlying scene. */
restore_treasure_scene()
{
	call_restore_screen(screen_cache[1], 1, 0);
	call_restore_screen(screen_cache[0], 1, 0);
	draw_party_glyph_row();
	free_picture_slot(15);
	free_picture_slot(7);
	wait_and_free_sound(5);
	redraw_treasure_caption(0);
	free_picture_slot(1);
	free_picture_slot(2);
	call_restore_area(saved_area_b, 1);
	call_restore_area(saved_area_a, 1);
	dissolve_or_show_area(55, 146, 265, 198);
}
