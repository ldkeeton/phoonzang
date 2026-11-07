; Driver and table block sizes, with the segments they load into, then
; everything load_video_driver copies into the video driver as one run: the
; far pointers to vga_palette and far_delay_ms (it supplies cs as their
; segment), the EMS state, the mouse button count and the PLAY.DRV slots.
; Keep these in this order and in one module. The zero entry before the
; table is where free_driver_blocks stops walking it backwards.
codeseg	segment	byte public 'code'
	extrn	vga_palette_:byte
	extrn	far_delay_ms_:far
	public	driver_block_start
driver_block_start	db	4 dup (0)
	public	driver_block_table_
driver_block_table_	db	80h,41h,00h,00h,00h,10h,00h,00h,40h,01h
	public	font_header_seg_
font_header_seg_	db	00h,00h,40h,00h
	public	misc_table_seg_
misc_table_seg_	db	00h,00h,30h,05h
	public	cseg_2f52_
cseg_2f52_	db	00h,00h,0d0h,01h
	public	cseg_2f56_
cseg_2f56_	db	00h,00h
	public	driver_block_table_end_
driver_block_table_end_	db	4 dup (0)
	dw	offset vga_palette_
	dw	offset far_delay_ms_
	public	ems_allocated_paragraphs
ems_allocated_paragraphs	db	00h,00h
	public	ems_handle
ems_handle	db	00h,00h
	public	ems_page_frame_segment
ems_page_frame_segment	db	00h,00h
	public	mouse_button_count
mouse_button_count	db	00h
	public	drv_slot_music_start
drv_slot_music_start	dw	0103h,0000h
	public	drv_slot_configure_music_device
drv_slot_configure_music_device	dw	0107h,0000h
	public	drv_slot_music_set_data
drv_slot_music_set_data	dw	010bh,0000h
	public	drv_slot_stop_music_playback
drv_slot_stop_music_playback	dw	010fh,0000h
	public	drv_slot_music_set_tempo_volume
drv_slot_music_set_tempo_volume	dw	0113h,0000h
	public	drv_slot_play_select_device
drv_slot_play_select_device	dw	0117h,0000h
	public	drv_slot_music_is_playing
drv_slot_music_is_playing	dw	011bh,0000h
	public	drv_slot_wait_for_music
drv_slot_wait_for_music	dw	011fh,0000h
codeseg	ends
	end
