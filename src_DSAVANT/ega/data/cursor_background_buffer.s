; Offset of the buffer holding the background under the cursor.
codeseg	segment	byte public 'code'
	extrn	cursor_background_area:byte
	public	cursor_background_buffer
cursor_background_buffer	dw	offset cursor_background_area
codeseg	ends
	end
