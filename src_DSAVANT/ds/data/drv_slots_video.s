; Far entry points of the loaded video driver.
codeseg	segment	byte public 'code'
	public	drv_slot_mouse_init
drv_slot_mouse_init	dw	0103h,0000h
	public	drv_slot_mouse_off
drv_slot_mouse_off	dw	0107h,0000h
	public	drv_slot_mouse_hit_test
drv_slot_mouse_hit_test	dw	010bh,0000h
	public	drv_slot_entry_03
drv_slot_entry_03	dw	010fh,0000h
	public	drv_slot_entry_04
drv_slot_entry_04	dw	0113h,0000h
	public	drv_slot_load_picture
drv_slot_load_picture	dw	0117h,0000h
	public	drv_slot_draw_text
drv_slot_draw_text	dw	011bh,0000h
	public	drv_slot_load_screen
drv_slot_load_screen	dw	011fh,0000h
	public	drv_slot_load_maze
drv_slot_load_maze	dw	0123h,0000h
	public	drv_slot_draw_maze_piece
drv_slot_draw_maze_piece	dw	0127h,0000h
	public	drv_slot_clear_mouse_click
drv_slot_clear_mouse_click	dw	012bh,0000h
	public	drv_slot_draw_glyph
drv_slot_draw_glyph	dw	012fh,0000h
	public	drv_slot_set_text_color
drv_slot_set_text_color	dw	0133h,0000h
	public	drv_slot_set_text_pos
drv_slot_set_text_pos	dw	0137h,0000h
	public	drv_slot_get_text_pos
drv_slot_get_text_pos	dw	013bh,0000h
	public	drv_slot_fill_screen_buffer
drv_slot_fill_screen_buffer	dw	013fh,0000h
	public	drv_slot_show_area
drv_slot_show_area	dw	0143h,0000h
	public	drv_slot_put_pixel
drv_slot_put_pixel	dw	0147h,0000h
	public	drv_slot_fill_area
drv_slot_fill_area	dw	014bh,0000h
	public	drv_slot_invert_area
drv_slot_invert_area	dw	014fh,0000h
	public	drv_slot_save_area
drv_slot_save_area	dw	0153h,0000h
	public	drv_slot_restore_area
drv_slot_restore_area	dw	0157h,0000h
	public	drv_slot_free_picture
drv_slot_free_picture	dw	015bh,0000h
	public	drv_slot_get_mouse
drv_slot_get_mouse	dw	015fh,0000h
	public	drv_slot_set_mouse_pointer
drv_slot_set_mouse_pointer	dw	0163h,0000h
	public	drv_slot_set_text_opaque
drv_slot_set_text_opaque	dw	0167h,0000h
	public	drv_slot_save_screen
drv_slot_save_screen	dw	016bh,0000h
	public	drv_slot_dissolve_area
drv_slot_dissolve_area	dw	016fh,0000h
	public	drv_slot_set_rgb
drv_slot_set_rgb	dw	0173h,0000h
	public	drv_slot_get_rgb
drv_slot_get_rgb	dw	0177h,0000h
	public	drv_slot_fade_in
drv_slot_fade_in	dw	017bh,0000h
	public	drv_slot_fade_out
drv_slot_fade_out	dw	017fh,0000h
	public	drv_slot_reset_rgb
drv_slot_reset_rgb	dw	0183h,0000h
	public	drv_slot_mouse_glide_to
drv_slot_mouse_glide_to	dw	0187h,0000h
	public	drv_slot_mouse_glide_back
drv_slot_mouse_glide_back	dw	018bh,0000h
	public	drv_slot_free_maze
drv_slot_free_maze	dw	018fh,0000h
	public	drv_slot_free_screen
drv_slot_free_screen	dw	0193h,0000h
	public	drv_slot_get_palette
drv_slot_get_palette	dw	0197h,0000h
	public	drv_slot_set_palette
drv_slot_set_palette	dw	019bh,0000h
	public	drv_slot_cache_area
drv_slot_cache_area	dw	019fh,0000h
	public	drv_slot_get_free_space
drv_slot_get_free_space	dw	01a3h,0000h
	public	drv_slot_restore_screen
drv_slot_restore_screen	dw	01a7h,0000h
	public	drv_slot_cache_maze
drv_slot_cache_maze	dw	01abh,0000h
	public	drv_slot_cache_screen_to_storage
drv_slot_cache_screen_to_storage	dw	01afh,0000h
	public	drv_slot_load_sound
drv_slot_load_sound	dw	01b3h,0000h
	public	drv_slot_free_sound
drv_slot_free_sound	dw	01b7h,0000h
	public	drv_slot_play_sound
drv_slot_play_sound	dw	01bbh,0000h
	public	drv_slot_wait_sound
drv_slot_wait_sound	dw	01bfh,0000h
	public	drv_slot_stop_sound
drv_slot_stop_sound	dw	01c3h,0000h
	public	drv_slot_load_score
drv_slot_load_score	dw	01c7h,0000h
	public	drv_slot_play_score
drv_slot_play_score	dw	01cbh,0000h
	public	drv_slot_free_score
drv_slot_free_score	dw	01cfh,0000h
	public	drv_slot_is_music_playing
drv_slot_is_music_playing	dw	01d3h,0000h
	public	drv_slot_stop_music
drv_slot_stop_music	dw	01d7h,0000h
	public	drv_slot_set_music_tempo_volume
drv_slot_set_music_tempo_volume	dw	01dbh,0000h
codeseg	ends
	end
