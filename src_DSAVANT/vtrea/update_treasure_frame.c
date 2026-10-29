/* per-frame update: restore the cached screen, choose the glyph painter, run
   the pending panel call and animation, refresh the strip and play a
   request */

extern int glyph_painter;
extern int animation_index;
extern int sound_request;
extern int pending_panel_call;
extern int show_area_bottom;
extern int pending_panel_arg1;
extern int pending_panel_arg0;
extern int screen_cache_index;
extern long screen_cache[];		/* screen-cache far pointers */

update_treasure_frame()
{
	/* screen_cache_index selects one of the cached screens in the screen_cache
	   array */
	call_restore_screen(screen_cache[screen_cache_index], 0, 0);
	if (glyph_painter == 1)	/* which glyph painter is active */
		draw_animated_glyph_pair();
	else
		draw_party_glyph_row();
	draw_party_status_glyphs();
	if (pending_panel_call >= 0) {	/* pending draw_treasure_panel request */
		draw_treasure_panel(pending_panel_arg0, pending_panel_arg1);
		pending_panel_call = -1;
	}
	if (animation_index >= 0)	/* animation index; -1 disables it */
		animation_index = draw_animation_frame(animation_index);
	/* refresh the strip x 0x48..0xf7, y 0x20..show_area_bottom */
	call_show_area(72, 32, 247, show_area_bottom);
	if (sound_request) {		/* one-shot sound request */
		play_sound_effect(5);
		sound_request = 0;
	}
}
