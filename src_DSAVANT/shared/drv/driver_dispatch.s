; Driver dispatch table: DS far-calls each entry through its drv_slots table;
; an entry near-calls its handler, then returns far.
;
; The driver header data follows the table in this one module: DS copies its
; driver block to a fixed offset in the loaded driver (drv_block_table), so the
; header must stay right after the table that opens the driver.
	include	lmacros.h
	assume	cs:codeseg
	public	driver_slot_0_
driver_slot_0_:
	drvslot	mouse_init
	drvslot	mouse_off
	drvslot	mouse_hit_test
	drvslot	request_mouse_redraw
	drvslot	update_mouse_pointer
	drvslot	load_picture
	drvslot	draw_text
	drvslot	load_screen
	drvslot	load_maze
	drvslot	draw_maze_piece
	drvslot	clear_mouse_click
	drvslot	draw_glyph
	drvslot	set_text_color
	drvslot	set_text_pos
	drvslot	get_text_pos
	drvslot	fill_screen_buffer
	drvslot	show_area
	drvslot	put_pixel
	drvslot	fill_area
	drvslot	invert_area
	drvslot	save_area
	drvslot	restore_area
	drvslot	free_picture
	drvslot	get_mouse
	drvslot	set_mouse_pointer
	drvslot	set_text_opaque
	drvslot	save_screen
	drvslot	dissolve_area
	drvslot	set_rgb
	drvslot	get_rgb
	drvslot	fade_in
	drvslot	fade_out
	drvslot	reset_rgb
	drvslot	mouse_glide_to
	drvslot	mouse_glide_back
	drvslot	free_maze
	drvslot	free_screen
	drvslot	get_palette
	drvslot	set_palette
	drvslot	cache_area
	drvslot	get_free_space
	drvslot	restore_screen
	drvslot	cache_maze
	drvslot	cache_screen_to_storage
	drvslot	load_sound
	drvslot	free_sound
	drvslot	play_sound
	drvslot	wait_sound
	drvslot	stop_sound
	drvslot	load_score
	drvslot	play_score
	drvslot	free_score
	drvslot	is_music_playing
	drvslot	stop_music
	drvslot	set_music_tempo_volume

; Driver block table, palette pointer, delay hook.  The block table is
; 4-byte {paragraphs, segment} entries ending in a zero size; DS allocates
; each block and copies its driver_block_table_ over this one at load, so
; each *_seg label is the segment word of one entry.
	public	drv_block_table
drv_block_table	dw	4180h
	public	maze_mem_seg
maze_mem_seg	dw	0000h,1000h
	public	screen_buf_seg
screen_buf_seg	dw	0000h,0140h
	public	scratch_buf_seg
scratch_buf_seg	dw	0000h,0040h,0000h,0530h,0000h,01d0h,0000h
	public	palette_ptr
palette_ptr	dd	00000000h
	public	delay_hook
delay_hook	dd	00000000h

; EMS page frame state: paragraph limit, mapping handle, frame segment.
	public	ems_para_limit
ems_para_limit	dw	0000h
	public	ems_mapping_handle
ems_mapping_handle	dw	0000h
	public	ems_frame_seg
ems_frame_seg	dw	0000h

; Mouse initialisation enable flag.
	public	mouse_init_enabled
mouse_init_enabled	db	00h

; Far entry points for the music and sound calls.
	public	music_start_far
music_start_far	dd	00000103h,00000107h
	public	music_load_far
music_load_far	dd	0000010bh
	public	music_stop_far
music_stop_far	dd	0000010fh
	public	music_config_far
music_config_far	dd	00000113h
	public	sound_play_far
sound_play_far	dd	00000117h
	public	music_playing_far
music_playing_far	dd	0000011bh
	public	sound_wait_far
sound_wait_far	dd	0000011fh

; Mouse state flags: glide in progress, redraw pending, driver present.
	public	mouse_glide_active
mouse_glide_active	db	00h
	public	mouse_redraw_pending
mouse_redraw_pending	db	00h
	public	mouse_present
mouse_present	db	00h

; Picture, screen and maze slot tables.
	public	picture_slots
picture_slots	dw	20 dup (0)
	public	screen_maze_slots
screen_maze_slots	dw	5 dup (0)
	public	maze_slots
maze_slots	dw	16 dup (0)
	public	maze_piece_table
maze_piece_table	dw	0004h
	public	maze_piece_descriptors
maze_piece_descriptors	dw	10 dup (0)

; Secondary text colour.
	public	secondary_text_color
secondary_text_color	dw	0000h

; Primary text colour.
	public	primary_text_color
primary_text_color	dw	0001h

; Horizontal text cursor position.
	public	text_pos_x
text_pos_x	dw	0000h

; Vertical text cursor position.
	public	text_pos_y
text_pos_y	dw	0000h

; Text opaque flag.
	public	text_opaque
text_opaque	dw	0000h

; EMS allocation tables: slot maps, block list and usage counters.
	public	ems_slots
ems_slots	dw	20 dup (0)
	public	cache_maze_slot_table
cache_maze_slot_table	db	20 dup (0)
	public	screen_ems_slots
screen_ems_slots	dw	10 dup (0)
	public	ems_blocks
ems_blocks	dw	82 dup (0)
	public	ems_block_count
ems_block_count	dw	0000h
	public	ems_paras_used
ems_paras_used	dw	0000h
	finish
	end
