; Offset of the buffer holding the background under the cursor (cp_1f7d in ega_mouse_state).
; A literal: make rebuild cannot check a data source with relocations yet.
codeseg	segment	byte public 'code'
	public	cursor_background_buffer
cursor_background_buffer	dw	207dh
codeseg	ends
	end
