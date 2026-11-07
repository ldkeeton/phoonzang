; Offset of the buffer holding the saved cursor area.
codeseg	segment	byte public 'code'
	extrn	cursor_save_area:byte
	public	cursor_save_buffer
cursor_save_buffer	dw	offset cursor_save_area
codeseg	ends
	end
