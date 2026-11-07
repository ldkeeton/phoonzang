; EGA mouse read position, cursor geometry and cursor work buffers.
codeseg	segment	byte public 'code'
	public	mouse_read_x
mouse_read_x	dw	0000h
	public	mouse_read_y
mouse_read_y	dw	0000h
	public	cursor_clipped_width
cursor_clipped_width	dw	0000h
	public	cursor_mask_width_bytes
cursor_mask_width_bytes	dw	0000h
	public	cursor_save_row_bytes
cursor_save_row_bytes	dw	0000h
	public	cursor_height_rows
cursor_height_rows	dw	0000h
	public	cursor_video_offset
cursor_video_offset	dw	0000h
	public	cursor_x_shift
cursor_x_shift	dw	0000h
	public	cursor_clipped_right
cursor_clipped_right	dw	0000h
	public	cursor_save_area
cursor_save_area	db	1152 dup (0)
	public	cursor_background_area
cursor_background_area	db	1152 dup (0)
	public	old_cursor_restore_mask
old_cursor_restore_mask	db	128 dup (0)
	public	cursor_mask_scratch
cursor_mask_scratch	db	16 dup (0)
codeseg	ends
	end
