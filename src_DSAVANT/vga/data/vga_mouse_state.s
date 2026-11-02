; VGA mouse read position, cursor geometry and cursor work buffers.
; The two background offsets are literals: make rebuild does not accept relocations in data sources.
codeseg	segment	byte public 'code'
	public	mouse_read_x
mouse_read_x	dw	0000h
	public	mouse_read_y
mouse_read_y	dw	0000h
	public	mouse_saved_background_offset
mouse_saved_background_offset	dw	15c4h
	public	mouse_redraw_background_offset
mouse_redraw_background_offset	dw	19c4h
	public	mouse_drawn_width
mouse_drawn_width	dw	0000h
	public	mouse_drawn_height
mouse_drawn_height	dw	0000h
	public	mouse_screen_offset
mouse_screen_offset	dw	0000h
	public	mouse_cursor_width
mouse_cursor_width	dw	0000h
	public	mouse_cursor_height
mouse_cursor_height	dw	0000h
	public	mouse_cursor_screen_offset
mouse_cursor_screen_offset	dw	0000h
	public	cp_14c4
cp_14c4	db	1024 dup (0)
	public	cp_18c4
cp_18c4	db	1024 dup (0)
	public	mouse_restore_mask
mouse_restore_mask	db	136 dup (0)
	public	mouse_mask_row
mouse_mask_row	db	16 dup (0)
	public	mouse_image_stride
mouse_image_stride	dw	000ah
	public	mouse_image_height
mouse_image_height	dw	000ah
	public	mouse_default_cursor_dimensions
mouse_default_cursor_dimensions	dw	000ah,000ah
	public	mouse_image_offset
mouse_image_offset	dw	0000h
	public	mouse_image_segment
mouse_image_segment	dw	0000h
codeseg	ends
	end
